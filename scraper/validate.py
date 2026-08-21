"""Puerta de calidad entre el scraping y la publicacion.

Un scraper que falla en silencio es peor que uno que revienta: el segundo te
avisa, el primero publica basura a todo el mundo. Todo lo que hay aqui esta
pensado para convertir un fallo silencioso en un error ruidoso.
"""

from __future__ import annotations

from dataclasses import dataclass, field

from scraper.model import (
    CONSUMABLE_CATEGORIES, SLOTS, SOURCE_ORDER, STATS, SpecGuides,
)
from scraper.talent_tree import Spec

MIN_COVERAGE = 0.90        # menos specs que esto y el build no sale
MIN_IMPORT_LENGTH = 20     # un import string real ronda los 100 caracteres
MAX_ITEM_ID = 2_000_000
CHURN_THRESHOLD = 0.60     # cambio de items por spec que exige revision humana


@dataclass
class Report:
    errors: list[str] = field(default_factory=list)
    warnings: list[str] = field(default_factory=list)

    @property
    def ok(self) -> bool:
        return not self.errors

    def summary(self) -> str:
        lines = [f"{len(self.errors)} errores, {len(self.warnings)} avisos"]
        lines += [f"  ERROR  {e}" for e in self.errors]
        lines += [f"  aviso  {w}" for w in self.warnings]
        return "\n".join(lines)


def _check_view(report: Report, where: str, view) -> None:
    for build in view.talent_builds:
        if len(build.import_string) < MIN_IMPORT_LENGTH:
            report.errors.append(
                f"{where}: import string sospechosamente corto ({build.import_string!r})"
            )
        if build.usage_pct is not None and not 0 <= build.usage_pct <= 100:
            report.errors.append(f"{where}: usage_pct fuera de rango ({build.usage_pct})")

    for entry in view.stat_priority:
        if entry.stat not in STATS:
            report.errors.append(f"{where}: stat desconocido {entry.stat!r}")

    for slot, entries in view.gear.items():
        if slot not in SLOTS:
            report.errors.append(f"{where}: ranura desconocida {slot!r}")
        for entry in entries:
            _check_item(report, where, entry.item_id)
            for extra in (entry.gem_id, entry.enchant_id):
                if extra is not None:
                    _check_item(report, where, extra)

    for entry in list(view.gems) + list(view.enchants) + list(view.consumables):
        _check_item(report, where, entry.item_id)

    for entry in view.consumables:
        if entry.category not in CONSUMABLE_CATEGORIES:
            report.errors.append(f"{where}: consumible desconocido {entry.category!r}")


def _check_item(report: Report, where: str, item_id) -> None:
    if not isinstance(item_id, int) or not 0 < item_id < MAX_ITEM_ID:
        report.errors.append(f"{where}: itemID implausible {item_id!r}")


def _check_guide(report: Report, spec: SpecGuides, guide) -> None:
    where = f"{spec.slug}/{guide.hero_name}/{guide.content}"

    # Una guia sin ninguna vista no es un hueco: es una guia que no existe.
    if not guide.views:
        report.errors.append(f"{where}: sin ninguna fuente")
        return

    for key, view in guide.views.items():
        if key not in SOURCE_ORDER:
            report.errors.append(f"{where}: fuente desconocida {key!r}")
        if not view.filled_sections():
            report.errors.append(f"{where}: la vista {key} no trae ninguna seccion")
        _check_view(report, f"{where}[{key}]", view)

    # El equipo puede faltar en una fuente concreta, pero que no lo de ninguna
    # es senal de que algo se rompio aguas arriba.
    if not any(view.gear for view in guide.views.values()):
        report.warnings.append(f"{where}: ninguna fuente trae equipo")
    if not any(view.talent_builds for view in guide.views.values()):
        report.warnings.append(f"{where}: ninguna fuente trae builds de talentos")


def validate(results: list[SpecGuides], expected: list[Spec]) -> Report:
    report = Report()

    if not results:
        report.errors.append("la ejecucion no produjo ninguna spec")
        return report

    found = {spec.slug for spec in results if spec.guides}
    missing = sorted({spec.slug for spec in expected} - found)
    coverage = len(found) / len(expected) if expected else 0.0

    if coverage < MIN_COVERAGE:
        report.errors.append(
            f"cobertura {coverage:.0%} por debajo del minimo {MIN_COVERAGE:.0%}; "
            f"faltan {len(missing)}: {', '.join(missing[:8])}"
        )
    elif missing:
        report.warnings.append(f"specs sin datos: {', '.join(missing)}")

    for spec in results:
        if not spec.guides:
            continue
        for guide in spec.guides:
            _check_guide(report, spec, guide)

    return report


def _item_ids(spec_dict: dict) -> set[int]:
    ids: set[int] = set()
    for guide in spec_dict.get("guides", []):
        for view in guide.get("views", {}).values():
            for entries in view.get("gear", {}).values():
                ids.update(e["item_id"] for e in entries)
            for key in ("gems", "enchants", "consumables"):
                ids.update(e["item_id"] for e in view.get(key, []))
    return ids


def churn(previous: dict[str, dict], current: dict[str, dict]) -> list[str]:
    """Specs cuyo equipo cambio tanto que probablemente el parser se rompio.

    Un parche nuevo mueve los items de verdad, asi que esto no es un error: es
    una senal de "que lo mire un humano antes de publicar".
    """
    flagged: list[str] = []

    for slug, new in current.items():
        old = previous.get(slug)
        if not old:
            continue

        old_ids, new_ids = _item_ids(old), _item_ids(new)
        if not old_ids:
            continue

        changed = len(old_ids ^ new_ids) / len(old_ids | new_ids)
        if changed > CHURN_THRESHOLD:
            flagged.append(f"{slug}: {changed:.0%} de items distintos")

    return flagged

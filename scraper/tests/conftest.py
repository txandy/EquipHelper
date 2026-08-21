from pathlib import Path

import pytest

from scraper.talent_tree import parse as parse_talents

FIXTURES = Path(__file__).parent / "fixtures"


@pytest.fixture(scope="session")
def specs():
    return parse_talents((FIXTURES / "talents-subset.json").read_text(encoding="utf-8"))


@pytest.fixture(scope="session")
def frost_mage(specs):
    return next(s for s in specs if s.slug == "frost-mage")


@pytest.fixture(scope="session")
def frost_mage_html():
    return (FIXTURES / "mythicstats-frost-mage.html").read_text(encoding="utf-8")


@pytest.fixture(scope="session")
def brewmaster(specs):
    return next(s for s in specs if s.slug == "brewmaster-monk")


@pytest.fixture(scope="session")
def brewmaster_html():
    return (FIXTURES / "wowhead-brewmaster-monk.html").read_text(encoding="utf-8")


@pytest.fixture(scope="session")
def wowhead_html():
    return (FIXTURES / "wowhead-frost-mage.html").read_text(encoding="utf-8")

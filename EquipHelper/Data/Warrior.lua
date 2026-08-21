-- GENERATED FILE -- do not edit by hand.
-- Fase 1: datos de ejemplo. Los heroID e itemID son PLACEHOLDER.
local ADDON_NAME, ns = ...

ns.RegisterClassData("WARRIOR", {
	specs = {
		[72] = {
			name = "Furia",
			role = "DAMAGER",
			heroes = {
				[1010] = {
					name = "Verdugo",
					mplus = {
						statPriority = {
							{ stat = "HASTE", weight = 1.00 },
							{ stat = "MASTERY", weight = 0.90 },
							{ stat = "CRIT", weight = 0.83 },
							{ stat = "VERSATILITY", weight = 0.70 },
						},
						talentBuilds = {
							{
								label = "M+ general",
								usagePct = 52,
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								importString = "PLACEHOLDER-SLAYER-MPLUS-EEEE",
							},
						},
						gear = {
							TRINKET1 = { { itemID = 219314, usagePct = 48, sourceHint = "Chimaerus" } },
						},
						gems = { { itemID = 213746, usagePct = 66 } },
						enchants = { { itemID = 223691, slot = "CHEST", usagePct = 71 } },
						rotation = {
							{ spellID = 23881, note = "Genera Rabia" },
							{ spellID = 85288, note = "Con Enrage activo" },
							{ spellID = 184367, note = "Gasta a 80+ de Rabia" },
							{ spellID = 5308, note = "Por debajo del 35%" },
						},
						provenance = {
							mythicstats = { url = "https://mythicstats.com/spec/fury-warrior", fetchedAt = "2026-08-20" },
						},
					},
				},
			},
		},
	},
})

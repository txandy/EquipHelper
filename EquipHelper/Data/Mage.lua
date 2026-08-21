-- GENERATED FILE -- do not edit by hand.
-- Fase 1: datos de ejemplo. Los heroID e itemID son PLACEHOLDER.
local ADDON_NAME, ns = ...

ns.RegisterClassData("MAGE", {
	specs = {
		[64] = {
			name = "Escarcha",
			role = "DAMAGER",
			heroes = {
				[1000] = {
					name = "Fuegogelido",
					mplus = {
						statPriority = {
							{ stat = "HASTE", weight = 1.00, note = "hasta ~30%" },
							{ stat = "CRIT", weight = 0.92 },
							{ stat = "MASTERY", weight = 0.71 },
							{ stat = "VERSATILITY", weight = 0.64 },
						},
						talentBuilds = {
							{
								label = "M+ general",
								usagePct = 41,
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-mage",
								importString = "PLACEHOLDER-FROSTFIRE-MPLUS-AAAA",
							},
							{
								label = "Pull grande / AoE",
								usagePct = 23,
								source = "archon",
								url = "https://archon.gg",
								importString = "PLACEHOLDER-FROSTFIRE-AOE-BBBB",
							},
						},
						gear = {
							HEAD = { { itemID = 212018, usagePct = 62, sourceHint = "Chimaerus" } },
							TRINKET1 = {
								{ itemID = 219314, usagePct = 74, sourceHint = "Chimaerus" },
								{ itemID = 212454, usagePct = 31, sourceHint = "Delves" },
							},
							MAINHAND = { { itemID = 212401, usagePct = 55, sourceHint = "Crafting" } },
						},
						gems = {
							{ itemID = 213743, usagePct = 81, note = "x3" },
						},
						enchants = {
							{ itemID = 223691, slot = "CHEST", usagePct = 77 },
							{ itemID = 223743, slot = "MAINHAND", usagePct = 69 },
						},
						rotation = {
							{ spellID = 84714, note = "En cooldown sobre el paquete" },
							{ spellID = 153595, note = "Con el objetivo congelado" },
							{ spellID = 44614, note = "Tras Frostbolt con Winter's Chill" },
							{ spellID = 30455, note = "Gasta las cargas de Winter's Chill" },
							{ spellID = 116, note = "Relleno" },
						},
						provenance = {
							mythicstats = { url = "https://mythicstats.com/spec/frost-mage", fetchedAt = "2026-08-20" },
						},
					},
					raid = {
						statPriority = {
							{ stat = "CRIT", weight = 1.00 },
							{ stat = "HASTE", weight = 0.88 },
							{ stat = "MASTERY", weight = 0.75 },
							{ stat = "VERSATILITY", weight = 0.60 },
						},
						talentBuilds = {
							{
								label = "Raid single target",
								usagePct = 58,
								source = "mythicstats",
								url = "https://mythicstats.com/raid/spec/frost-mage",
								importString = "PLACEHOLDER-FROSTFIRE-RAID-CCCC",
							},
						},
						gear = {
							TRINKET1 = { { itemID = 219314, usagePct = 66, sourceHint = "Chimaerus" } },
						},
						gems = { { itemID = 213743, usagePct = 79 } },
						enchants = { { itemID = 223691, slot = "CHEST", usagePct = 74 } },
						rotation = {
							{ spellID = 116, note = "Relleno" },
							{ spellID = 30455, note = "Con Fingers of Frost" },
						},
						provenance = {
							mythicstats = { url = "https://mythicstats.com/raid/spec/frost-mage", fetchedAt = "2026-08-20" },
						},
					},
				},
				[1001] = {
					name = "Lanzahechizos",
					mplus = {
						statPriority = {
							{ stat = "HASTE", weight = 1.00 },
							{ stat = "MASTERY", weight = 0.85 },
							{ stat = "CRIT", weight = 0.80 },
							{ stat = "VERSATILITY", weight = 0.61 },
						},
						talentBuilds = {
							{
								label = "M+ general",
								usagePct = 19,
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-mage",
								importString = "PLACEHOLDER-SPELLSLINGER-MPLUS-DDDD",
							},
						},
						gear = {
							TRINKET1 = { { itemID = 212454, usagePct = 44, sourceHint = "Delves" } },
						},
						gems = { { itemID = 213743, usagePct = 70 } },
						enchants = { { itemID = 223691, slot = "CHEST", usagePct = 72 } },
						rotation = {
							{ spellID = 84714, note = "En cooldown" },
							{ spellID = 116, note = "Relleno" },
						},
						provenance = {
							mythicstats = { url = "https://mythicstats.com/spec/frost-mage", fetchedAt = "2026-08-20" },
						},
					},
				},
			},
		},
	},
})

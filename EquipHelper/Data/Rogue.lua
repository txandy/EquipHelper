-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

ns.RegisterClassData("ROGUE", {
	specs = {
		[259] = {
			heroes = {
				[52] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 271887,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 271884,
								primary = true,
							},
							{
								category = "WEAPON_OIL",
								itemID = 243734,
								primary = true,
							},
							{
								category = "RUNE",
								itemID = 259085,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 255845,
								primary = true,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 39.9,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 32.9,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 18.4,
							},
							{
								itemID = 244029,
								slot = "OFFHAND",
								usagePct = 41.2,
							},
							{
								itemID = 243973,
								slot = "OFFHAND",
								usagePct = 31.6,
							},
							{
								itemID = 243971,
								slot = "OFFHAND",
								usagePct = 18.5,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 56.8,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 31.1,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 4.2,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 56.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 32.7,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 6.0,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 97.7,
							},
							{
								itemID = 243975,
								slot = "CHEST",
								usagePct = 1.2,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.9,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 97.2,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 1.4,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.8,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 61.7,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 32.2,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 5.1,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 93.2,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 2.8,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 1.1,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 193763,
									usagePct = 17.7,
								},
								{
									itemID = 239656,
									usagePct = 14.0,
								},
								{
									itemID = 251190,
									usagePct = 12.1,
								},
								{
									itemID = 251132,
									usagePct = 11.9,
								},
								{
									itemID = 258575,
									usagePct = 4.5,
								},
								{
									itemID = 279220,
									usagePct = 4.3,
								},
								{
									itemID = 272230,
									usagePct = 4.2,
								},
								{
									itemID = 272226,
									usagePct = 3.9,
								},
							},
							CHEST = {
								{
									itemID = 250009,
									usagePct = 68.2,
								},
								{
									itemID = 271513,
									usagePct = 17.4,
								},
								{
									itemID = 239048,
									usagePct = 3.1,
								},
								{
									itemID = 251159,
									usagePct = 3.1,
								},
								{
									itemID = 277787,
									usagePct = 2.7,
								},
								{
									itemID = 251226,
									usagePct = 1.8,
								},
								{
									itemID = 272239,
									usagePct = 1.7,
								},
								{
									itemID = 193764,
									usagePct = 1.7,
								},
							},
							FEET = {
								{
									itemID = 251153,
									usagePct = 22.7,
								},
								{
									itemID = 250008,
									usagePct = 18.8,
								},
								{
									itemID = 159327,
									usagePct = 11.6,
								},
								{
									itemID = 244569,
									usagePct = 10.9,
								},
								{
									itemID = 277786,
									usagePct = 10.8,
								},
								{
									itemID = 272240,
									usagePct = 4.5,
								},
								{
									itemID = 159304,
									usagePct = 4.3,
								},
								{
									itemID = 258577,
									usagePct = 4.1,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 53.0,
								},
								{
									itemID = 251217,
									usagePct = 23.0,
								},
								{
									itemID = 49812,
									usagePct = 18.7,
								},
								{
									itemID = 273792,
									usagePct = 11.8,
								},
								{
									itemID = 252258,
									usagePct = 11.4,
								},
								{
									itemID = 158366,
									usagePct = 9.7,
								},
								{
									itemID = 251136,
									usagePct = 9.7,
								},
								{
									itemID = 193708,
									usagePct = 8.7,
								},
							},
							HANDS = {
								{
									itemID = 250007,
									usagePct = 68.4,
								},
								{
									itemID = 271511,
									usagePct = 15.6,
								},
								{
									itemID = 251124,
									usagePct = 6.0,
								},
								{
									itemID = 159312,
									usagePct = 2.7,
								},
								{
									itemID = 272241,
									usagePct = 2.0,
								},
								{
									itemID = 193758,
									usagePct = 1.8,
								},
								{
									itemID = 159337,
									usagePct = 1.3,
								},
								{
									itemID = 277785,
									usagePct = 1.1,
								},
							},
							HEAD = {
								{
									itemID = 250006,
									usagePct = 47.7,
								},
								{
									itemID = 268283,
									usagePct = 17.7,
								},
								{
									itemID = 271510,
									usagePct = 17.0,
								},
								{
									itemID = 239033,
									usagePct = 4.5,
								},
								{
									itemID = 273791,
									usagePct = 3.8,
								},
								{
									itemID = 251140,
									usagePct = 3.5,
								},
								{
									itemID = 277784,
									usagePct = 2.0,
								},
								{
									itemID = 193751,
									usagePct = 1.8,
								},
							},
							LEGS = {
								{
									itemID = 250005,
									usagePct = 46.3,
								},
								{
									itemID = 271509,
									usagePct = 15.7,
								},
								{
									itemID = 251087,
									usagePct = 6.5,
								},
								{
									itemID = 251130,
									usagePct = 5.9,
								},
								{
									itemID = 277783,
									usagePct = 5.2,
								},
								{
									itemID = 49817,
									usagePct = 4.6,
								},
								{
									itemID = 272243,
									usagePct = 3.5,
								},
								{
									itemID = 251198,
									usagePct = 2.2,
								},
							},
							MAINHAND = {
								{
									itemID = 237837,
									usagePct = 67.0,
								},
								{
									itemID = 49807,
									usagePct = 8.6,
								},
								{
									itemID = 193756,
									usagePct = 5.5,
								},
								{
									itemID = 251180,
									usagePct = 3.4,
								},
								{
									itemID = 159136,
									usagePct = 2.5,
								},
								{
									itemID = 275070,
									usagePct = 2.4,
								},
								{
									itemID = 249925,
									usagePct = 2.2,
								},
								{
									itemID = 277805,
									usagePct = 2.1,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 23.8,
								},
								{
									itemID = 273781,
									usagePct = 16.0,
								},
								{
									itemID = 50228,
									usagePct = 15.0,
								},
								{
									itemID = 251173,
									usagePct = 13.7,
								},
								{
									itemID = 251234,
									usagePct = 7.9,
								},
								{
									itemID = 249337,
									usagePct = 5.2,
								},
								{
									itemID = 272229,
									usagePct = 5.0,
								},
								{
									itemID = 251142,
									usagePct = 3.4,
								},
							},
							OFFHAND = {
								{
									itemID = 237837,
									usagePct = 28.6,
								},
								{
									itemID = 49807,
									usagePct = 17.3,
								},
								{
									itemID = 275070,
									usagePct = 9.3,
								},
								{
									itemID = 251180,
									usagePct = 7.9,
								},
								{
									itemID = 251128,
									usagePct = 6.6,
								},
								{
									itemID = 193756,
									usagePct = 6.2,
								},
								{
									itemID = 159136,
									usagePct = 5.3,
								},
								{
									itemID = 277805,
									usagePct = 4.8,
								},
							},
							SHOULDER = {
								{
									itemID = 250004,
									usagePct = 64.9,
								},
								{
									itemID = 271508,
									usagePct = 14.9,
								},
								{
									itemID = 251223,
									usagePct = 5.6,
								},
								{
									itemID = 251146,
									usagePct = 4.9,
								},
								{
									itemID = 273774,
									usagePct = 4.2,
								},
								{
									itemID = 272244,
									usagePct = 2.1,
								},
								{
									itemID = 277782,
									usagePct = 2.1,
								},
								{
									itemID = 278887,
									usagePct = 0.4,
								},
							},
							TRINKET1 = {
								{
									itemID = 193701,
									usagePct = 52.6,
								},
								{
									itemID = 249343,
									usagePct = 50.2,
								},
								{
									itemID = 250225,
									usagePct = 13.2,
								},
								{
									itemID = 273796,
									usagePct = 11.2,
								},
								{
									itemID = 250259,
									usagePct = 10.8,
								},
								{
									itemID = 250214,
									usagePct = 5.9,
								},
								{
									itemID = 264507,
									usagePct = 4.8,
								},
								{
									itemID = 248583,
									usagePct = 4.6,
								},
							},
							WAIST = {
								{
									itemID = 268286,
									usagePct = 43.8,
								},
								{
									itemID = 159301,
									usagePct = 12.1,
								},
								{
									itemID = 159317,
									usagePct = 9.7,
								},
								{
									itemID = 244573,
									usagePct = 6.7,
								},
								{
									itemID = 251235,
									usagePct = 4.8,
								},
								{
									itemID = 251189,
									usagePct = 4.6,
								},
								{
									itemID = 277781,
									usagePct = 4.3,
								},
								{
									itemID = 49806,
									usagePct = 3.6,
								},
							},
							WRIST = {
								{
									itemID = 244576,
									usagePct = 38.0,
								},
								{
									itemID = 249327,
									usagePct = 11.4,
								},
								{
									itemID = 251183,
									usagePct = 10.1,
								},
								{
									itemID = 50264,
									usagePct = 9.1,
								},
								{
									itemID = 272246,
									usagePct = 5.9,
								},
								{
									itemID = 251135,
									usagePct = 5.8,
								},
								{
									itemID = 276643,
									usagePct = 4.1,
								},
								{
									itemID = 277780,
									usagePct = 3.6,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 42.9,
							},
							{
								itemID = 240983,
								usagePct = 19.0,
							},
							{
								itemID = 240890,
								usagePct = 12.4,
							},
							{
								itemID = 240892,
								usagePct = 7.4,
							},
							{
								itemID = 240908,
								usagePct = 5.1,
							},
							{
								itemID = 240898,
								usagePct = 4.9,
							},
							{
								itemID = 240900,
								usagePct = 4.0,
							},
							{
								itemID = 240967,
								usagePct = 0.9,
							},
							{
								itemID = 240902,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 197609.8,
							metric = "dps",
							outOf = 40,
							rank = 4,
							sample = 300,
							top = 315586.4,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/assassination-rogue",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/rogue/assassination/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 35.2,
								stat = "CRIT",
								weight = 1.0,
							},
							{
								share = 21.5,
								stat = "HASTE",
								weight = 0.833,
							},
							{
								share = 36.8,
								stat = "MASTERY",
								weight = 0.657,
							},
							{
								share = 2.7,
								stat = "VERSATILITY",
								weight = 0.163,
							},
						},
						talentBuilds = {
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAottxMzMzMGLzMzsNzyMz8AmxMjxMmZMGADsAzY0Y2AsNgNDAmZGjPA",
								label = "Fatebound #1",
								metrics = {
									["Avg dps"] = "250K",
									["Avg key"] = "+11.9",
									["Max dps"] = "291K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 2.0,
							},
						},
					},
					name = "Fatebound",
				},
				[53] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 271887,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 271884,
								primary = true,
							},
							{
								category = "WEAPON_OIL",
								itemID = 243734,
								primary = true,
							},
							{
								category = "RUNE",
								itemID = 259085,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 255845,
								primary = true,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 39.9,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 32.9,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 18.4,
							},
							{
								itemID = 244029,
								slot = "OFFHAND",
								usagePct = 41.2,
							},
							{
								itemID = 243973,
								slot = "OFFHAND",
								usagePct = 31.6,
							},
							{
								itemID = 243971,
								slot = "OFFHAND",
								usagePct = 18.5,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 56.8,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 31.1,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 4.2,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 56.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 32.7,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 6.0,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 97.7,
							},
							{
								itemID = 243975,
								slot = "CHEST",
								usagePct = 1.2,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.9,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 97.2,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 1.4,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.8,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 61.7,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 32.2,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 5.1,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 93.2,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 2.8,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 1.1,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 193763,
									usagePct = 17.7,
								},
								{
									itemID = 239656,
									usagePct = 14.0,
								},
								{
									itemID = 251190,
									usagePct = 12.1,
								},
								{
									itemID = 251132,
									usagePct = 11.9,
								},
								{
									itemID = 258575,
									usagePct = 4.5,
								},
								{
									itemID = 279220,
									usagePct = 4.3,
								},
								{
									itemID = 272230,
									usagePct = 4.2,
								},
								{
									itemID = 272226,
									usagePct = 3.9,
								},
							},
							CHEST = {
								{
									itemID = 250009,
									usagePct = 68.2,
								},
								{
									itemID = 271513,
									usagePct = 17.4,
								},
								{
									itemID = 239048,
									usagePct = 3.1,
								},
								{
									itemID = 251159,
									usagePct = 3.1,
								},
								{
									itemID = 277787,
									usagePct = 2.7,
								},
								{
									itemID = 251226,
									usagePct = 1.8,
								},
								{
									itemID = 272239,
									usagePct = 1.7,
								},
								{
									itemID = 193764,
									usagePct = 1.7,
								},
							},
							FEET = {
								{
									itemID = 251153,
									usagePct = 22.7,
								},
								{
									itemID = 250008,
									usagePct = 18.8,
								},
								{
									itemID = 159327,
									usagePct = 11.6,
								},
								{
									itemID = 244569,
									usagePct = 10.9,
								},
								{
									itemID = 277786,
									usagePct = 10.8,
								},
								{
									itemID = 272240,
									usagePct = 4.5,
								},
								{
									itemID = 159304,
									usagePct = 4.3,
								},
								{
									itemID = 258577,
									usagePct = 4.1,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 53.0,
								},
								{
									itemID = 251217,
									usagePct = 23.0,
								},
								{
									itemID = 49812,
									usagePct = 18.7,
								},
								{
									itemID = 273792,
									usagePct = 11.8,
								},
								{
									itemID = 252258,
									usagePct = 11.4,
								},
								{
									itemID = 158366,
									usagePct = 9.7,
								},
								{
									itemID = 251136,
									usagePct = 9.7,
								},
								{
									itemID = 193708,
									usagePct = 8.7,
								},
							},
							HANDS = {
								{
									itemID = 250007,
									usagePct = 68.4,
								},
								{
									itemID = 271511,
									usagePct = 15.6,
								},
								{
									itemID = 251124,
									usagePct = 6.0,
								},
								{
									itemID = 159312,
									usagePct = 2.7,
								},
								{
									itemID = 272241,
									usagePct = 2.0,
								},
								{
									itemID = 193758,
									usagePct = 1.8,
								},
								{
									itemID = 159337,
									usagePct = 1.3,
								},
								{
									itemID = 277785,
									usagePct = 1.1,
								},
							},
							HEAD = {
								{
									itemID = 250006,
									usagePct = 47.7,
								},
								{
									itemID = 268283,
									usagePct = 17.7,
								},
								{
									itemID = 271510,
									usagePct = 17.0,
								},
								{
									itemID = 239033,
									usagePct = 4.5,
								},
								{
									itemID = 273791,
									usagePct = 3.8,
								},
								{
									itemID = 251140,
									usagePct = 3.5,
								},
								{
									itemID = 277784,
									usagePct = 2.0,
								},
								{
									itemID = 193751,
									usagePct = 1.8,
								},
							},
							LEGS = {
								{
									itemID = 250005,
									usagePct = 46.3,
								},
								{
									itemID = 271509,
									usagePct = 15.7,
								},
								{
									itemID = 251087,
									usagePct = 6.5,
								},
								{
									itemID = 251130,
									usagePct = 5.9,
								},
								{
									itemID = 277783,
									usagePct = 5.2,
								},
								{
									itemID = 49817,
									usagePct = 4.6,
								},
								{
									itemID = 272243,
									usagePct = 3.5,
								},
								{
									itemID = 251198,
									usagePct = 2.2,
								},
							},
							MAINHAND = {
								{
									itemID = 237837,
									usagePct = 67.0,
								},
								{
									itemID = 49807,
									usagePct = 8.6,
								},
								{
									itemID = 193756,
									usagePct = 5.5,
								},
								{
									itemID = 251180,
									usagePct = 3.4,
								},
								{
									itemID = 159136,
									usagePct = 2.5,
								},
								{
									itemID = 275070,
									usagePct = 2.4,
								},
								{
									itemID = 249925,
									usagePct = 2.2,
								},
								{
									itemID = 277805,
									usagePct = 2.1,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 23.8,
								},
								{
									itemID = 273781,
									usagePct = 16.0,
								},
								{
									itemID = 50228,
									usagePct = 15.0,
								},
								{
									itemID = 251173,
									usagePct = 13.7,
								},
								{
									itemID = 251234,
									usagePct = 7.9,
								},
								{
									itemID = 249337,
									usagePct = 5.2,
								},
								{
									itemID = 272229,
									usagePct = 5.0,
								},
								{
									itemID = 251142,
									usagePct = 3.4,
								},
							},
							OFFHAND = {
								{
									itemID = 237837,
									usagePct = 28.6,
								},
								{
									itemID = 49807,
									usagePct = 17.3,
								},
								{
									itemID = 275070,
									usagePct = 9.3,
								},
								{
									itemID = 251180,
									usagePct = 7.9,
								},
								{
									itemID = 251128,
									usagePct = 6.6,
								},
								{
									itemID = 193756,
									usagePct = 6.2,
								},
								{
									itemID = 159136,
									usagePct = 5.3,
								},
								{
									itemID = 277805,
									usagePct = 4.8,
								},
							},
							SHOULDER = {
								{
									itemID = 250004,
									usagePct = 64.9,
								},
								{
									itemID = 271508,
									usagePct = 14.9,
								},
								{
									itemID = 251223,
									usagePct = 5.6,
								},
								{
									itemID = 251146,
									usagePct = 4.9,
								},
								{
									itemID = 273774,
									usagePct = 4.2,
								},
								{
									itemID = 272244,
									usagePct = 2.1,
								},
								{
									itemID = 277782,
									usagePct = 2.1,
								},
								{
									itemID = 278887,
									usagePct = 0.4,
								},
							},
							TRINKET1 = {
								{
									itemID = 193701,
									usagePct = 52.6,
								},
								{
									itemID = 249343,
									usagePct = 50.2,
								},
								{
									itemID = 250225,
									usagePct = 13.2,
								},
								{
									itemID = 273796,
									usagePct = 11.2,
								},
								{
									itemID = 250259,
									usagePct = 10.8,
								},
								{
									itemID = 250214,
									usagePct = 5.9,
								},
								{
									itemID = 264507,
									usagePct = 4.8,
								},
								{
									itemID = 248583,
									usagePct = 4.6,
								},
							},
							WAIST = {
								{
									itemID = 268286,
									usagePct = 43.8,
								},
								{
									itemID = 159301,
									usagePct = 12.1,
								},
								{
									itemID = 159317,
									usagePct = 9.7,
								},
								{
									itemID = 244573,
									usagePct = 6.7,
								},
								{
									itemID = 251235,
									usagePct = 4.8,
								},
								{
									itemID = 251189,
									usagePct = 4.6,
								},
								{
									itemID = 277781,
									usagePct = 4.3,
								},
								{
									itemID = 49806,
									usagePct = 3.6,
								},
							},
							WRIST = {
								{
									itemID = 244576,
									usagePct = 38.0,
								},
								{
									itemID = 249327,
									usagePct = 11.4,
								},
								{
									itemID = 251183,
									usagePct = 10.1,
								},
								{
									itemID = 50264,
									usagePct = 9.1,
								},
								{
									itemID = 272246,
									usagePct = 5.9,
								},
								{
									itemID = 251135,
									usagePct = 5.8,
								},
								{
									itemID = 276643,
									usagePct = 4.1,
								},
								{
									itemID = 277780,
									usagePct = 3.6,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 42.9,
							},
							{
								itemID = 240983,
								usagePct = 19.0,
							},
							{
								itemID = 240890,
								usagePct = 12.4,
							},
							{
								itemID = 240892,
								usagePct = 7.4,
							},
							{
								itemID = 240908,
								usagePct = 5.1,
							},
							{
								itemID = 240898,
								usagePct = 4.9,
							},
							{
								itemID = 240900,
								usagePct = 4.0,
							},
							{
								itemID = 240967,
								usagePct = 0.9,
							},
							{
								itemID = 240902,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 197609.8,
							metric = "dps",
							outOf = 40,
							rank = 4,
							sample = 300,
							top = 315586.4,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/assassination-rogue",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/rogue/assassination/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 35.2,
								stat = "CRIT",
								weight = 1.0,
							},
							{
								share = 21.5,
								stat = "HASTE",
								weight = 0.833,
							},
							{
								share = 36.8,
								stat = "MASTERY",
								weight = 0.657,
							},
							{
								share = 2.7,
								stat = "VERSATILITY",
								weight = 0.163,
							},
						},
						talentBuilds = {
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAIbzMzMzMjxyMzMbzsMzMPgZMzYMMzYMAbmlBGwCYZYCMsYwMDwYMA",
								label = "Deathstalker #1",
								metrics = {
									["Avg dps"] = "205K",
									["Avg key"] = "+11.8",
									["Max dps"] = "262K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 25.5,
							},
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAIbzMzMzMjxyMzMbzsMzMPgZMzYMjZGjBYzsMwAWALDTghFDmZAGjPA",
								label = "Deathstalker #2",
								metrics = {
									["Avg dps"] = "215K",
									["Avg key"] = "+11.9",
									["Max dps"] = "281K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 6.0,
							},
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAILzMzMzMjxyMzMbzsMzMPgZMzYMMzYMAbmlBGwCYZYCMsYwMDwYMA",
								label = "Deathstalker #3",
								metrics = {
									["Avg dps"] = "207K",
									["Avg key"] = "+11.9",
									["Max dps"] = "274K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 5.8,
							},
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAotlZmZmZmxYZmZmtZWmZmHwMmZMGmZMGgNzyADYBsMMBGWMYmBYwA",
								label = "Deathstalker #4",
								metrics = {
									["Avg dps"] = "203K",
									["Avg key"] = "+12.1",
									["Max dps"] = "231K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 2.4,
							},
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAotlZmZmZmxYZmZmtZWmZmHwMmZMGmZMGgNzyADYBsMMBGWAzMAjxA",
								label = "Deathstalker #5",
								metrics = {
									["Avg dps"] = "223K",
									["Avg key"] = "+12.1",
									["Max dps"] = "255K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 2.2,
							},
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAILjZmZmZMWmZmZbmlZm5BMjZGjhZGjBYzsMwAWALDTghFDmZAmZMA",
								label = "Deathstalker #6",
								metrics = {
									["Avg dps"] = "233K",
									["Avg key"] = "+12.4",
									["Max dps"] = "263K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 2.0,
							},
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAotlxMzMzMGLzMzsNzyMz8AmxMjxwMjxAsZWGYALglhJwwiBzMAjxA",
								label = "Deathstalker #7",
								metrics = {
									["Avg dps"] = "186K",
									["Avg key"] = "+12.5",
									["Max dps"] = "211K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 1.8,
							},
							{
								importString = "CMQAAAAAAAAAAAAAAAAAAAAAAYmlZmFDGAAAAAYWGsNDAAAAAotlxMzMzMGbzMzsNzyMz8AzMmZwMmZMGgNzyADYBsMMBGWMYmBYGGA",
								label = "Deathstalker #8",
								metrics = {
									["Avg dps"] = "206K",
									["Avg key"] = "+12.1",
									["Max dps"] = "211K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/assassination-rogue",
								usagePct = 1.7,
							},
						},
					},
					name = "Deathstalker",
				},
			},
			name = "Assassination",
		},
		[260] = {
			heroes = {
				[51] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241326,
								primary = true,
							},
							{
								category = "FLASK",
								itemID = 241324,
								primary = false,
							},
							{
								category = "POTION",
								itemID = 241309,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 271884,
								primary = true,
							},
							{
								category = "WEAPON_OIL",
								itemID = 243734,
								primary = true,
							},
							{
								category = "RUNE",
								itemID = 259085,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 255846,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242747,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 86.0,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 10.0,
							},
							{
								itemID = 244028,
								slot = "MAINHAND",
								usagePct = 1.8,
							},
							{
								itemID = 244029,
								slot = "OFFHAND",
								usagePct = 86.5,
							},
							{
								itemID = 243971,
								slot = "OFFHAND",
								usagePct = 6.9,
							},
							{
								itemID = 243973,
								slot = "OFFHAND",
								usagePct = 3.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 54.7,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 34.9,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 4.0,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 51.2,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 39.2,
							},
							{
								itemID = 243989,
								slot = "SHOULDER",
								usagePct = 4.4,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 96.2,
							},
							{
								itemID = 243975,
								slot = "CHEST",
								usagePct = 2.4,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.9,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 97.2,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 1.4,
							},
							{
								itemID = 244640,
								slot = "LEGS",
								usagePct = 0.9,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 48.2,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 47.7,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 4.1,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 94.6,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 1.7,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 1.6,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 21.7,
								},
								{
									itemID = 49823,
									usagePct = 9.6,
								},
								{
									itemID = 193763,
									usagePct = 8.9,
								},
								{
									itemID = 251190,
									usagePct = 7.5,
								},
								{
									itemID = 272225,
									usagePct = 6.9,
								},
								{
									itemID = 249335,
									usagePct = 5.9,
								},
								{
									itemID = 260312,
									usagePct = 4.9,
								},
								{
									itemID = 159288,
									usagePct = 4.7,
								},
							},
							CHEST = {
								{
									itemID = 250009,
									usagePct = 75.8,
								},
								{
									itemID = 271513,
									usagePct = 14.0,
								},
								{
									itemID = 239048,
									usagePct = 2.8,
								},
								{
									itemID = 193764,
									usagePct = 2.4,
								},
								{
									itemID = 251226,
									usagePct = 1.6,
								},
								{
									itemID = 272239,
									usagePct = 1.5,
								},
								{
									itemID = 251159,
									usagePct = 0.7,
								},
								{
									itemID = 277787,
									usagePct = 0.4,
								},
							},
							FEET = {
								{
									itemID = 244569,
									usagePct = 42.7,
								},
								{
									itemID = 251153,
									usagePct = 16.2,
								},
								{
									itemID = 260372,
									usagePct = 9.0,
								},
								{
									itemID = 277786,
									usagePct = 7.1,
								},
								{
									itemID = 250008,
									usagePct = 5.0,
								},
								{
									itemID = 159304,
									usagePct = 4.3,
								},
								{
									itemID = 159327,
									usagePct = 3.8,
								},
								{
									itemID = 272240,
									usagePct = 2.2,
								},
							},
							FINGER1 = {
								{
									itemID = 49812,
									usagePct = 44.6,
								},
								{
									itemID = 268290,
									usagePct = 41.9,
								},
								{
									itemID = 240949,
									usagePct = 17.0,
								},
								{
									itemID = 273792,
									usagePct = 16.1,
								},
								{
									itemID = 251217,
									usagePct = 15.5,
								},
								{
									itemID = 251148,
									usagePct = 9.7,
								},
								{
									itemID = 249336,
									usagePct = 7.5,
								},
								{
									itemID = 158366,
									usagePct = 6.6,
								},
							},
							HANDS = {
								{
									itemID = 250007,
									usagePct = 74.9,
								},
								{
									itemID = 271511,
									usagePct = 12.9,
								},
								{
									itemID = 251124,
									usagePct = 3.4,
								},
								{
									itemID = 193758,
									usagePct = 2.4,
								},
								{
									itemID = 159312,
									usagePct = 2.2,
								},
								{
									itemID = 159337,
									usagePct = 1.2,
								},
								{
									itemID = 268234,
									usagePct = 0.9,
								},
								{
									itemID = 277785,
									usagePct = 0.9,
								},
							},
							HEAD = {
								{
									itemID = 268283,
									usagePct = 30.3,
								},
								{
									itemID = 250006,
									usagePct = 23.3,
								},
								{
									itemID = 271510,
									usagePct = 16.8,
								},
								{
									itemID = 273791,
									usagePct = 11.2,
								},
								{
									itemID = 193751,
									usagePct = 6.5,
								},
								{
									itemID = 239033,
									usagePct = 3.2,
								},
								{
									itemID = 151336,
									usagePct = 2.4,
								},
								{
									itemID = 251140,
									usagePct = 1.3,
								},
							},
							LEGS = {
								{
									itemID = 250005,
									usagePct = 70.8,
								},
								{
									itemID = 271509,
									usagePct = 14.8,
								},
								{
									itemID = 277783,
									usagePct = 5.0,
								},
								{
									itemID = 272243,
									usagePct = 1.8,
								},
								{
									itemID = 159313,
									usagePct = 1.8,
								},
								{
									itemID = 251198,
									usagePct = 1.5,
								},
								{
									itemID = 244574,
									usagePct = 1.3,
								},
								{
									itemID = 159329,
									usagePct = 1.0,
								},
							},
							MAINHAND = {
								{
									itemID = 237839,
									usagePct = 33.8,
								},
								{
									itemID = 249298,
									usagePct = 8.6,
								},
								{
									itemID = 251207,
									usagePct = 7.8,
								},
								{
									itemID = 193767,
									usagePct = 6.5,
								},
								{
									itemID = 260423,
									usagePct = 6.2,
								},
								{
									itemID = 251143,
									usagePct = 4.3,
								},
								{
									itemID = 158714,
									usagePct = 3.5,
								},
								{
									itemID = 277799,
									usagePct = 3.5,
								},
							},
							NECK = {
								{
									itemID = 50228,
									usagePct = 27.5,
								},
								{
									itemID = 273781,
									usagePct = 19.8,
								},
								{
									itemID = 251173,
									usagePct = 14.0,
								},
								{
									itemID = 249337,
									usagePct = 10.0,
								},
								{
									itemID = 272229,
									usagePct = 4.7,
								},
								{
									itemID = 265739,
									usagePct = 4.3,
								},
								{
									itemID = 256970,
									usagePct = 3.8,
								},
								{
									itemID = 268291,
									usagePct = 3.2,
								},
							},
							OFFHAND = {
								{
									itemID = 237837,
									usagePct = 32.5,
								},
								{
									itemID = 49807,
									usagePct = 23.9,
								},
								{
									itemID = 275070,
									usagePct = 11.5,
								},
								{
									itemID = 251186,
									usagePct = 3.7,
								},
								{
									itemID = 251180,
									usagePct = 3.1,
								},
								{
									itemID = 251143,
									usagePct = 2.8,
								},
								{
									itemID = 268204,
									usagePct = 1.8,
								},
								{
									itemID = 193767,
									usagePct = 1.8,
								},
							},
							SHOULDER = {
								{
									itemID = 250004,
									usagePct = 73.0,
								},
								{
									itemID = 271508,
									usagePct = 12.9,
								},
								{
									itemID = 251223,
									usagePct = 5.0,
								},
								{
									itemID = 272244,
									usagePct = 3.2,
								},
								{
									itemID = 273774,
									usagePct = 2.1,
								},
								{
									itemID = 251146,
									usagePct = 1.5,
								},
								{
									itemID = 277782,
									usagePct = 1.3,
								},
								{
									itemID = 244572,
									usagePct = 0.3,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 66.5,
								},
								{
									itemID = 260235,
									usagePct = 28.5,
								},
								{
									itemID = 252420,
									usagePct = 26.7,
								},
								{
									itemID = 250259,
									usagePct = 11.1,
								},
								{
									itemID = 250215,
									usagePct = 7.8,
								},
								{
									itemID = 264507,
									usagePct = 6.4,
								},
								{
									itemID = 273796,
									usagePct = 5.5,
								},
								{
									itemID = 250225,
									usagePct = 5.3,
								},
							},
							WAIST = {
								{
									itemID = 268286,
									usagePct = 37.2,
								},
								{
									itemID = 49806,
									usagePct = 10.9,
								},
								{
									itemID = 159301,
									usagePct = 9.6,
								},
								{
									itemID = 249374,
									usagePct = 8.4,
								},
								{
									itemID = 244573,
									usagePct = 6.8,
								},
								{
									itemID = 251235,
									usagePct = 6.6,
								},
								{
									itemID = 251189,
									usagePct = 5.9,
								},
								{
									itemID = 250003,
									usagePct = 5.0,
								},
							},
							WRIST = {
								{
									itemID = 50264,
									usagePct = 29.0,
								},
								{
									itemID = 244576,
									usagePct = 11.7,
								},
								{
									itemID = 249327,
									usagePct = 11.5,
								},
								{
									itemID = 251135,
									usagePct = 8.7,
								},
								{
									itemID = 159300,
									usagePct = 7.7,
								},
								{
									itemID = 250002,
									usagePct = 7.4,
								},
								{
									itemID = 251183,
									usagePct = 7.2,
								},
								{
									itemID = 276643,
									usagePct = 5.6,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 33.1,
							},
							{
								itemID = 240890,
								usagePct = 24.6,
							},
							{
								itemID = 240983,
								usagePct = 15.1,
							},
							{
								itemID = 240910,
								usagePct = 8.0,
							},
							{
								itemID = 240967,
								usagePct = 5.2,
							},
							{
								itemID = 240914,
								usagePct = 2.8,
							},
							{
								itemID = 240898,
								usagePct = 2.8,
							},
							{
								itemID = 240900,
								usagePct = 1.9,
							},
							{
								itemID = 240916,
								usagePct = 1.6,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 196952.6,
							metric = "dps",
							outOf = 40,
							rank = 5,
							sample = 300,
							top = 322836.8,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/outlaw-rogue",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/rogue/outlaw/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 36.0,
								stat = "CRIT",
								weight = 1.0,
							},
							{
								share = 24.2,
								stat = "HASTE",
								weight = 0.765,
							},
							{
								share = 15.1,
								stat = "MASTERY",
								weight = 0.291,
							},
							{
								share = 3.0,
								stat = "VERSATILITY",
								weight = 0.155,
							},
						},
						talentBuilds = {
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAAbbzMzwMzMziZmZbAAAAYmBAjZxwADMLsQLsxAMzgBG",
								label = "Trickster #1",
								metrics = {
									["Avg dps"] = "200K",
									["Avg key"] = "+11.6",
									["Max dps"] = "287K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 14.8,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAAbLzMzwMzMzYmZ2GAAAAGDAGzihBGYWYhWYjBYmBzgB",
								label = "Trickster #2",
								metrics = {
									["Avg dps"] = "222K",
									["Avg key"] = "+11.8",
									["Max dps"] = "308K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 11.7,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAAbLzMzwMzMziZmZbAAAAYmBAjZxwADMLsQLsxAMzgBG",
								label = "Trickster #3",
								metrics = {
									["Avg dps"] = "183K",
									["Avg key"] = "+11.8",
									["Max dps"] = "256K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 9.9,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAALLzMzwMzMziZmZbAAAAYMAYMLGGYgZhFahNGgZGMDG",
								label = "Trickster #4",
								metrics = {
									["Avg dps"] = "234K",
									["Avg key"] = "+12.2",
									["Max dps"] = "319K",
									["Max key"] = "+16",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 7.1,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAgZbZmZGmZmZWMzMbDAAAAjBAjZxwADMLsQLsxAMzgBG",
								label = "Trickster #5",
								metrics = {
									["Avg dps"] = "195K",
									["Avg key"] = "+11.8",
									["Max dps"] = "245K",
									["Max key"] = "+16",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 5.2,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAgZbbmZGmZmZWMzMbDAAAAjBAjZxwADMLsQLsxAMzgBG",
								label = "Trickster #6",
								metrics = {
									["Avg dps"] = "242K",
									["Avg key"] = "+11.9",
									["Max dps"] = "293K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 3.1,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAAbbzMzwMzMziZmZbAAAAYMAYMLGGYgZhFahNGgZGMDG",
								label = "Trickster #7",
								metrics = {
									["Avg dps"] = "173K",
									["Avg key"] = "+11.3",
									["Max dps"] = "260K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 3.1,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAALLzMzwMzMziZmZbAAAAYmBAjZxwADMLsQLsxAMzgBG",
								label = "Trickster #8",
								metrics = {
									["Avg dps"] = "193K",
									["Avg key"] = "+11.3",
									["Max dps"] = "240K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 2.7,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsBmZbaZw2MAAAAAAbLzMzwMzMziZmZbAAAAYMAYMLGGYgZhFahNGgZGMDG",
								label = "Trickster #9",
								metrics = {
									["Avg dps"] = "197K",
									["Avg key"] = "+11.5",
									["Max dps"] = "249K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 2.5,
							},
							{
								importString = "CQQAAAAAAAAAAAAAAAAAAAAAAAgx2MMzMjZmtZmZMzMzsAmZbaZw2MAAAAAgZZZmZGmZmZWMzMbDAAAAjBAjZxwADMLsQLsxAMzgBG",
								label = "Trickster #10",
								metrics = {
									["Avg dps"] = "215K",
									["Avg key"] = "+12.7",
									["Max dps"] = "248K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/outlaw-rogue",
								usagePct = 1.9,
							},
						},
					},
					name = "Trickster",
				},
			},
			name = "Outlaw",
		},
		[261] = {
			heroes = {
				[53] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241326,
								primary = true,
							},
							{
								category = "FLASK",
								itemID = 241322,
								primary = false,
							},
							{
								category = "POTION",
								itemID = 241308,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 271884,
								primary = true,
							},
							{
								category = "WEAPON_OIL",
								itemID = 243734,
								primary = true,
							},
							{
								category = "RUNE",
								itemID = 259085,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 255845,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242275,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 54.9,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 39.4,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 3.1,
							},
							{
								itemID = 244029,
								slot = "OFFHAND",
								usagePct = 56.6,
							},
							{
								itemID = 244031,
								slot = "OFFHAND",
								usagePct = 38.8,
							},
							{
								itemID = 243973,
								slot = "OFFHAND",
								usagePct = 2.0,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 74.2,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 20.3,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 2.5,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 75.3,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 19.8,
							},
							{
								itemID = 243989,
								slot = "SHOULDER",
								usagePct = 1.5,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 97.5,
							},
							{
								itemID = 243975,
								slot = "CHEST",
								usagePct = 2.4,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.1,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 97.4,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 1.3,
							},
							{
								itemID = 244640,
								slot = "LEGS",
								usagePct = 0.7,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 75.6,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 20.1,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 3.9,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 94.9,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 2.3,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 1.8,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 251190,
									usagePct = 19.1,
								},
								{
									itemID = 239656,
									usagePct = 13.5,
								},
								{
									itemID = 193763,
									usagePct = 12.0,
								},
								{
									itemID = 251132,
									usagePct = 8.7,
								},
								{
									itemID = 159288,
									usagePct = 6.2,
								},
								{
									itemID = 272230,
									usagePct = 5.1,
								},
								{
									itemID = 258575,
									usagePct = 4.7,
								},
								{
									itemID = 249370,
									usagePct = 3.5,
								},
							},
							CHEST = {
								{
									itemID = 250009,
									usagePct = 63.0,
								},
								{
									itemID = 271513,
									usagePct = 22.5,
								},
								{
									itemID = 251159,
									usagePct = 4.7,
								},
								{
									itemID = 251226,
									usagePct = 2.2,
								},
								{
									itemID = 239048,
									usagePct = 2.2,
								},
								{
									itemID = 272239,
									usagePct = 2.0,
								},
								{
									itemID = 193764,
									usagePct = 1.2,
								},
								{
									itemID = 277787,
									usagePct = 0.8,
								},
							},
							FEET = {
								{
									itemID = 251153,
									usagePct = 22.2,
								},
								{
									itemID = 244569,
									usagePct = 14.0,
								},
								{
									itemID = 250008,
									usagePct = 11.0,
								},
								{
									itemID = 159304,
									usagePct = 10.4,
								},
								{
									itemID = 159327,
									usagePct = 7.8,
								},
								{
									itemID = 258577,
									usagePct = 7.5,
								},
								{
									itemID = 277786,
									usagePct = 6.3,
								},
								{
									itemID = 272240,
									usagePct = 5.4,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 64.9,
								},
								{
									itemID = 251093,
									usagePct = 11.8,
								},
								{
									itemID = 251194,
									usagePct = 11.8,
								},
								{
									itemID = 252258,
									usagePct = 10.8,
								},
								{
									itemID = 273792,
									usagePct = 10.2,
								},
								{
									itemID = 251115,
									usagePct = 8.9,
								},
								{
									itemID = 249920,
									usagePct = 8.1,
								},
								{
									itemID = 158366,
									usagePct = 6.9,
								},
							},
							HANDS = {
								{
									itemID = 250007,
									usagePct = 66.1,
								},
								{
									itemID = 271511,
									usagePct = 21.1,
								},
								{
									itemID = 159337,
									usagePct = 3.9,
								},
								{
									itemID = 251124,
									usagePct = 3.6,
								},
								{
									itemID = 159312,
									usagePct = 1.6,
								},
								{
									itemID = 193758,
									usagePct = 1.1,
								},
								{
									itemID = 272241,
									usagePct = 0.9,
								},
								{
									itemID = 277785,
									usagePct = 0.9,
								},
							},
							HEAD = {
								{
									itemID = 250006,
									usagePct = 67.0,
								},
								{
									itemID = 271510,
									usagePct = 20.1,
								},
								{
									itemID = 251140,
									usagePct = 2.8,
								},
								{
									itemID = 268283,
									usagePct = 2.6,
								},
								{
									itemID = 193751,
									usagePct = 1.6,
								},
								{
									itemID = 239033,
									usagePct = 1.5,
								},
								{
									itemID = 273791,
									usagePct = 1.3,
								},
								{
									itemID = 277784,
									usagePct = 0.7,
								},
							},
							LEGS = {
								{
									itemID = 250005,
									usagePct = 29.6,
								},
								{
									itemID = 271509,
									usagePct = 23.8,
								},
								{
									itemID = 49817,
									usagePct = 11.4,
								},
								{
									itemID = 159329,
									usagePct = 7.9,
								},
								{
									itemID = 277783,
									usagePct = 3.6,
								},
								{
									itemID = 244574,
									usagePct = 3.5,
								},
								{
									itemID = 249312,
									usagePct = 3.1,
								},
								{
									itemID = 251198,
									usagePct = 3.0,
								},
							},
							MAINHAND = {
								{
									itemID = 237837,
									usagePct = 65.7,
								},
								{
									itemID = 249925,
									usagePct = 5.8,
								},
								{
									itemID = 258436,
									usagePct = 5.5,
								},
								{
									itemID = 249284,
									usagePct = 4.7,
								},
								{
									itemID = 49807,
									usagePct = 3.5,
								},
								{
									itemID = 275070,
									usagePct = 2.4,
								},
								{
									itemID = 159136,
									usagePct = 2.4,
								},
								{
									itemID = 251180,
									usagePct = 2.0,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 45.9,
								},
								{
									itemID = 251142,
									usagePct = 12.8,
								},
								{
									itemID = 251173,
									usagePct = 9.3,
								},
								{
									itemID = 251234,
									usagePct = 7.0,
								},
								{
									itemID = 273781,
									usagePct = 5.8,
								},
								{
									itemID = 249368,
									usagePct = 4.4,
								},
								{
									itemID = 272229,
									usagePct = 3.2,
								},
								{
									itemID = 250247,
									usagePct = 2.7,
								},
							},
							OFFHAND = {
								{
									itemID = 237837,
									usagePct = 31.8,
								},
								{
									itemID = 275070,
									usagePct = 10.5,
								},
								{
									itemID = 193756,
									usagePct = 7.3,
								},
								{
									itemID = 251128,
									usagePct = 6.6,
								},
								{
									itemID = 249925,
									usagePct = 6.1,
								},
								{
									itemID = 258436,
									usagePct = 5.8,
								},
								{
									itemID = 251180,
									usagePct = 5.4,
								},
								{
									itemID = 268204,
									usagePct = 4.2,
								},
							},
							SHOULDER = {
								{
									itemID = 250004,
									usagePct = 70.0,
								},
								{
									itemID = 271508,
									usagePct = 19.8,
								},
								{
									itemID = 273774,
									usagePct = 3.0,
								},
								{
									itemID = 251146,
									usagePct = 2.6,
								},
								{
									itemID = 272244,
									usagePct = 2.0,
								},
								{
									itemID = 251223,
									usagePct = 1.6,
								},
								{
									itemID = 277782,
									usagePct = 0.7,
								},
								{
									itemID = 257000,
									usagePct = 0.3,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 61.5,
								},
								{
									itemID = 249344,
									usagePct = 47.6,
								},
								{
									itemID = 250259,
									usagePct = 13.1,
								},
								{
									itemID = 250215,
									usagePct = 9.4,
								},
								{
									itemID = 273797,
									usagePct = 7.7,
								},
								{
									itemID = 250214,
									usagePct = 6.6,
								},
								{
									itemID = 273796,
									usagePct = 5.9,
								},
								{
									itemID = 193701,
									usagePct = 5.8,
								},
							},
							WAIST = {
								{
									itemID = 268286,
									usagePct = 45.6,
								},
								{
									itemID = 159317,
									usagePct = 9.4,
								},
								{
									itemID = 159301,
									usagePct = 8.2,
								},
								{
									itemID = 244573,
									usagePct = 8.1,
								},
								{
									itemID = 251235,
									usagePct = 7.8,
								},
								{
									itemID = 251189,
									usagePct = 6.1,
								},
								{
									itemID = 277781,
									usagePct = 3.2,
								},
								{
									itemID = 49806,
									usagePct = 2.2,
								},
							},
							WRIST = {
								{
									itemID = 244576,
									usagePct = 37.6,
								},
								{
									itemID = 250002,
									usagePct = 9.2,
								},
								{
									itemID = 249327,
									usagePct = 8.5,
								},
								{
									itemID = 251183,
									usagePct = 7.3,
								},
								{
									itemID = 50264,
									usagePct = 6.7,
								},
								{
									itemID = 251135,
									usagePct = 6.7,
								},
								{
									itemID = 193714,
									usagePct = 5.8,
								},
								{
									itemID = 277780,
									usagePct = 5.1,
								},
							},
						},
						gems = {
							{
								itemID = 240898,
								usagePct = 20.7,
							},
							{
								itemID = 240900,
								usagePct = 19.4,
							},
							{
								itemID = 240983,
								usagePct = 19.1,
							},
							{
								itemID = 240892,
								usagePct = 17.1,
							},
							{
								itemID = 240908,
								usagePct = 7.1,
							},
							{
								itemID = 240890,
								usagePct = 6.4,
							},
							{
								itemID = 240906,
								usagePct = 5.8,
							},
							{
								itemID = 240902,
								usagePct = 1.7,
							},
							{
								itemID = 240896,
								usagePct = 0.4,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 193914.9,
							metric = "dps",
							outOf = 40,
							rank = 6,
							sample = 300,
							top = 294147.9,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/subtlety-rogue",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/rogue/subtlety/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 73.4,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 20.6,
								stat = "HASTE",
								weight = 0.754,
							},
							{
								share = 25.9,
								stat = "CRIT",
								weight = 0.645,
							},
							{
								share = 2.0,
								stat = "VERSATILITY",
								weight = 0.12,
							},
						},
						talentBuilds = {
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbbjxMDjZmZmZGGbzYGbbzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #1",
								metrics = {
									["Avg dps"] = "185K",
									["Avg key"] = "+12.0",
									["Max dps"] = "254K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 23.8,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbbjxMDjZmZmZGGbzYGbLzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #2",
								metrics = {
									["Avg dps"] = "199K",
									["Avg key"] = "+12.1",
									["Max dps"] = "254K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 5.4,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbbjxMjZMzMzMzAbzYGbbzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #3",
								metrics = {
									["Avg dps"] = "180K",
									["Avg key"] = "+11.8",
									["Max dps"] = "260K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 5.2,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbbjxMDjZmZmZG8AbzYGbbzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #4",
								metrics = {
									["Avg dps"] = "173K",
									["Avg key"] = "+11.7",
									["Max dps"] = "225K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 4.6,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbbjxMDDzMzMzw8AbzYGbbzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #5",
								metrics = {
									["Avg dps"] = "196K",
									["Avg key"] = "+12.1",
									["Max dps"] = "250K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 2.7,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbbjxMjZYmZmZG8AbzYGbbzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #6",
								metrics = {
									["Avg dps"] = "181K",
									["Avg key"] = "+11.9",
									["Max dps"] = "208K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 2.6,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbLjxMMjZmZmZG8AbzYGbbzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #7",
								metrics = {
									["Avg dps"] = "187K",
									["Avg key"] = "+12.0",
									["Max dps"] = "215K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 2.3,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbLjxMMjZmZmZGGbzYGbbzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #8",
								metrics = {
									["Avg dps"] = "183K",
									["Avg key"] = "+11.6",
									["Max dps"] = "217K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 1.7,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbbjxMjZMzMzMzAbzYGbLzMzMzMjBjZ2GAAAAGMmFzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #9",
								metrics = {
									["Avg dps"] = "192K",
									["Avg key"] = "+11.7",
									["Max dps"] = "210K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 1.6,
							},
							{
								importString = "CUQAAAAAAAAAAAAAAAAAAAAAAAgx2MAAAAAwsMGLTMbbjxMDjZmZmZGGbzYGbbzMzMzMjBjZ2GAAAAGMmNzyADYBsMMBmFMDzMAzYA",
								label = "Deathstalker #10",
								metrics = {
									["Avg dps"] = "173K",
									["Avg key"] = "+11.6",
									["Max dps"] = "219K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/subtlety-rogue",
								usagePct = 1.3,
							},
						},
					},
					name = "Deathstalker",
				},
			},
			name = "Subtlety",
		},
	},
})

-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

ns.RegisterClassData("PALADIN", {
	specs = {
		[65] = {
			heroes = {
				[49] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241322,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241288,
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
								itemID = 275264,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 275265,
								primary = false,
							},
							{
								category = "FOOD",
								itemID = 242299,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 83.1,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 13.6,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 1.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 55.4,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 32.2,
							},
							{
								itemID = 243949,
								slot = "HEAD",
								usagePct = 5.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 60.0,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 32.2,
							},
							{
								itemID = 244020,
								slot = "SHOULDER",
								usagePct = 2.2,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 57.8,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 41.8,
							},
							{
								itemID = 244002,
								slot = "CHEST",
								usagePct = 0.4,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 51.2,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 37.0,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 7.7,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 59.0,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 35.0,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 4.8,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 54.6,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 19.8,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 7.1,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 251190,
									usagePct = 20.3,
								},
								{
									itemID = 239656,
									usagePct = 16.5,
								},
								{
									itemID = 193763,
									usagePct = 16.1,
								},
								{
									itemID = 251132,
									usagePct = 11.3,
								},
								{
									itemID = 159288,
									usagePct = 7.8,
								},
								{
									itemID = 249956,
									usagePct = 2.9,
								},
								{
									itemID = 272227,
									usagePct = 2.8,
								},
								{
									itemID = 279217,
									usagePct = 2.6,
								},
							},
							CHEST = {
								{
									itemID = 249964,
									usagePct = 50.5,
								},
								{
									itemID = 271468,
									usagePct = 15.1,
								},
								{
									itemID = 193753,
									usagePct = 6.8,
								},
								{
									itemID = 239036,
									usagePct = 6.8,
								},
								{
									itemID = 251151,
									usagePct = 5.1,
								},
								{
									itemID = 251193,
									usagePct = 4.4,
								},
								{
									itemID = 273787,
									usagePct = 3.9,
								},
								{
									itemID = 272255,
									usagePct = 2.2,
								},
							},
							FEET = {
								{
									itemID = 193728,
									usagePct = 18.9,
								},
								{
									itemID = 273777,
									usagePct = 12.8,
								},
								{
									itemID = 159412,
									usagePct = 11.3,
								},
								{
									itemID = 249963,
									usagePct = 8.9,
								},
								{
									itemID = 272256,
									usagePct = 7.7,
								},
								{
									itemID = 277770,
									usagePct = 7.1,
								},
								{
									itemID = 251169,
									usagePct = 5.2,
								},
								{
									itemID = 249332,
									usagePct = 5.1,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 34.4,
								},
								{
									itemID = 273792,
									usagePct = 18.6,
								},
								{
									itemID = 252258,
									usagePct = 18.3,
								},
								{
									itemID = 251136,
									usagePct = 15.1,
								},
								{
									itemID = 159459,
									usagePct = 14.9,
								},
								{
									itemID = 251148,
									usagePct = 10.4,
								},
								{
									itemID = 162544,
									usagePct = 9.4,
								},
								{
									itemID = 158366,
									usagePct = 6.5,
								},
							},
							HANDS = {
								{
									itemID = 249962,
									usagePct = 42.8,
								},
								{
									itemID = 271466,
									usagePct = 12.5,
								},
								{
									itemID = 251221,
									usagePct = 12.5,
								},
								{
									itemID = 251214,
									usagePct = 8.3,
								},
								{
									itemID = 159413,
									usagePct = 7.8,
								},
								{
									itemID = 251197,
									usagePct = 4.8,
								},
								{
									itemID = 272257,
									usagePct = 3.0,
								},
								{
									itemID = 277769,
									usagePct = 2.6,
								},
							},
							HEAD = {
								{
									itemID = 249961,
									usagePct = 56.0,
								},
								{
									itemID = 271465,
									usagePct = 13.1,
								},
								{
									itemID = 251229,
									usagePct = 8.9,
								},
								{
									itemID = 251126,
									usagePct = 8.3,
								},
								{
									itemID = 239050,
									usagePct = 5.1,
								},
								{
									itemID = 277768,
									usagePct = 3.3,
								},
								{
									itemID = 266432,
									usagePct = 2.2,
								},
								{
									itemID = 272258,
									usagePct = 1.3,
								},
							},
							LEGS = {
								{
									itemID = 249960,
									usagePct = 44.0,
								},
								{
									itemID = 271464,
									usagePct = 11.9,
								},
								{
									itemID = 273776,
									usagePct = 11.5,
								},
								{
									itemID = 159435,
									usagePct = 7.1,
								},
								{
									itemID = 251182,
									usagePct = 5.5,
								},
								{
									itemID = 277767,
									usagePct = 4.5,
								},
								{
									itemID = 249915,
									usagePct = 2.6,
								},
								{
									itemID = 272259,
									usagePct = 2.6,
								},
							},
							MAINHAND = {
								{
									itemID = 237843,
									usagePct = 48.8,
								},
								{
									itemID = 193710,
									usagePct = 11.5,
								},
								{
									itemID = 160216,
									usagePct = 8.0,
								},
								{
									itemID = 158369,
									usagePct = 5.5,
								},
								{
									itemID = 273780,
									usagePct = 4.4,
								},
								{
									itemID = 258218,
									usagePct = 4.2,
								},
								{
									itemID = 249294,
									usagePct = 3.5,
								},
								{
									itemID = 272270,
									usagePct = 3.0,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 29.5,
								},
								{
									itemID = 251142,
									usagePct = 13.2,
								},
								{
									itemID = 251234,
									usagePct = 13.1,
								},
								{
									itemID = 273781,
									usagePct = 10.7,
								},
								{
									itemID = 251173,
									usagePct = 10.0,
								},
								{
									itemID = 272229,
									usagePct = 3.9,
								},
								{
									itemID = 272228,
									usagePct = 3.5,
								},
								{
									itemID = 251096,
									usagePct = 2.5,
								},
							},
							OFFHAND = {
								{
									itemID = 237831,
									usagePct = 17.9,
								},
								{
									itemID = 251150,
									usagePct = 17.7,
								},
								{
									itemID = 193754,
									usagePct = 10.2,
								},
								{
									itemID = 251196,
									usagePct = 9.0,
								},
								{
									itemID = 258049,
									usagePct = 9.0,
								},
								{
									itemID = 159664,
									usagePct = 8.0,
								},
								{
									itemID = 258531,
									usagePct = 6.5,
								},
								{
									itemID = 249275,
									usagePct = 4.5,
								},
							},
							SHOULDER = {
								{
									itemID = 249959,
									usagePct = 48.9,
								},
								{
									itemID = 271463,
									usagePct = 14.1,
								},
								{
									itemID = 239037,
									usagePct = 10.0,
								},
								{
									itemID = 251138,
									usagePct = 6.2,
								},
								{
									itemID = 277766,
									usagePct = 6.1,
								},
								{
									itemID = 239051,
									usagePct = 4.1,
								},
								{
									itemID = 272260,
									usagePct = 2.0,
								},
								{
									itemID = 251164,
									usagePct = 2.0,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 30.5,
								},
								{
									itemID = 268292,
									usagePct = 17.0,
								},
								{
									itemID = 273796,
									usagePct = 11.6,
								},
								{
									itemID = 250215,
									usagePct = 11.3,
								},
								{
									itemID = 250256,
									usagePct = 9.9,
								},
								{
									itemID = 264507,
									usagePct = 9.0,
								},
								{
									itemID = 250214,
									usagePct = 8.9,
								},
								{
									itemID = 249808,
									usagePct = 8.6,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 20.5,
								},
								{
									itemID = 159418,
									usagePct = 16.3,
								},
								{
									itemID = 251144,
									usagePct = 14.4,
								},
								{
									itemID = 249958,
									usagePct = 11.3,
								},
								{
									itemID = 277765,
									usagePct = 7.8,
								},
								{
									itemID = 159442,
									usagePct = 6.8,
								},
								{
									itemID = 272261,
									usagePct = 4.6,
								},
								{
									itemID = 237830,
									usagePct = 3.2,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 27.3,
								},
								{
									itemID = 251133,
									usagePct = 15.8,
								},
								{
									itemID = 159409,
									usagePct = 10.6,
								},
								{
									itemID = 159425,
									usagePct = 9.9,
								},
								{
									itemID = 277764,
									usagePct = 6.7,
								},
								{
									itemID = 151328,
									usagePct = 4.2,
								},
								{
									itemID = 276641,
									usagePct = 4.1,
								},
								{
									itemID = 249957,
									usagePct = 3.6,
								},
							},
						},
						gems = {
							{
								itemID = 240900,
								usagePct = 28.7,
							},
							{
								itemID = 240983,
								usagePct = 15.3,
							},
							{
								itemID = 240892,
								usagePct = 9.6,
							},
							{
								itemID = 240898,
								usagePct = 6.9,
							},
							{
								itemID = 240890,
								usagePct = 6.8,
							},
							{
								itemID = 240908,
								usagePct = 5.2,
							},
							{
								itemID = 240969,
								usagePct = 4.8,
							},
							{
								itemID = 240894,
								usagePct = 4.2,
							},
							{
								itemID = 240906,
								usagePct = 3.4,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 27826.9,
							metric = "dps",
							outOf = 40,
							rank = 37,
							sample = 300,
							top = 72613.8,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/holy-paladin",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/paladin/holy/enchants-gems-pve-healer",
							},
						},
						statPriority = {
							{
								share = 59.8,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 26.0,
								stat = "HASTE",
								weight = 0.872,
							},
							{
								share = 18.9,
								stat = "CRIT",
								weight = 0.428,
							},
							{
								share = 2.9,
								stat = "VERSATILITY",
								weight = 0.174,
							},
						},
						talentBuilds = {
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAALAwMAAw2AmZWmZmlZMzMsY2MziZaiZxYmZYMbZAYAYDsZ2MzAAAAzMLbLWmZYjFmBbAzwAAmZAYGjRDA",
								label = "Lightsmith #1",
								metrics = {
									["Avg key"] = "+12.2",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 1.3,
							},
						},
					},
					name = "Lightsmith",
				},
				[50] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241322,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241288,
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
								itemID = 275264,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 275265,
								primary = false,
							},
							{
								category = "FOOD",
								itemID = 242299,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 83.1,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 13.6,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 1.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 55.4,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 32.2,
							},
							{
								itemID = 243949,
								slot = "HEAD",
								usagePct = 5.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 60.0,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 32.2,
							},
							{
								itemID = 244020,
								slot = "SHOULDER",
								usagePct = 2.2,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 57.8,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 41.8,
							},
							{
								itemID = 244002,
								slot = "CHEST",
								usagePct = 0.4,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 51.2,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 37.0,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 7.7,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 59.0,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 35.0,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 4.8,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 54.6,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 19.8,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 7.1,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 251190,
									usagePct = 20.3,
								},
								{
									itemID = 239656,
									usagePct = 16.5,
								},
								{
									itemID = 193763,
									usagePct = 16.1,
								},
								{
									itemID = 251132,
									usagePct = 11.3,
								},
								{
									itemID = 159288,
									usagePct = 7.8,
								},
								{
									itemID = 249956,
									usagePct = 2.9,
								},
								{
									itemID = 272227,
									usagePct = 2.8,
								},
								{
									itemID = 279217,
									usagePct = 2.6,
								},
							},
							CHEST = {
								{
									itemID = 249964,
									usagePct = 50.5,
								},
								{
									itemID = 271468,
									usagePct = 15.1,
								},
								{
									itemID = 193753,
									usagePct = 6.8,
								},
								{
									itemID = 239036,
									usagePct = 6.8,
								},
								{
									itemID = 251151,
									usagePct = 5.1,
								},
								{
									itemID = 251193,
									usagePct = 4.4,
								},
								{
									itemID = 273787,
									usagePct = 3.9,
								},
								{
									itemID = 272255,
									usagePct = 2.2,
								},
							},
							FEET = {
								{
									itemID = 193728,
									usagePct = 18.9,
								},
								{
									itemID = 273777,
									usagePct = 12.8,
								},
								{
									itemID = 159412,
									usagePct = 11.3,
								},
								{
									itemID = 249963,
									usagePct = 8.9,
								},
								{
									itemID = 272256,
									usagePct = 7.7,
								},
								{
									itemID = 277770,
									usagePct = 7.1,
								},
								{
									itemID = 251169,
									usagePct = 5.2,
								},
								{
									itemID = 249332,
									usagePct = 5.1,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 34.4,
								},
								{
									itemID = 273792,
									usagePct = 18.6,
								},
								{
									itemID = 252258,
									usagePct = 18.3,
								},
								{
									itemID = 251136,
									usagePct = 15.1,
								},
								{
									itemID = 159459,
									usagePct = 14.9,
								},
								{
									itemID = 251148,
									usagePct = 10.4,
								},
								{
									itemID = 162544,
									usagePct = 9.4,
								},
								{
									itemID = 158366,
									usagePct = 6.5,
								},
							},
							HANDS = {
								{
									itemID = 249962,
									usagePct = 42.8,
								},
								{
									itemID = 271466,
									usagePct = 12.5,
								},
								{
									itemID = 251221,
									usagePct = 12.5,
								},
								{
									itemID = 251214,
									usagePct = 8.3,
								},
								{
									itemID = 159413,
									usagePct = 7.8,
								},
								{
									itemID = 251197,
									usagePct = 4.8,
								},
								{
									itemID = 272257,
									usagePct = 3.0,
								},
								{
									itemID = 277769,
									usagePct = 2.6,
								},
							},
							HEAD = {
								{
									itemID = 249961,
									usagePct = 56.0,
								},
								{
									itemID = 271465,
									usagePct = 13.1,
								},
								{
									itemID = 251229,
									usagePct = 8.9,
								},
								{
									itemID = 251126,
									usagePct = 8.3,
								},
								{
									itemID = 239050,
									usagePct = 5.1,
								},
								{
									itemID = 277768,
									usagePct = 3.3,
								},
								{
									itemID = 266432,
									usagePct = 2.2,
								},
								{
									itemID = 272258,
									usagePct = 1.3,
								},
							},
							LEGS = {
								{
									itemID = 249960,
									usagePct = 44.0,
								},
								{
									itemID = 271464,
									usagePct = 11.9,
								},
								{
									itemID = 273776,
									usagePct = 11.5,
								},
								{
									itemID = 159435,
									usagePct = 7.1,
								},
								{
									itemID = 251182,
									usagePct = 5.5,
								},
								{
									itemID = 277767,
									usagePct = 4.5,
								},
								{
									itemID = 249915,
									usagePct = 2.6,
								},
								{
									itemID = 272259,
									usagePct = 2.6,
								},
							},
							MAINHAND = {
								{
									itemID = 237843,
									usagePct = 48.8,
								},
								{
									itemID = 193710,
									usagePct = 11.5,
								},
								{
									itemID = 160216,
									usagePct = 8.0,
								},
								{
									itemID = 158369,
									usagePct = 5.5,
								},
								{
									itemID = 273780,
									usagePct = 4.4,
								},
								{
									itemID = 258218,
									usagePct = 4.2,
								},
								{
									itemID = 249294,
									usagePct = 3.5,
								},
								{
									itemID = 272270,
									usagePct = 3.0,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 29.5,
								},
								{
									itemID = 251142,
									usagePct = 13.2,
								},
								{
									itemID = 251234,
									usagePct = 13.1,
								},
								{
									itemID = 273781,
									usagePct = 10.7,
								},
								{
									itemID = 251173,
									usagePct = 10.0,
								},
								{
									itemID = 272229,
									usagePct = 3.9,
								},
								{
									itemID = 272228,
									usagePct = 3.5,
								},
								{
									itemID = 251096,
									usagePct = 2.5,
								},
							},
							OFFHAND = {
								{
									itemID = 237831,
									usagePct = 17.9,
								},
								{
									itemID = 251150,
									usagePct = 17.7,
								},
								{
									itemID = 193754,
									usagePct = 10.2,
								},
								{
									itemID = 251196,
									usagePct = 9.0,
								},
								{
									itemID = 258049,
									usagePct = 9.0,
								},
								{
									itemID = 159664,
									usagePct = 8.0,
								},
								{
									itemID = 258531,
									usagePct = 6.5,
								},
								{
									itemID = 249275,
									usagePct = 4.5,
								},
							},
							SHOULDER = {
								{
									itemID = 249959,
									usagePct = 48.9,
								},
								{
									itemID = 271463,
									usagePct = 14.1,
								},
								{
									itemID = 239037,
									usagePct = 10.0,
								},
								{
									itemID = 251138,
									usagePct = 6.2,
								},
								{
									itemID = 277766,
									usagePct = 6.1,
								},
								{
									itemID = 239051,
									usagePct = 4.1,
								},
								{
									itemID = 272260,
									usagePct = 2.0,
								},
								{
									itemID = 251164,
									usagePct = 2.0,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 30.5,
								},
								{
									itemID = 268292,
									usagePct = 17.0,
								},
								{
									itemID = 273796,
									usagePct = 11.6,
								},
								{
									itemID = 250215,
									usagePct = 11.3,
								},
								{
									itemID = 250256,
									usagePct = 9.9,
								},
								{
									itemID = 264507,
									usagePct = 9.0,
								},
								{
									itemID = 250214,
									usagePct = 8.9,
								},
								{
									itemID = 249808,
									usagePct = 8.6,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 20.5,
								},
								{
									itemID = 159418,
									usagePct = 16.3,
								},
								{
									itemID = 251144,
									usagePct = 14.4,
								},
								{
									itemID = 249958,
									usagePct = 11.3,
								},
								{
									itemID = 277765,
									usagePct = 7.8,
								},
								{
									itemID = 159442,
									usagePct = 6.8,
								},
								{
									itemID = 272261,
									usagePct = 4.6,
								},
								{
									itemID = 237830,
									usagePct = 3.2,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 27.3,
								},
								{
									itemID = 251133,
									usagePct = 15.8,
								},
								{
									itemID = 159409,
									usagePct = 10.6,
								},
								{
									itemID = 159425,
									usagePct = 9.9,
								},
								{
									itemID = 277764,
									usagePct = 6.7,
								},
								{
									itemID = 151328,
									usagePct = 4.2,
								},
								{
									itemID = 276641,
									usagePct = 4.1,
								},
								{
									itemID = 249957,
									usagePct = 3.6,
								},
							},
						},
						gems = {
							{
								itemID = 240900,
								usagePct = 28.7,
							},
							{
								itemID = 240983,
								usagePct = 15.3,
							},
							{
								itemID = 240892,
								usagePct = 9.6,
							},
							{
								itemID = 240898,
								usagePct = 6.9,
							},
							{
								itemID = 240890,
								usagePct = 6.8,
							},
							{
								itemID = 240908,
								usagePct = 5.2,
							},
							{
								itemID = 240969,
								usagePct = 4.8,
							},
							{
								itemID = 240894,
								usagePct = 4.2,
							},
							{
								itemID = 240906,
								usagePct = 3.4,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 27826.9,
							metric = "dps",
							outOf = 40,
							rank = 37,
							sample = 300,
							top = 72613.8,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/holy-paladin",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/paladin/holy/enchants-gems-pve-healer",
							},
						},
						statPriority = {
							{
								share = 59.8,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 26.0,
								stat = "HASTE",
								weight = 0.872,
							},
							{
								share = 18.9,
								stat = "CRIT",
								weight = 0.428,
							},
							{
								share = 2.9,
								stat = "VERSATILITY",
								weight = 0.174,
							},
						},
						talentBuilds = {
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAALAwMAAD2GzMzMjZmZBmZYZsZmFjmYYMzMMmtMAMAsB2YZmZmlZbmZ2aAAAAWAGsZgZMDzAAYmhZMGGA",
								label = "Herald of the Sun #1",
								metrics = {
									["Avg key"] = "+12.3",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 18.9,
							},
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAALAwMAAD2GzMzMjZmZBmZYZsZmFjmYYMzMMmtMAMAsB2YbmZmlZbmZ2aAAAAWAGsZgZMDzAAYmhZMGGA",
								label = "Herald of the Sun #2",
								metrics = {
									["Avg key"] = "+12.3",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 8.1,
							},
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAALAwMAAD2mZGmZWmZsAzMsM2mZWMaihxMzwY2yAwAwGYjlZmZWmtZmZrBAAAYhNMYzMYGDMAAmZYGjhB",
								label = "Herald of the Sun #3",
								metrics = {
									["Avg key"] = "+12.2",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 4.8,
							},
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAALAwMAAD2mZGmZWmZsAzMsM2mZWMaihxMzwY2yAwAwGYjtZmZWmtZmZrBAAAYhNMYzMYGDMAAmZYGjhB",
								label = "Herald of the Sun #4",
								metrics = {
									["Avg key"] = "+12.6",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 2.6,
							},
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAgZBAmBAA2GzMzMjZmZBmZYZsZmFjmYWmxMzwY2yAwAwGYjlZmZWmtZmZrBAAAYBMD2AGGMDAgZGmxYYA",
								label = "Herald of the Sun #5",
								metrics = {
									["Avg key"] = "+12.0",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 2.2,
							},
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAALAwMAAD2GzwMzyMjFGzMsM2mZWMaiZxYmZYMbZAYAYDsxyMzMLz2Mzs0AAAAswGgNzgZ2MYAAMzgxYYA",
								label = "Herald of the Sun #6",
								metrics = {
									["Avg key"] = "+12.8",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 1.6,
							},
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYBAMDAAsMmhZGzMzCjx4BWGbzMLmpJmlZMzMjhZLDADAbgNWmZmZZ2mZmtGAAAgF2YgNgZ2AAAMzwMGDD",
								label = "Herald of the Sun #7",
								metrics = {
									["Avg key"] = "+12.6",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 1.0,
							},
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYBAMDAwglxMzMzYmZWgxwyYbmZxMNxwYmZYY2yAwAwGYjlZmZWmtZmZrBAAAYhNMYzAzYGAAwMDzYMMA",
								label = "Herald of the Sun #8",
								metrics = {
									["Avg key"] = "+11.7",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 1.0,
							},
							{
								importString = "CEEAAAAAAAAAAAAAAAAAAAAAAAAAAYBAMDAAsNzMzYGzMWMmZGWGMziZaihxMzwwslBgBMsB2YZGzsMbzMzWDAAAwCAsZYMjZYGAAzMMjxwA",
								label = "Herald of the Sun #9",
								metrics = {
									["Avg key"] = "+11.5",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-paladin",
								usagePct = 0.9,
							},
						},
					},
					name = "Herald of the Sun",
				},
			},
			name = "Holy",
		},
		[66] = {
			heroes = {
				[48] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241292,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241308,
								primary = false,
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
								usagePct = 71.8,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 23.0,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 3.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 67.9,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 12.0,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 9.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 68.1,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 16.6,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 9.9,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 84.9,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 13.8,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 1.2,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 88.5,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 6.8,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 1.9,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 61.1,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 21.2,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 17.5,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 45.3,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 29.2,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 11.5,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 193763,
									usagePct = 21.5,
								},
								{
									itemID = 239656,
									usagePct = 13.0,
								},
								{
									itemID = 251132,
									usagePct = 12.8,
								},
								{
									itemID = 251190,
									usagePct = 11.0,
								},
								{
									itemID = 159288,
									usagePct = 5.9,
								},
								{
									itemID = 272225,
									usagePct = 4.8,
								},
								{
									itemID = 272227,
									usagePct = 4.2,
								},
								{
									itemID = 272226,
									usagePct = 4.1,
								},
							},
							CHEST = {
								{
									itemID = 249964,
									usagePct = 44.7,
								},
								{
									itemID = 271468,
									usagePct = 18.2,
								},
								{
									itemID = 251193,
									usagePct = 8.3,
								},
								{
									itemID = 273787,
									usagePct = 8.3,
								},
								{
									itemID = 193753,
									usagePct = 5.7,
								},
								{
									itemID = 239036,
									usagePct = 5.3,
								},
								{
									itemID = 251151,
									usagePct = 4.1,
								},
								{
									itemID = 272255,
									usagePct = 2.6,
								},
							},
							FEET = {
								{
									itemID = 193728,
									usagePct = 19.1,
								},
								{
									itemID = 273777,
									usagePct = 15.8,
								},
								{
									itemID = 159412,
									usagePct = 14.3,
								},
								{
									itemID = 249963,
									usagePct = 12.3,
								},
								{
									itemID = 237828,
									usagePct = 8.1,
								},
								{
									itemID = 272256,
									usagePct = 6.5,
								},
								{
									itemID = 277770,
									usagePct = 5.1,
								},
								{
									itemID = 249381,
									usagePct = 4.2,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 26.1,
								},
								{
									itemID = 273792,
									usagePct = 19.6,
								},
								{
									itemID = 251217,
									usagePct = 17.0,
								},
								{
									itemID = 49812,
									usagePct = 16.3,
								},
								{
									itemID = 251136,
									usagePct = 14.3,
								},
								{
									itemID = 159459,
									usagePct = 13.6,
								},
								{
									itemID = 252258,
									usagePct = 12.3,
								},
								{
									itemID = 158366,
									usagePct = 10.5,
								},
							},
							HANDS = {
								{
									itemID = 249962,
									usagePct = 37.7,
								},
								{
									itemID = 271466,
									usagePct = 15.2,
								},
								{
									itemID = 251214,
									usagePct = 11.4,
								},
								{
									itemID = 251221,
									usagePct = 9.5,
								},
								{
									itemID = 159413,
									usagePct = 7.1,
								},
								{
									itemID = 151332,
									usagePct = 5.6,
								},
								{
									itemID = 272257,
									usagePct = 4.1,
								},
								{
									itemID = 251197,
									usagePct = 3.5,
								},
							},
							HEAD = {
								{
									itemID = 249961,
									usagePct = 55.3,
								},
								{
									itemID = 271465,
									usagePct = 15.8,
								},
								{
									itemID = 251126,
									usagePct = 8.6,
								},
								{
									itemID = 251229,
									usagePct = 6.0,
								},
								{
									itemID = 239050,
									usagePct = 4.4,
								},
								{
									itemID = 272258,
									usagePct = 3.5,
								},
								{
									itemID = 277768,
									usagePct = 3.5,
								},
								{
									itemID = 49819,
									usagePct = 1.2,
								},
							},
							LEGS = {
								{
									itemID = 249960,
									usagePct = 55.4,
								},
								{
									itemID = 271464,
									usagePct = 15.5,
								},
								{
									itemID = 273776,
									usagePct = 9.5,
								},
								{
									itemID = 251182,
									usagePct = 6.9,
								},
								{
									itemID = 159435,
									usagePct = 6.0,
								},
								{
									itemID = 272259,
									usagePct = 2.1,
								},
								{
									itemID = 277767,
									usagePct = 1.8,
								},
								{
									itemID = 268224,
									usagePct = 1.2,
								},
							},
							MAINHAND = {
								{
									itemID = 237839,
									usagePct = 33.0,
								},
								{
									itemID = 251218,
									usagePct = 14.0,
								},
								{
									itemID = 158373,
									usagePct = 7.8,
								},
								{
									itemID = 251195,
									usagePct = 7.5,
								},
								{
									itemID = 258525,
									usagePct = 4.4,
								},
								{
									itemID = 272283,
									usagePct = 3.3,
								},
								{
									itemID = 251088,
									usagePct = 3.0,
								},
								{
									itemID = 268208,
									usagePct = 3.0,
								},
							},
							NECK = {
								{
									itemID = 273781,
									usagePct = 22.0,
								},
								{
									itemID = 251173,
									usagePct = 16.4,
								},
								{
									itemID = 268291,
									usagePct = 15.4,
								},
								{
									itemID = 50228,
									usagePct = 13.1,
								},
								{
									itemID = 251234,
									usagePct = 11.4,
								},
								{
									itemID = 251142,
									usagePct = 7.1,
								},
								{
									itemID = 272229,
									usagePct = 2.9,
								},
								{
									itemID = 251096,
									usagePct = 2.3,
								},
							},
							OFFHAND = {
								{
									itemID = 237831,
									usagePct = 40.5,
								},
								{
									itemID = 193754,
									usagePct = 13.3,
								},
								{
									itemID = 159664,
									usagePct = 8.3,
								},
								{
									itemID = 249275,
									usagePct = 6.9,
								},
								{
									itemID = 251196,
									usagePct = 6.9,
								},
								{
									itemID = 251150,
									usagePct = 5.6,
								},
								{
									itemID = 258531,
									usagePct = 3.3,
								},
								{
									itemID = 251202,
									usagePct = 3.3,
								},
							},
							SHOULDER = {
								{
									itemID = 249959,
									usagePct = 52.3,
								},
								{
									itemID = 271463,
									usagePct = 16.7,
								},
								{
									itemID = 251138,
									usagePct = 7.5,
								},
								{
									itemID = 239037,
									usagePct = 7.1,
								},
								{
									itemID = 239051,
									usagePct = 6.3,
								},
								{
									itemID = 272260,
									usagePct = 4.2,
								},
								{
									itemID = 277766,
									usagePct = 2.6,
								},
								{
									itemID = 249313,
									usagePct = 0.8,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 21.7,
								},
								{
									itemID = 273796,
									usagePct = 15.1,
								},
								{
									itemID = 250228,
									usagePct = 14.0,
								},
								{
									itemID = 249342,
									usagePct = 13.7,
								},
								{
									itemID = 252420,
									usagePct = 10.2,
								},
								{
									itemID = 250229,
									usagePct = 9.3,
								},
								{
									itemID = 193762,
									usagePct = 9.2,
								},
								{
									itemID = 268292,
									usagePct = 9.0,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 25.2,
								},
								{
									itemID = 251144,
									usagePct = 14.6,
								},
								{
									itemID = 159442,
									usagePct = 10.8,
								},
								{
									itemID = 49808,
									usagePct = 10.5,
								},
								{
									itemID = 159418,
									usagePct = 9.3,
								},
								{
									itemID = 277765,
									usagePct = 7.1,
								},
								{
									itemID = 249958,
									usagePct = 5.7,
								},
								{
									itemID = 272261,
									usagePct = 4.1,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 25.8,
								},
								{
									itemID = 251133,
									usagePct = 19.4,
								},
								{
									itemID = 159409,
									usagePct = 13.7,
								},
								{
									itemID = 159425,
									usagePct = 9.5,
								},
								{
									itemID = 249957,
									usagePct = 7.1,
								},
								{
									itemID = 277764,
									usagePct = 5.0,
								},
								{
									itemID = 151328,
									usagePct = 4.1,
								},
								{
									itemID = 272262,
									usagePct = 4.1,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 23.3,
							},
							{
								itemID = 240890,
								usagePct = 18.8,
							},
							{
								itemID = 240983,
								usagePct = 18.1,
							},
							{
								itemID = 240908,
								usagePct = 8.3,
							},
							{
								itemID = 240894,
								usagePct = 6.4,
							},
							{
								itemID = 240898,
								usagePct = 4.4,
							},
							{
								itemID = 240892,
								usagePct = 3.2,
							},
							{
								itemID = 240900,
								usagePct = 2.7,
							},
							{
								itemID = 240910,
								usagePct = 2.6,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 95079.3,
							metric = "dps",
							outOf = 40,
							rank = 32,
							sample = 300,
							top = 167812.7,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/protection-paladin",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/paladin/protection/enchants-gems-pve-tank",
							},
						},
						statPriority = {
							{
								share = 27.6,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 25.6,
								stat = "CRIT",
								weight = 0.803,
							},
							{
								share = 23.8,
								stat = "MASTERY",
								weight = 0.583,
							},
							{
								share = 4.0,
								stat = "VERSATILITY",
								weight = 0.251,
							},
						},
						talentBuilds = {
							{
								importString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZeAzyYGzYmZWWGjZZWmlZMAADAAAAAAaamhZMzwY2aDADMgZw2AAAzMtNzsMDAwmlFMAgZYMAALzAmZGwYB",
								label = "Templar #1",
								metrics = {
									["Avg dps"] = "101K",
									["Avg key"] = "+12.0",
									["Max dps"] = "115K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-paladin",
								usagePct = 3.5,
							},
						},
					},
					name = "Templar",
				},
				[49] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241292,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241308,
								primary = false,
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
								usagePct = 71.8,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 23.0,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 3.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 67.9,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 12.0,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 9.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 68.1,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 16.6,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 9.9,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 84.9,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 13.8,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 1.2,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 88.5,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 6.8,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 1.9,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 61.1,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 21.2,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 17.5,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 45.3,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 29.2,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 11.5,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 193763,
									usagePct = 21.5,
								},
								{
									itemID = 239656,
									usagePct = 13.0,
								},
								{
									itemID = 251132,
									usagePct = 12.8,
								},
								{
									itemID = 251190,
									usagePct = 11.0,
								},
								{
									itemID = 159288,
									usagePct = 5.9,
								},
								{
									itemID = 272225,
									usagePct = 4.8,
								},
								{
									itemID = 272227,
									usagePct = 4.2,
								},
								{
									itemID = 272226,
									usagePct = 4.1,
								},
							},
							CHEST = {
								{
									itemID = 249964,
									usagePct = 44.7,
								},
								{
									itemID = 271468,
									usagePct = 18.2,
								},
								{
									itemID = 251193,
									usagePct = 8.3,
								},
								{
									itemID = 273787,
									usagePct = 8.3,
								},
								{
									itemID = 193753,
									usagePct = 5.7,
								},
								{
									itemID = 239036,
									usagePct = 5.3,
								},
								{
									itemID = 251151,
									usagePct = 4.1,
								},
								{
									itemID = 272255,
									usagePct = 2.6,
								},
							},
							FEET = {
								{
									itemID = 193728,
									usagePct = 19.1,
								},
								{
									itemID = 273777,
									usagePct = 15.8,
								},
								{
									itemID = 159412,
									usagePct = 14.3,
								},
								{
									itemID = 249963,
									usagePct = 12.3,
								},
								{
									itemID = 237828,
									usagePct = 8.1,
								},
								{
									itemID = 272256,
									usagePct = 6.5,
								},
								{
									itemID = 277770,
									usagePct = 5.1,
								},
								{
									itemID = 249381,
									usagePct = 4.2,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 26.1,
								},
								{
									itemID = 273792,
									usagePct = 19.6,
								},
								{
									itemID = 251217,
									usagePct = 17.0,
								},
								{
									itemID = 49812,
									usagePct = 16.3,
								},
								{
									itemID = 251136,
									usagePct = 14.3,
								},
								{
									itemID = 159459,
									usagePct = 13.6,
								},
								{
									itemID = 252258,
									usagePct = 12.3,
								},
								{
									itemID = 158366,
									usagePct = 10.5,
								},
							},
							HANDS = {
								{
									itemID = 249962,
									usagePct = 37.7,
								},
								{
									itemID = 271466,
									usagePct = 15.2,
								},
								{
									itemID = 251214,
									usagePct = 11.4,
								},
								{
									itemID = 251221,
									usagePct = 9.5,
								},
								{
									itemID = 159413,
									usagePct = 7.1,
								},
								{
									itemID = 151332,
									usagePct = 5.6,
								},
								{
									itemID = 272257,
									usagePct = 4.1,
								},
								{
									itemID = 251197,
									usagePct = 3.5,
								},
							},
							HEAD = {
								{
									itemID = 249961,
									usagePct = 55.3,
								},
								{
									itemID = 271465,
									usagePct = 15.8,
								},
								{
									itemID = 251126,
									usagePct = 8.6,
								},
								{
									itemID = 251229,
									usagePct = 6.0,
								},
								{
									itemID = 239050,
									usagePct = 4.4,
								},
								{
									itemID = 272258,
									usagePct = 3.5,
								},
								{
									itemID = 277768,
									usagePct = 3.5,
								},
								{
									itemID = 49819,
									usagePct = 1.2,
								},
							},
							LEGS = {
								{
									itemID = 249960,
									usagePct = 55.4,
								},
								{
									itemID = 271464,
									usagePct = 15.5,
								},
								{
									itemID = 273776,
									usagePct = 9.5,
								},
								{
									itemID = 251182,
									usagePct = 6.9,
								},
								{
									itemID = 159435,
									usagePct = 6.0,
								},
								{
									itemID = 272259,
									usagePct = 2.1,
								},
								{
									itemID = 277767,
									usagePct = 1.8,
								},
								{
									itemID = 268224,
									usagePct = 1.2,
								},
							},
							MAINHAND = {
								{
									itemID = 237839,
									usagePct = 33.0,
								},
								{
									itemID = 251218,
									usagePct = 14.0,
								},
								{
									itemID = 158373,
									usagePct = 7.8,
								},
								{
									itemID = 251195,
									usagePct = 7.5,
								},
								{
									itemID = 258525,
									usagePct = 4.4,
								},
								{
									itemID = 272283,
									usagePct = 3.3,
								},
								{
									itemID = 251088,
									usagePct = 3.0,
								},
								{
									itemID = 268208,
									usagePct = 3.0,
								},
							},
							NECK = {
								{
									itemID = 273781,
									usagePct = 22.0,
								},
								{
									itemID = 251173,
									usagePct = 16.4,
								},
								{
									itemID = 268291,
									usagePct = 15.4,
								},
								{
									itemID = 50228,
									usagePct = 13.1,
								},
								{
									itemID = 251234,
									usagePct = 11.4,
								},
								{
									itemID = 251142,
									usagePct = 7.1,
								},
								{
									itemID = 272229,
									usagePct = 2.9,
								},
								{
									itemID = 251096,
									usagePct = 2.3,
								},
							},
							OFFHAND = {
								{
									itemID = 237831,
									usagePct = 40.5,
								},
								{
									itemID = 193754,
									usagePct = 13.3,
								},
								{
									itemID = 159664,
									usagePct = 8.3,
								},
								{
									itemID = 249275,
									usagePct = 6.9,
								},
								{
									itemID = 251196,
									usagePct = 6.9,
								},
								{
									itemID = 251150,
									usagePct = 5.6,
								},
								{
									itemID = 258531,
									usagePct = 3.3,
								},
								{
									itemID = 251202,
									usagePct = 3.3,
								},
							},
							SHOULDER = {
								{
									itemID = 249959,
									usagePct = 52.3,
								},
								{
									itemID = 271463,
									usagePct = 16.7,
								},
								{
									itemID = 251138,
									usagePct = 7.5,
								},
								{
									itemID = 239037,
									usagePct = 7.1,
								},
								{
									itemID = 239051,
									usagePct = 6.3,
								},
								{
									itemID = 272260,
									usagePct = 4.2,
								},
								{
									itemID = 277766,
									usagePct = 2.6,
								},
								{
									itemID = 249313,
									usagePct = 0.8,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 21.7,
								},
								{
									itemID = 273796,
									usagePct = 15.1,
								},
								{
									itemID = 250228,
									usagePct = 14.0,
								},
								{
									itemID = 249342,
									usagePct = 13.7,
								},
								{
									itemID = 252420,
									usagePct = 10.2,
								},
								{
									itemID = 250229,
									usagePct = 9.3,
								},
								{
									itemID = 193762,
									usagePct = 9.2,
								},
								{
									itemID = 268292,
									usagePct = 9.0,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 25.2,
								},
								{
									itemID = 251144,
									usagePct = 14.6,
								},
								{
									itemID = 159442,
									usagePct = 10.8,
								},
								{
									itemID = 49808,
									usagePct = 10.5,
								},
								{
									itemID = 159418,
									usagePct = 9.3,
								},
								{
									itemID = 277765,
									usagePct = 7.1,
								},
								{
									itemID = 249958,
									usagePct = 5.7,
								},
								{
									itemID = 272261,
									usagePct = 4.1,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 25.8,
								},
								{
									itemID = 251133,
									usagePct = 19.4,
								},
								{
									itemID = 159409,
									usagePct = 13.7,
								},
								{
									itemID = 159425,
									usagePct = 9.5,
								},
								{
									itemID = 249957,
									usagePct = 7.1,
								},
								{
									itemID = 277764,
									usagePct = 5.0,
								},
								{
									itemID = 151328,
									usagePct = 4.1,
								},
								{
									itemID = 272262,
									usagePct = 4.1,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 23.3,
							},
							{
								itemID = 240890,
								usagePct = 18.8,
							},
							{
								itemID = 240983,
								usagePct = 18.1,
							},
							{
								itemID = 240908,
								usagePct = 8.3,
							},
							{
								itemID = 240894,
								usagePct = 6.4,
							},
							{
								itemID = 240898,
								usagePct = 4.4,
							},
							{
								itemID = 240892,
								usagePct = 3.2,
							},
							{
								itemID = 240900,
								usagePct = 2.7,
							},
							{
								itemID = 240910,
								usagePct = 2.6,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 95079.3,
							metric = "dps",
							outOf = 40,
							rank = 32,
							sample = 300,
							top = 167812.7,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/protection-paladin",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/paladin/protection/enchants-gems-pve-tank",
							},
						},
						statPriority = {
							{
								share = 27.6,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 25.6,
								stat = "CRIT",
								weight = 0.803,
							},
							{
								share = 23.8,
								stat = "MASTERY",
								weight = 0.583,
							},
							{
								share = 4.0,
								stat = "VERSATILITY",
								weight = 0.251,
							},
						},
						talentBuilds = {
							{
								importString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZeAzyYGzYmZWWGjZZWmlZMAADAAAAAAaamhZMzwY2aDADMgZw2AAAAgZmttlWmZsYZBDAYGGDAmZAYmZAjF",
								label = "Lightsmith #1",
								metrics = {
									["Avg dps"] = "104K",
									["Avg key"] = "+12.2",
									["Max dps"] = "130K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-paladin",
								usagePct = 9.0,
							},
							{
								importString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZYWGzYmZmZW2GjZZWmlZMAADAAAAAAaamZZmxMDDbtBgBGwMYDAAAAmZW2WaZmxilFmBwgZ2wAgZGAMzAGL",
								label = "Lightsmith #2",
								metrics = {
									["Avg dps"] = "102K",
									["Avg key"] = "+12.4",
									["Max dps"] = "114K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-paladin",
								usagePct = 6.6,
							},
							{
								importString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZsNLjZMzMzMLbjxYWmlZMAADAAAAAAaamZZmxMY8AbtBgBGwMYDAAAAmZW2WaZmxitFMAGMzmxAgZGAMzAGL",
								label = "Lightsmith #3",
								metrics = {
									["Avg dps"] = "124K",
									["Avg key"] = "+12.6",
									["Max dps"] = "139K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-paladin",
								usagePct = 3.8,
							},
							{
								importString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZsNLjZMzMzMLbjxYWmlZMAADAAAAAAaamZZmxMzY8AbtBgBGwMYDAAAAmZW2WaZmxitFMAgZMjBAzMAYGgxC",
								label = "Lightsmith #4",
								metrics = {
									["Avg dps"] = "117K",
									["Avg key"] = "+12.5",
									["Max dps"] = "130K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-paladin",
								usagePct = 3.0,
							},
							{
								importString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZsNLjZMzMzMLbjxYWmlZMAADAAAAAAaamZZmxMYMbtBgBGwMYDAAAAmZW2WaZmxitFMAgZ2MGAMzAgZGwYB",
								label = "Lightsmith #5",
								metrics = {
									["Avg dps"] = "118K",
									["Avg key"] = "+12.3",
									["Max dps"] = "128K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-paladin",
								usagePct = 3.0,
							},
							{
								importString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZsNLjZMzMzMLbjxYWmlZMAADAAAAAAaamZZmxMDDbtBgBGwMYDAAAAmZW2WaZmxitFMAGMzmxAgZGAMzAGL",
								label = "Lightsmith #6",
								metrics = {
									["Avg dps"] = "125K",
									["Avg key"] = "+13.2",
									["Max dps"] = "151K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-paladin",
								usagePct = 2.9,
							},
							{
								importString = "CIEAAAAAAAAAAAAAAAAAAAAAAsZYWGzYmZmZW2GjZZWmlZMAADAAAAAAaamZZmxMYYrNAMwAmBbAAAAwMzy2SLzMWsswMAGMzmxAgZGAMzAGL",
								label = "Lightsmith #7",
								metrics = {
									["Avg dps"] = "110K",
									["Avg key"] = "+12.7",
									["Max dps"] = "113K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-paladin",
								usagePct = 2.1,
							},
						},
					},
					name = "Lightsmith",
				},
			},
			name = "Protection",
		},
		[70] = {
			heroes = {
				[48] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241322,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241288,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 271883,
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
								itemID = 242275,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 255846,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 55.7,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 26.3,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 13.5,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 64.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 16.3,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 14.2,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 66.8,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 15.4,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 14.6,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 95.2,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 4.4,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.3,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 96.5,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 2.5,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 0.4,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 63.9,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 19.5,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 16.4,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 90.6,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 4.2,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 2.6,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 36.5,
								},
								{
									itemID = 251132,
									usagePct = 15.1,
								},
								{
									itemID = 193763,
									usagePct = 14.2,
								},
								{
									itemID = 251190,
									usagePct = 10.5,
								},
								{
									itemID = 159288,
									usagePct = 5.3,
								},
								{
									itemID = 272225,
									usagePct = 3.4,
								},
								{
									itemID = 272230,
									usagePct = 2.9,
								},
								{
									itemID = 258575,
									usagePct = 2.9,
								},
							},
							CHEST = {
								{
									itemID = 249964,
									usagePct = 67.9,
								},
								{
									itemID = 271468,
									usagePct = 23.7,
								},
								{
									itemID = 251151,
									usagePct = 2.3,
								},
								{
									itemID = 268285,
									usagePct = 1.5,
								},
								{
									itemID = 239036,
									usagePct = 1.4,
								},
								{
									itemID = 193753,
									usagePct = 0.9,
								},
								{
									itemID = 273787,
									usagePct = 0.8,
								},
								{
									itemID = 272255,
									usagePct = 0.6,
								},
							},
							FEET = {
								{
									itemID = 249381,
									usagePct = 30.7,
								},
								{
									itemID = 193728,
									usagePct = 12.5,
								},
								{
									itemID = 159412,
									usagePct = 8.7,
								},
								{
									itemID = 273777,
									usagePct = 8.2,
								},
								{
									itemID = 249963,
									usagePct = 6.1,
								},
								{
									itemID = 277770,
									usagePct = 5.4,
								},
								{
									itemID = 237828,
									usagePct = 4.3,
								},
								{
									itemID = 272256,
									usagePct = 4.3,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 45.0,
								},
								{
									itemID = 193708,
									usagePct = 19.6,
								},
								{
									itemID = 251513,
									usagePct = 18.1,
								},
								{
									itemID = 252258,
									usagePct = 15.8,
								},
								{
									itemID = 251136,
									usagePct = 13.1,
								},
								{
									itemID = 251217,
									usagePct = 12.9,
								},
								{
									itemID = 158366,
									usagePct = 11.8,
								},
								{
									itemID = 273792,
									usagePct = 9.9,
								},
							},
							HANDS = {
								{
									itemID = 271466,
									usagePct = 25.2,
								},
								{
									itemID = 249962,
									usagePct = 22.2,
								},
								{
									itemID = 159413,
									usagePct = 9.4,
								},
								{
									itemID = 251214,
									usagePct = 7.4,
								},
								{
									itemID = 151332,
									usagePct = 7.2,
								},
								{
									itemID = 251221,
									usagePct = 7.2,
								},
								{
									itemID = 258583,
									usagePct = 7.1,
								},
								{
									itemID = 251197,
									usagePct = 6.0,
								},
							},
							HEAD = {
								{
									itemID = 249961,
									usagePct = 70.8,
								},
								{
									itemID = 271465,
									usagePct = 18.5,
								},
								{
									itemID = 251229,
									usagePct = 3.3,
								},
								{
									itemID = 277768,
									usagePct = 2.2,
								},
								{
									itemID = 251126,
									usagePct = 1.6,
								},
								{
									itemID = 272258,
									usagePct = 1.6,
								},
								{
									itemID = 239050,
									usagePct = 0.5,
								},
								{
									itemID = 49819,
									usagePct = 0.3,
								},
							},
							LEGS = {
								{
									itemID = 249960,
									usagePct = 70.1,
								},
								{
									itemID = 271464,
									usagePct = 18.9,
								},
								{
									itemID = 273776,
									usagePct = 2.4,
								},
								{
									itemID = 251182,
									usagePct = 2.2,
								},
								{
									itemID = 277767,
									usagePct = 2.0,
								},
								{
									itemID = 159435,
									usagePct = 1.6,
								},
								{
									itemID = 272259,
									usagePct = 0.9,
								},
								{
									itemID = 268224,
									usagePct = 0.5,
								},
							},
							MAINHAND = {
								{
									itemID = 237846,
									usagePct = 35.7,
								},
								{
									itemID = 251168,
									usagePct = 10.5,
								},
								{
									itemID = 251134,
									usagePct = 8.5,
								},
								{
									itemID = 193755,
									usagePct = 8.1,
								},
								{
									itemID = 251230,
									usagePct = 6.5,
								},
								{
									itemID = 273782,
									usagePct = 5.3,
								},
								{
									itemID = 251181,
									usagePct = 3.8,
								},
								{
									itemID = 249277,
									usagePct = 3.5,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 48.7,
								},
								{
									itemID = 251234,
									usagePct = 17.6,
								},
								{
									itemID = 251142,
									usagePct = 9.5,
								},
								{
									itemID = 273781,
									usagePct = 6.8,
								},
								{
									itemID = 251173,
									usagePct = 6.8,
								},
								{
									itemID = 240950,
									usagePct = 2.5,
								},
								{
									itemID = 272228,
									usagePct = 1.8,
								},
								{
									itemID = 50228,
									usagePct = 1.4,
								},
							},
							SHOULDER = {
								{
									itemID = 249959,
									usagePct = 71.4,
								},
								{
									itemID = 271463,
									usagePct = 19.8,
								},
								{
									itemID = 239037,
									usagePct = 2.9,
								},
								{
									itemID = 251138,
									usagePct = 2.2,
								},
								{
									itemID = 277766,
									usagePct = 1.9,
								},
								{
									itemID = 239051,
									usagePct = 0.8,
								},
								{
									itemID = 256998,
									usagePct = 0.6,
								},
								{
									itemID = 272260,
									usagePct = 0.4,
								},
							},
							TRINKET1 = {
								{
									itemID = 193701,
									usagePct = 73.5,
								},
								{
									itemID = 249343,
									usagePct = 38.3,
								},
								{
									itemID = 250259,
									usagePct = 14.6,
								},
								{
									itemID = 260235,
									usagePct = 7.1,
								},
								{
									itemID = 249342,
									usagePct = 7.0,
								},
								{
									itemID = 273796,
									usagePct = 7.0,
								},
								{
									itemID = 250228,
									usagePct = 6.6,
								},
								{
									itemID = 193762,
									usagePct = 5.7,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 60.7,
								},
								{
									itemID = 159418,
									usagePct = 10.3,
								},
								{
									itemID = 251144,
									usagePct = 7.5,
								},
								{
									itemID = 249958,
									usagePct = 4.9,
								},
								{
									itemID = 159442,
									usagePct = 4.3,
								},
								{
									itemID = 237830,
									usagePct = 3.4,
								},
								{
									itemID = 277765,
									usagePct = 2.7,
								},
								{
									itemID = 272261,
									usagePct = 1.3,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 56.5,
								},
								{
									itemID = 159409,
									usagePct = 9.8,
								},
								{
									itemID = 251133,
									usagePct = 7.5,
								},
								{
									itemID = 277764,
									usagePct = 5.2,
								},
								{
									itemID = 159425,
									usagePct = 4.8,
								},
								{
									itemID = 249957,
									usagePct = 4.3,
								},
								{
									itemID = 272262,
									usagePct = 4.1,
								},
								{
									itemID = 276641,
									usagePct = 1.6,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 38.3,
							},
							{
								itemID = 240983,
								usagePct = 18.0,
							},
							{
								itemID = 240892,
								usagePct = 13.9,
							},
							{
								itemID = 240898,
								usagePct = 11.2,
							},
							{
								itemID = 240890,
								usagePct = 5.7,
							},
							{
								itemID = 240906,
								usagePct = 5.4,
							},
							{
								itemID = 240900,
								usagePct = 3.0,
							},
							{
								itemID = 240904,
								usagePct = 0.7,
							},
							{
								itemID = 240967,
								usagePct = 0.6,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 187645.3,
							metric = "dps",
							outOf = 40,
							rank = 9,
							sample = 300,
							top = 346092.1,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/retribution-paladin",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/paladin/retribution/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 44.3,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 29.4,
								stat = "CRIT",
								weight = 0.962,
							},
							{
								share = 14.7,
								stat = "HASTE",
								weight = 0.675,
							},
							{
								share = 0.9,
								stat = "VERSATILITY",
								weight = 0.061,
							},
						},
						talentBuilds = {
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxMzMAAAAAAmpMmhZGbDz2wMbzYMGDzYjNAAAmZabmZbGAwGgBAjZYgZMzshlZwwYGDG",
								label = "Templar #1",
								metrics = {
									["Avg dps"] = "189K",
									["Avg key"] = "+12.5",
									["Max dps"] = "258K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 18.6,
							},
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxMzMAAAAAAmpMLzwMjthZbYmtZMGjhZsxGAAAzMtNzsNDAYDwAgxMMwMmZ2wyMYYMMYA",
								label = "Templar #2",
								metrics = {
									["Avg dps"] = "188K",
									["Avg key"] = "+12.3",
									["Max dps"] = "235K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 3.5,
							},
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxYmBAAAAAwMlxMMzYbY2GmZbGjxYYGbsBAAwMTbzMbzAA2AMAYMDDMzMzshlZwwYGDG",
								label = "Templar #3",
								metrics = {
									["Avg dps"] = "179K",
									["Avg key"] = "+12.3",
									["Max dps"] = "233K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 2.8,
							},
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxMzMAAAAAAmpMLGmZsNMbDzsNjxYMMjN2AAAYmptZmtZAAbAGAMmhBmxMzGWmBDjZMYA",
								label = "Templar #4",
								metrics = {
									["Avg dps"] = "195K",
									["Avg key"] = "+12.6",
									["Max dps"] = "227K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 2.7,
							},
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxMzMAAAAAAmpMLzwMjthZbYmtZMGjhZsxGAAAzMtMzsNDAYDwAgxMMwMmZ2wyMYYMMYA",
								label = "Templar #5",
								metrics = {
									["Avg dps"] = "201K",
									["Avg key"] = "+12.5",
									["Max dps"] = "221K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 2.4,
							},
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxMzMAAAAAAmpMLzwMjthZbYmtZMGjhhN2AAAYmptZmtZAAbAGAMmhBmxMzGWmBjZMMYA",
								label = "Templar #6",
								metrics = {
									["Avg dps"] = "185K",
									["Avg key"] = "+12.4",
									["Max dps"] = "219K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 2.2,
							},
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxYmBAAAAAwMlZZGmZsNMbDzsNjxYMMjN2AAAYmptZmtZAAbAGAMmhBmZmZ2wyMYYMMYA",
								label = "Templar #7",
								metrics = {
									["Avg dps"] = "199K",
									["Avg key"] = "+12.4",
									["Max dps"] = "248K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 2.0,
							},
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxMzMAAAAAAmpMLzwMjthZbYmtZMGjhZsxGAAAzMtNzsNDAYDwAgxMbAzYmZDLzghxwgB",
								label = "Templar #8",
								metrics = {
									["Avg dps"] = "193K",
									["Avg key"] = "+12.2",
									["Max dps"] = "202K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 1.6,
							},
						},
					},
					name = "Templar",
				},
				[50] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241322,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241288,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 271883,
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
								itemID = 242275,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 255846,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 55.7,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 26.3,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 13.5,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 64.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 16.3,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 14.2,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 66.8,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 15.4,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 14.6,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 95.2,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 4.4,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.3,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 96.5,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 2.5,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 0.4,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 63.9,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 19.5,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 16.4,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 90.6,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 4.2,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 2.6,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 36.5,
								},
								{
									itemID = 251132,
									usagePct = 15.1,
								},
								{
									itemID = 193763,
									usagePct = 14.2,
								},
								{
									itemID = 251190,
									usagePct = 10.5,
								},
								{
									itemID = 159288,
									usagePct = 5.3,
								},
								{
									itemID = 272225,
									usagePct = 3.4,
								},
								{
									itemID = 272230,
									usagePct = 2.9,
								},
								{
									itemID = 258575,
									usagePct = 2.9,
								},
							},
							CHEST = {
								{
									itemID = 249964,
									usagePct = 67.9,
								},
								{
									itemID = 271468,
									usagePct = 23.7,
								},
								{
									itemID = 251151,
									usagePct = 2.3,
								},
								{
									itemID = 268285,
									usagePct = 1.5,
								},
								{
									itemID = 239036,
									usagePct = 1.4,
								},
								{
									itemID = 193753,
									usagePct = 0.9,
								},
								{
									itemID = 273787,
									usagePct = 0.8,
								},
								{
									itemID = 272255,
									usagePct = 0.6,
								},
							},
							FEET = {
								{
									itemID = 249381,
									usagePct = 30.7,
								},
								{
									itemID = 193728,
									usagePct = 12.5,
								},
								{
									itemID = 159412,
									usagePct = 8.7,
								},
								{
									itemID = 273777,
									usagePct = 8.2,
								},
								{
									itemID = 249963,
									usagePct = 6.1,
								},
								{
									itemID = 277770,
									usagePct = 5.4,
								},
								{
									itemID = 237828,
									usagePct = 4.3,
								},
								{
									itemID = 272256,
									usagePct = 4.3,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 45.0,
								},
								{
									itemID = 193708,
									usagePct = 19.6,
								},
								{
									itemID = 251513,
									usagePct = 18.1,
								},
								{
									itemID = 252258,
									usagePct = 15.8,
								},
								{
									itemID = 251136,
									usagePct = 13.1,
								},
								{
									itemID = 251217,
									usagePct = 12.9,
								},
								{
									itemID = 158366,
									usagePct = 11.8,
								},
								{
									itemID = 273792,
									usagePct = 9.9,
								},
							},
							HANDS = {
								{
									itemID = 271466,
									usagePct = 25.2,
								},
								{
									itemID = 249962,
									usagePct = 22.2,
								},
								{
									itemID = 159413,
									usagePct = 9.4,
								},
								{
									itemID = 251214,
									usagePct = 7.4,
								},
								{
									itemID = 151332,
									usagePct = 7.2,
								},
								{
									itemID = 251221,
									usagePct = 7.2,
								},
								{
									itemID = 258583,
									usagePct = 7.1,
								},
								{
									itemID = 251197,
									usagePct = 6.0,
								},
							},
							HEAD = {
								{
									itemID = 249961,
									usagePct = 70.8,
								},
								{
									itemID = 271465,
									usagePct = 18.5,
								},
								{
									itemID = 251229,
									usagePct = 3.3,
								},
								{
									itemID = 277768,
									usagePct = 2.2,
								},
								{
									itemID = 251126,
									usagePct = 1.6,
								},
								{
									itemID = 272258,
									usagePct = 1.6,
								},
								{
									itemID = 239050,
									usagePct = 0.5,
								},
								{
									itemID = 49819,
									usagePct = 0.3,
								},
							},
							LEGS = {
								{
									itemID = 249960,
									usagePct = 70.1,
								},
								{
									itemID = 271464,
									usagePct = 18.9,
								},
								{
									itemID = 273776,
									usagePct = 2.4,
								},
								{
									itemID = 251182,
									usagePct = 2.2,
								},
								{
									itemID = 277767,
									usagePct = 2.0,
								},
								{
									itemID = 159435,
									usagePct = 1.6,
								},
								{
									itemID = 272259,
									usagePct = 0.9,
								},
								{
									itemID = 268224,
									usagePct = 0.5,
								},
							},
							MAINHAND = {
								{
									itemID = 237846,
									usagePct = 35.7,
								},
								{
									itemID = 251168,
									usagePct = 10.5,
								},
								{
									itemID = 251134,
									usagePct = 8.5,
								},
								{
									itemID = 193755,
									usagePct = 8.1,
								},
								{
									itemID = 251230,
									usagePct = 6.5,
								},
								{
									itemID = 273782,
									usagePct = 5.3,
								},
								{
									itemID = 251181,
									usagePct = 3.8,
								},
								{
									itemID = 249277,
									usagePct = 3.5,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 48.7,
								},
								{
									itemID = 251234,
									usagePct = 17.6,
								},
								{
									itemID = 251142,
									usagePct = 9.5,
								},
								{
									itemID = 273781,
									usagePct = 6.8,
								},
								{
									itemID = 251173,
									usagePct = 6.8,
								},
								{
									itemID = 240950,
									usagePct = 2.5,
								},
								{
									itemID = 272228,
									usagePct = 1.8,
								},
								{
									itemID = 50228,
									usagePct = 1.4,
								},
							},
							SHOULDER = {
								{
									itemID = 249959,
									usagePct = 71.4,
								},
								{
									itemID = 271463,
									usagePct = 19.8,
								},
								{
									itemID = 239037,
									usagePct = 2.9,
								},
								{
									itemID = 251138,
									usagePct = 2.2,
								},
								{
									itemID = 277766,
									usagePct = 1.9,
								},
								{
									itemID = 239051,
									usagePct = 0.8,
								},
								{
									itemID = 256998,
									usagePct = 0.6,
								},
								{
									itemID = 272260,
									usagePct = 0.4,
								},
							},
							TRINKET1 = {
								{
									itemID = 193701,
									usagePct = 73.5,
								},
								{
									itemID = 249343,
									usagePct = 38.3,
								},
								{
									itemID = 250259,
									usagePct = 14.6,
								},
								{
									itemID = 260235,
									usagePct = 7.1,
								},
								{
									itemID = 249342,
									usagePct = 7.0,
								},
								{
									itemID = 273796,
									usagePct = 7.0,
								},
								{
									itemID = 250228,
									usagePct = 6.6,
								},
								{
									itemID = 193762,
									usagePct = 5.7,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 60.7,
								},
								{
									itemID = 159418,
									usagePct = 10.3,
								},
								{
									itemID = 251144,
									usagePct = 7.5,
								},
								{
									itemID = 249958,
									usagePct = 4.9,
								},
								{
									itemID = 159442,
									usagePct = 4.3,
								},
								{
									itemID = 237830,
									usagePct = 3.4,
								},
								{
									itemID = 277765,
									usagePct = 2.7,
								},
								{
									itemID = 272261,
									usagePct = 1.3,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 56.5,
								},
								{
									itemID = 159409,
									usagePct = 9.8,
								},
								{
									itemID = 251133,
									usagePct = 7.5,
								},
								{
									itemID = 277764,
									usagePct = 5.2,
								},
								{
									itemID = 159425,
									usagePct = 4.8,
								},
								{
									itemID = 249957,
									usagePct = 4.3,
								},
								{
									itemID = 272262,
									usagePct = 4.1,
								},
								{
									itemID = 276641,
									usagePct = 1.6,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 38.3,
							},
							{
								itemID = 240983,
								usagePct = 18.0,
							},
							{
								itemID = 240892,
								usagePct = 13.9,
							},
							{
								itemID = 240898,
								usagePct = 11.2,
							},
							{
								itemID = 240890,
								usagePct = 5.7,
							},
							{
								itemID = 240906,
								usagePct = 5.4,
							},
							{
								itemID = 240900,
								usagePct = 3.0,
							},
							{
								itemID = 240904,
								usagePct = 0.7,
							},
							{
								itemID = 240967,
								usagePct = 0.6,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 187645.3,
							metric = "dps",
							outOf = 40,
							rank = 9,
							sample = 300,
							top = 346092.1,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/retribution-paladin",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/paladin/retribution/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 44.3,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 29.4,
								stat = "CRIT",
								weight = 0.962,
							},
							{
								share = 14.7,
								stat = "HASTE",
								weight = 0.675,
							},
							{
								share = 0.9,
								stat = "VERSATILITY",
								weight = 0.061,
							},
						},
						talentBuilds = {
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAAMa22mZmlxMzMAAAAAAmpMmhZGbDz2wMbzYMGDzYhNAMLz2Mzs1AAAALAGAMmhBmxMzGwMzwYGDG",
								label = "Herald of the Sun #1",
								metrics = {
									["Avg dps"] = "194K",
									["Avg key"] = "+12.7",
									["Max dps"] = "267K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 5.2,
							},
							{
								importString = "CYEAAAAAAAAAAAAAAAAAAAAAAAAAAAwoZZbmZWGzMzAAAAAAYmyYGmZsNmthZ2mxYMGmxGbAYWmtZmZrBAAAWAMAYMDDMjZmNgZmhxMGMA",
								label = "Herald of the Sun #2",
								metrics = {
									["Avg dps"] = "198K",
									["Avg key"] = "+13.1",
									["Max dps"] = "242K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/retribution-paladin",
								usagePct = 1.9,
							},
						},
					},
					name = "Herald of the Sun",
				},
			},
			name = "Retribution",
		},
	},
})

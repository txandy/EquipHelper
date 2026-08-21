-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

ns.RegisterClassData("DEATHKNIGHT", {
	specs = {
		[250] = {
			heroes = {
				[31] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
								primary = true,
							},
							{
								category = "FLASK",
								itemID = 241326,
								primary = false,
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
								itemID = 255846,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242273,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 0.1,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 41.7,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 26.0,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 22.0,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 48.7,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 34.1,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 12.2,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 90.9,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 8.2,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.6,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 93.8,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 5.3,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.5,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 52.3,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 31.2,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 16.1,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 32.0,
							},
							{
								itemID = 244017,
								slot = "FINGER1",
								usagePct = 24.2,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 16.8,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 193763,
									usagePct = 18.5,
								},
								{
									itemID = 239656,
									usagePct = 18.3,
								},
								{
									itemID = 159288,
									usagePct = 11.8,
								},
								{
									itemID = 251190,
									usagePct = 11.1,
								},
								{
									itemID = 251132,
									usagePct = 9.7,
								},
								{
									itemID = 249965,
									usagePct = 3.9,
								},
								{
									itemID = 272230,
									usagePct = 3.2,
								},
								{
									itemID = 272227,
									usagePct = 2.8,
								},
							},
							CHEST = {
								{
									itemID = 249973,
									usagePct = 49.5,
								},
								{
									itemID = 271477,
									usagePct = 16.8,
								},
								{
									itemID = 193753,
									usagePct = 7.1,
								},
								{
									itemID = 251151,
									usagePct = 6.8,
								},
								{
									itemID = 251193,
									usagePct = 6.1,
								},
								{
									itemID = 273787,
									usagePct = 5.2,
								},
								{
									itemID = 239036,
									usagePct = 4.7,
								},
								{
									itemID = 272255,
									usagePct = 1.4,
								},
							},
							FEET = {
								{
									itemID = 273777,
									usagePct = 18.1,
								},
								{
									itemID = 193728,
									usagePct = 14.5,
								},
								{
									itemID = 159412,
									usagePct = 12.0,
								},
								{
									itemID = 249381,
									usagePct = 10.7,
								},
								{
									itemID = 277770,
									usagePct = 9.2,
								},
								{
									itemID = 249972,
									usagePct = 6.8,
								},
								{
									itemID = 272256,
									usagePct = 5.2,
								},
								{
									itemID = 237828,
									usagePct = 4.3,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 26.7,
								},
								{
									itemID = 273792,
									usagePct = 17.8,
								},
								{
									itemID = 159459,
									usagePct = 16.3,
								},
								{
									itemID = 252258,
									usagePct = 15.5,
								},
								{
									itemID = 251148,
									usagePct = 12.1,
								},
								{
									itemID = 158366,
									usagePct = 10.6,
								},
								{
									itemID = 251136,
									usagePct = 10.2,
								},
								{
									itemID = 162544,
									usagePct = 9.3,
								},
							},
							HANDS = {
								{
									itemID = 249971,
									usagePct = 41.7,
								},
								{
									itemID = 271475,
									usagePct = 16.9,
								},
								{
									itemID = 251221,
									usagePct = 14.5,
								},
								{
									itemID = 251214,
									usagePct = 6.8,
								},
								{
									itemID = 251197,
									usagePct = 6.6,
								},
								{
									itemID = 159413,
									usagePct = 3.2,
								},
								{
									itemID = 277769,
									usagePct = 2.5,
								},
								{
									itemID = 151332,
									usagePct = 2.3,
								},
							},
							HEAD = {
								{
									itemID = 249970,
									usagePct = 52.5,
								},
								{
									itemID = 271474,
									usagePct = 15.6,
								},
								{
									itemID = 251126,
									usagePct = 9.0,
								},
								{
									itemID = 251229,
									usagePct = 8.4,
								},
								{
									itemID = 239050,
									usagePct = 3.9,
								},
								{
									itemID = 277768,
									usagePct = 3.4,
								},
								{
									itemID = 272258,
									usagePct = 1.9,
								},
								{
									itemID = 266432,
									usagePct = 1.7,
								},
							},
							LEGS = {
								{
									itemID = 249969,
									usagePct = 48.8,
								},
								{
									itemID = 271473,
									usagePct = 15.2,
								},
								{
									itemID = 251182,
									usagePct = 13.2,
								},
								{
									itemID = 159435,
									usagePct = 5.9,
								},
								{
									itemID = 273776,
									usagePct = 5.4,
								},
								{
									itemID = 277767,
									usagePct = 4.5,
								},
								{
									itemID = 272259,
									usagePct = 2.7,
								},
								{
									itemID = 251208,
									usagePct = 1.2,
								},
							},
							MAINHAND = {
								{
									itemID = 237846,
									usagePct = 39.7,
								},
								{
									itemID = 193755,
									usagePct = 9.7,
								},
								{
									itemID = 251230,
									usagePct = 7.0,
								},
								{
									itemID = 251134,
									usagePct = 5.8,
								},
								{
									itemID = 251181,
									usagePct = 5.6,
								},
								{
									itemID = 273782,
									usagePct = 4.4,
								},
								{
									itemID = 159644,
									usagePct = 3.9,
								},
								{
									itemID = 237842,
									usagePct = 3.9,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 28.6,
								},
								{
									itemID = 273781,
									usagePct = 12.8,
								},
								{
									itemID = 251234,
									usagePct = 11.5,
								},
								{
									itemID = 251142,
									usagePct = 11.2,
								},
								{
									itemID = 251173,
									usagePct = 10.3,
								},
								{
									itemID = 272229,
									usagePct = 3.7,
								},
								{
									itemID = 240950,
									usagePct = 3.4,
								},
								{
									itemID = 272228,
									usagePct = 3.2,
								},
							},
							SHOULDER = {
								{
									itemID = 249968,
									usagePct = 40.2,
								},
								{
									itemID = 271472,
									usagePct = 15.0,
								},
								{
									itemID = 239037,
									usagePct = 12.4,
								},
								{
									itemID = 251138,
									usagePct = 8.5,
								},
								{
									itemID = 239051,
									usagePct = 6.3,
								},
								{
									itemID = 277766,
									usagePct = 4.3,
								},
								{
									itemID = 50234,
									usagePct = 3.4,
								},
								{
									itemID = 272260,
									usagePct = 3.2,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 30.6,
								},
								{
									itemID = 249344,
									usagePct = 28.3,
								},
								{
									itemID = 250238,
									usagePct = 8.7,
								},
								{
									itemID = 250229,
									usagePct = 8.7,
								},
								{
									itemID = 273796,
									usagePct = 8.3,
								},
								{
									itemID = 274493,
									usagePct = 8.0,
								},
								{
									itemID = 264507,
									usagePct = 7.5,
								},
								{
									itemID = 250245,
									usagePct = 7.2,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 22.2,
								},
								{
									itemID = 251144,
									usagePct = 14.2,
								},
								{
									itemID = 159418,
									usagePct = 14.2,
								},
								{
									itemID = 249967,
									usagePct = 13.8,
								},
								{
									itemID = 159442,
									usagePct = 11.5,
								},
								{
									itemID = 277765,
									usagePct = 6.7,
								},
								{
									itemID = 272261,
									usagePct = 3.9,
								},
								{
									itemID = 268244,
									usagePct = 2.1,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 35.8,
								},
								{
									itemID = 159425,
									usagePct = 14.3,
								},
								{
									itemID = 251133,
									usagePct = 11.6,
								},
								{
									itemID = 159409,
									usagePct = 11.2,
								},
								{
									itemID = 272262,
									usagePct = 4.9,
								},
								{
									itemID = 277764,
									usagePct = 4.9,
								},
								{
									itemID = 249966,
									usagePct = 4.8,
								},
								{
									itemID = 276641,
									usagePct = 2.6,
								},
							},
						},
						gems = {
							{
								itemID = 240983,
								usagePct = 20.8,
							},
							{
								itemID = 240908,
								usagePct = 13.7,
							},
							{
								itemID = 240890,
								usagePct = 13.2,
							},
							{
								itemID = 240916,
								usagePct = 9.1,
							},
							{
								itemID = 240918,
								usagePct = 8.4,
							},
							{
								itemID = 240898,
								usagePct = 8.1,
							},
							{
								itemID = 240894,
								usagePct = 8.1,
							},
							{
								itemID = 240906,
								usagePct = 5.7,
							},
							{
								itemID = 240914,
								usagePct = 4.0,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 123005.4,
							metric = "dps",
							outOf = 40,
							rank = 28,
							sample = 300,
							top = 215625.1,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/blood-death-knight",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/death-knight/blood/enchants-gems-pve-tank",
							},
						},
						statPriority = {
							{
								share = 51.2,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 19.9,
								stat = "HASTE",
								weight = 0.848,
							},
							{
								share = 18.5,
								stat = "CRIT",
								weight = 0.768,
							},
							{
								share = 6.7,
								stat = "VERSATILITY",
								weight = 0.473,
							},
						},
						talentBuilds = {
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwYWmZmxMmZmhZZmZmmZxYMmxAAAAAmxMzMzMDzYMAYMzMzAAAYgBmxiGLLAWGwGgZMzAAAzMwwA",
								label = "San'layn #1",
								metrics = {
									["Avg dps"] = "124K",
									["Avg key"] = "+12.4",
									["Max dps"] = "140K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 2.5,
							},
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwMzyMzwMmZmhZbmZmmZxMjZmxAAAAAmhZmZmZMzYAAzMzMzAAAYgBmxiGLbA2GwGgZMAAAzMAGA",
								label = "San'layn #2",
								metrics = {
									["Avg dps"] = "128K",
									["Avg key"] = "+12.1",
									["Max dps"] = "167K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 2.3,
							},
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwMzyMzMmxMzMMLzMz0MLGjxMGAAAAwMmZmZmZYGjBAjZmZGAAADMwMW0YZBwyA2AMjZAAAzMwwA",
								label = "San'layn #3",
								metrics = {
									["Avg dps"] = "123K",
									["Avg key"] = "+12.4",
									["Max dps"] = "152K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 2.1,
							},
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwMzyMzMmxMzMMLjZmmZxYmZmxAAAAAGMzMzMjZmZMAYmZmZGAAADMwMW0YZDw2A2AMjBAAYmBwA",
								label = "San'layn #4",
								metrics = {
									["Avg dps"] = "113K",
									["Avg key"] = "+12.4",
									["Max dps"] = "128K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 2.1,
							},
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwMzyMzMmxMmhZbmZmmZxMjZmxAAAAAGMzMzMjZmZMAYmZmZGAAADMwMW0YZDw2A2AMjBAAYmBwA",
								label = "San'layn #5",
								metrics = {
									["Avg dps"] = "103K",
									["Avg key"] = "+12.1",
									["Max dps"] = "104K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 1.9,
							},
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwMzyMzwMmZmhZbmZmmZxMjZmxAAAAAGMzMzMjZmZMAYmZmZGAAADMwMW0YZDw2A2AMjBAAYmBwA",
								label = "San'layn #6",
								metrics = {
									["Avg dps"] = "127K",
									["Avg key"] = "+12.7",
									["Max dps"] = "157K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 1.4,
							},
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwMzyMzMmxMzMMLjZmmZxYmZmxAAAAAGMzMzMjZmZMAYmZmZGAAADMwMW0YZBwyA2AMjBAAYmBwA",
								label = "San'layn #7",
								metrics = {
									["Avg dps"] = "131K",
									["Avg key"] = "+12.5",
									["Max dps"] = "140K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 1.3,
							},
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwMzyMzMmxMzMMLzMz0MLGjxMGAAAAwMmZmZmZYGDAYmZmZGAAADMwMW0YZBwyA2AMjZAAAzMwwA",
								label = "San'layn #8",
								metrics = {
									["Avg dps"] = "116K",
									["Avg key"] = "+12.5",
									["Max dps"] = "126K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 1.3,
							},
						},
					},
					name = "San'layn",
				},
				[33] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
								primary = true,
							},
							{
								category = "FLASK",
								itemID = 241326,
								primary = false,
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
								itemID = 255846,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242273,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 0.1,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 41.7,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 26.0,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 22.0,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 48.7,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 34.1,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 12.2,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 90.9,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 8.2,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.6,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 93.8,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 5.3,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.5,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 52.3,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 31.2,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 16.1,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 32.0,
							},
							{
								itemID = 244017,
								slot = "FINGER1",
								usagePct = 24.2,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 16.8,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 193763,
									usagePct = 18.5,
								},
								{
									itemID = 239656,
									usagePct = 18.3,
								},
								{
									itemID = 159288,
									usagePct = 11.8,
								},
								{
									itemID = 251190,
									usagePct = 11.1,
								},
								{
									itemID = 251132,
									usagePct = 9.7,
								},
								{
									itemID = 249965,
									usagePct = 3.9,
								},
								{
									itemID = 272230,
									usagePct = 3.2,
								},
								{
									itemID = 272227,
									usagePct = 2.8,
								},
							},
							CHEST = {
								{
									itemID = 249973,
									usagePct = 49.5,
								},
								{
									itemID = 271477,
									usagePct = 16.8,
								},
								{
									itemID = 193753,
									usagePct = 7.1,
								},
								{
									itemID = 251151,
									usagePct = 6.8,
								},
								{
									itemID = 251193,
									usagePct = 6.1,
								},
								{
									itemID = 273787,
									usagePct = 5.2,
								},
								{
									itemID = 239036,
									usagePct = 4.7,
								},
								{
									itemID = 272255,
									usagePct = 1.4,
								},
							},
							FEET = {
								{
									itemID = 273777,
									usagePct = 18.1,
								},
								{
									itemID = 193728,
									usagePct = 14.5,
								},
								{
									itemID = 159412,
									usagePct = 12.0,
								},
								{
									itemID = 249381,
									usagePct = 10.7,
								},
								{
									itemID = 277770,
									usagePct = 9.2,
								},
								{
									itemID = 249972,
									usagePct = 6.8,
								},
								{
									itemID = 272256,
									usagePct = 5.2,
								},
								{
									itemID = 237828,
									usagePct = 4.3,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 26.7,
								},
								{
									itemID = 273792,
									usagePct = 17.8,
								},
								{
									itemID = 159459,
									usagePct = 16.3,
								},
								{
									itemID = 252258,
									usagePct = 15.5,
								},
								{
									itemID = 251148,
									usagePct = 12.1,
								},
								{
									itemID = 158366,
									usagePct = 10.6,
								},
								{
									itemID = 251136,
									usagePct = 10.2,
								},
								{
									itemID = 162544,
									usagePct = 9.3,
								},
							},
							HANDS = {
								{
									itemID = 249971,
									usagePct = 41.7,
								},
								{
									itemID = 271475,
									usagePct = 16.9,
								},
								{
									itemID = 251221,
									usagePct = 14.5,
								},
								{
									itemID = 251214,
									usagePct = 6.8,
								},
								{
									itemID = 251197,
									usagePct = 6.6,
								},
								{
									itemID = 159413,
									usagePct = 3.2,
								},
								{
									itemID = 277769,
									usagePct = 2.5,
								},
								{
									itemID = 151332,
									usagePct = 2.3,
								},
							},
							HEAD = {
								{
									itemID = 249970,
									usagePct = 52.5,
								},
								{
									itemID = 271474,
									usagePct = 15.6,
								},
								{
									itemID = 251126,
									usagePct = 9.0,
								},
								{
									itemID = 251229,
									usagePct = 8.4,
								},
								{
									itemID = 239050,
									usagePct = 3.9,
								},
								{
									itemID = 277768,
									usagePct = 3.4,
								},
								{
									itemID = 272258,
									usagePct = 1.9,
								},
								{
									itemID = 266432,
									usagePct = 1.7,
								},
							},
							LEGS = {
								{
									itemID = 249969,
									usagePct = 48.8,
								},
								{
									itemID = 271473,
									usagePct = 15.2,
								},
								{
									itemID = 251182,
									usagePct = 13.2,
								},
								{
									itemID = 159435,
									usagePct = 5.9,
								},
								{
									itemID = 273776,
									usagePct = 5.4,
								},
								{
									itemID = 277767,
									usagePct = 4.5,
								},
								{
									itemID = 272259,
									usagePct = 2.7,
								},
								{
									itemID = 251208,
									usagePct = 1.2,
								},
							},
							MAINHAND = {
								{
									itemID = 237846,
									usagePct = 39.7,
								},
								{
									itemID = 193755,
									usagePct = 9.7,
								},
								{
									itemID = 251230,
									usagePct = 7.0,
								},
								{
									itemID = 251134,
									usagePct = 5.8,
								},
								{
									itemID = 251181,
									usagePct = 5.6,
								},
								{
									itemID = 273782,
									usagePct = 4.4,
								},
								{
									itemID = 159644,
									usagePct = 3.9,
								},
								{
									itemID = 237842,
									usagePct = 3.9,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 28.6,
								},
								{
									itemID = 273781,
									usagePct = 12.8,
								},
								{
									itemID = 251234,
									usagePct = 11.5,
								},
								{
									itemID = 251142,
									usagePct = 11.2,
								},
								{
									itemID = 251173,
									usagePct = 10.3,
								},
								{
									itemID = 272229,
									usagePct = 3.7,
								},
								{
									itemID = 240950,
									usagePct = 3.4,
								},
								{
									itemID = 272228,
									usagePct = 3.2,
								},
							},
							SHOULDER = {
								{
									itemID = 249968,
									usagePct = 40.2,
								},
								{
									itemID = 271472,
									usagePct = 15.0,
								},
								{
									itemID = 239037,
									usagePct = 12.4,
								},
								{
									itemID = 251138,
									usagePct = 8.5,
								},
								{
									itemID = 239051,
									usagePct = 6.3,
								},
								{
									itemID = 277766,
									usagePct = 4.3,
								},
								{
									itemID = 50234,
									usagePct = 3.4,
								},
								{
									itemID = 272260,
									usagePct = 3.2,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 30.6,
								},
								{
									itemID = 249344,
									usagePct = 28.3,
								},
								{
									itemID = 250238,
									usagePct = 8.7,
								},
								{
									itemID = 250229,
									usagePct = 8.7,
								},
								{
									itemID = 273796,
									usagePct = 8.3,
								},
								{
									itemID = 274493,
									usagePct = 8.0,
								},
								{
									itemID = 264507,
									usagePct = 7.5,
								},
								{
									itemID = 250245,
									usagePct = 7.2,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 22.2,
								},
								{
									itemID = 251144,
									usagePct = 14.2,
								},
								{
									itemID = 159418,
									usagePct = 14.2,
								},
								{
									itemID = 249967,
									usagePct = 13.8,
								},
								{
									itemID = 159442,
									usagePct = 11.5,
								},
								{
									itemID = 277765,
									usagePct = 6.7,
								},
								{
									itemID = 272261,
									usagePct = 3.9,
								},
								{
									itemID = 268244,
									usagePct = 2.1,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 35.8,
								},
								{
									itemID = 159425,
									usagePct = 14.3,
								},
								{
									itemID = 251133,
									usagePct = 11.6,
								},
								{
									itemID = 159409,
									usagePct = 11.2,
								},
								{
									itemID = 272262,
									usagePct = 4.9,
								},
								{
									itemID = 277764,
									usagePct = 4.9,
								},
								{
									itemID = 249966,
									usagePct = 4.8,
								},
								{
									itemID = 276641,
									usagePct = 2.6,
								},
							},
						},
						gems = {
							{
								itemID = 240983,
								usagePct = 20.8,
							},
							{
								itemID = 240908,
								usagePct = 13.7,
							},
							{
								itemID = 240890,
								usagePct = 13.2,
							},
							{
								itemID = 240916,
								usagePct = 9.1,
							},
							{
								itemID = 240918,
								usagePct = 8.4,
							},
							{
								itemID = 240898,
								usagePct = 8.1,
							},
							{
								itemID = 240894,
								usagePct = 8.1,
							},
							{
								itemID = 240906,
								usagePct = 5.7,
							},
							{
								itemID = 240914,
								usagePct = 4.0,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 123005.4,
							metric = "dps",
							outOf = 40,
							rank = 28,
							sample = 300,
							top = 215625.1,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/blood-death-knight",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/death-knight/blood/enchants-gems-pve-tank",
							},
						},
						statPriority = {
							{
								share = 51.2,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 19.9,
								stat = "HASTE",
								weight = 0.848,
							},
							{
								share = 18.5,
								stat = "CRIT",
								weight = 0.768,
							},
							{
								share = 6.7,
								stat = "VERSATILITY",
								weight = 0.473,
							},
						},
						talentBuilds = {
							{
								importString = "CoPAAAAAAAAAAAAAAAAAAAAAAwMzyMzMmxMGMLzMz0MLzMjZmBAAAAwgZmZmZMzMjBAzMzMzAAAMmtBGwCYZYCMsAYGDAAmZAYMA",
								label = "Deathbringer #1",
								metrics = {
									["Avg dps"] = "122K",
									["Avg key"] = "+12.3",
									["Max dps"] = "154K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/blood-death-knight",
								usagePct = 2.7,
							},
						},
					},
					name = "Deathbringer",
				},
			},
			name = "Blood",
		},
		[251] = {
			heroes = {
				[33] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241326,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241308,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 241304,
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
								itemID = 266985,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242744,
								primary = false,
							},
							{
								category = "FOOD",
								itemID = 242275,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 42.9,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 35.6,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 14.1,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 48.7,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 38.4,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 9.2,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 94.0,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 5.6,
							},
							{
								itemID = 243946,
								slot = "CHEST",
								usagePct = 0.3,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 97.5,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 2.1,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 44.5,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 42.0,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 12.7,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 86.4,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 6.3,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 4.8,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 41.8,
								},
								{
									itemID = 251132,
									usagePct = 12.2,
								},
								{
									itemID = 193763,
									usagePct = 9.7,
								},
								{
									itemID = 251190,
									usagePct = 9.4,
								},
								{
									itemID = 159288,
									usagePct = 5.6,
								},
								{
									itemID = 272230,
									usagePct = 4.3,
								},
								{
									itemID = 272227,
									usagePct = 2.9,
								},
								{
									itemID = 279217,
									usagePct = 1.8,
								},
							},
							CHEST = {
								{
									itemID = 249973,
									usagePct = 63.9,
								},
								{
									itemID = 271477,
									usagePct = 23.7,
								},
								{
									itemID = 251151,
									usagePct = 2.9,
								},
								{
									itemID = 193753,
									usagePct = 2.8,
								},
								{
									itemID = 239036,
									usagePct = 2.1,
								},
								{
									itemID = 273787,
									usagePct = 1.5,
								},
								{
									itemID = 251193,
									usagePct = 1.4,
								},
								{
									itemID = 268285,
									usagePct = 0.8,
								},
							},
							FEET = {
								{
									itemID = 249381,
									usagePct = 35.5,
								},
								{
									itemID = 193728,
									usagePct = 14.6,
								},
								{
									itemID = 272256,
									usagePct = 6.9,
								},
								{
									itemID = 159412,
									usagePct = 6.1,
								},
								{
									itemID = 273777,
									usagePct = 6.0,
								},
								{
									itemID = 237828,
									usagePct = 4.8,
								},
								{
									itemID = 277770,
									usagePct = 3.4,
								},
								{
									itemID = 268245,
									usagePct = 3.0,
								},
							},
							FINGER1 = {
								{
									itemID = 193708,
									usagePct = 46.2,
								},
								{
									itemID = 251513,
									usagePct = 16.9,
								},
								{
									itemID = 158366,
									usagePct = 16.6,
								},
								{
									itemID = 268290,
									usagePct = 15.3,
								},
								{
									itemID = 249919,
									usagePct = 14.3,
								},
								{
									itemID = 240949,
									usagePct = 12.7,
								},
								{
									itemID = 251136,
									usagePct = 11.9,
								},
								{
									itemID = 273792,
									usagePct = 9.7,
								},
							},
							HANDS = {
								{
									itemID = 249971,
									usagePct = 58.5,
								},
								{
									itemID = 271475,
									usagePct = 23.6,
								},
								{
									itemID = 251214,
									usagePct = 3.8,
								},
								{
									itemID = 159413,
									usagePct = 3.5,
								},
								{
									itemID = 251221,
									usagePct = 2.3,
								},
								{
									itemID = 272257,
									usagePct = 2.0,
								},
								{
									itemID = 251197,
									usagePct = 2.0,
								},
								{
									itemID = 277769,
									usagePct = 1.3,
								},
							},
							HEAD = {
								{
									itemID = 249970,
									usagePct = 61.0,
								},
								{
									itemID = 271474,
									usagePct = 25.3,
								},
								{
									itemID = 251229,
									usagePct = 5.0,
								},
								{
									itemID = 251126,
									usagePct = 2.6,
								},
								{
									itemID = 277768,
									usagePct = 1.8,
								},
								{
									itemID = 268229,
									usagePct = 1.0,
								},
								{
									itemID = 239050,
									usagePct = 0.6,
								},
								{
									itemID = 266432,
									usagePct = 0.5,
								},
							},
							LEGS = {
								{
									itemID = 249969,
									usagePct = 64.5,
								},
								{
									itemID = 271473,
									usagePct = 23.2,
								},
								{
									itemID = 273776,
									usagePct = 2.1,
								},
								{
									itemID = 271878,
									usagePct = 2.0,
								},
								{
									itemID = 251182,
									usagePct = 1.9,
								},
								{
									itemID = 159435,
									usagePct = 1.6,
								},
								{
									itemID = 277767,
									usagePct = 1.0,
								},
								{
									itemID = 272259,
									usagePct = 1.0,
								},
							},
							MAINHAND = {
								{
									itemID = 237839,
									usagePct = 41.3,
								},
								{
									itemID = 251218,
									usagePct = 5.5,
								},
								{
									itemID = 158373,
									usagePct = 5.0,
								},
								{
									itemID = 249277,
									usagePct = 4.9,
								},
								{
									itemID = 268208,
									usagePct = 4.0,
								},
								{
									itemID = 249281,
									usagePct = 3.9,
								},
								{
									itemID = 251168,
									usagePct = 3.6,
								},
								{
									itemID = 251195,
									usagePct = 3.4,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 51.4,
								},
								{
									itemID = 251234,
									usagePct = 17.2,
								},
								{
									itemID = 251142,
									usagePct = 8.2,
								},
								{
									itemID = 251173,
									usagePct = 7.7,
								},
								{
									itemID = 273781,
									usagePct = 4.8,
								},
								{
									itemID = 240950,
									usagePct = 4.4,
								},
								{
									itemID = 272229,
									usagePct = 1.8,
								},
								{
									itemID = 50228,
									usagePct = 1.3,
								},
							},
							OFFHAND = {
								{
									itemID = 249281,
									usagePct = 12.3,
								},
								{
									itemID = 237839,
									usagePct = 12.3,
								},
								{
									itemID = 251218,
									usagePct = 11.5,
								},
								{
									itemID = 158373,
									usagePct = 9.9,
								},
								{
									itemID = 251195,
									usagePct = 7.5,
								},
								{
									itemID = 277808,
									usagePct = 6.7,
								},
								{
									itemID = 272283,
									usagePct = 5.3,
								},
								{
									itemID = 268208,
									usagePct = 5.3,
								},
							},
							SHOULDER = {
								{
									itemID = 271472,
									usagePct = 22.0,
								},
								{
									itemID = 249968,
									usagePct = 22.0,
								},
								{
									itemID = 50234,
									usagePct = 17.4,
								},
								{
									itemID = 277766,
									usagePct = 6.9,
								},
								{
									itemID = 239037,
									usagePct = 6.4,
								},
								{
									itemID = 251138,
									usagePct = 5.9,
								},
								{
									itemID = 272260,
									usagePct = 5.3,
								},
								{
									itemID = 239051,
									usagePct = 4.8,
								},
							},
							TRINKET1 = {
								{
									itemID = 249344,
									usagePct = 58.5,
								},
								{
									itemID = 249343,
									usagePct = 56.6,
								},
								{
									itemID = 273797,
									usagePct = 10.8,
								},
								{
									itemID = 250228,
									usagePct = 6.9,
								},
								{
									itemID = 249342,
									usagePct = 6.1,
								},
								{
									itemID = 250229,
									usagePct = 5.0,
								},
								{
									itemID = 250259,
									usagePct = 5.0,
								},
								{
									itemID = 250238,
									usagePct = 4.6,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 35.9,
								},
								{
									itemID = 249967,
									usagePct = 29.2,
								},
								{
									itemID = 159418,
									usagePct = 7.2,
								},
								{
									itemID = 251144,
									usagePct = 6.9,
								},
								{
									itemID = 277765,
									usagePct = 6.4,
								},
								{
									itemID = 272261,
									usagePct = 4.3,
								},
								{
									itemID = 159442,
									usagePct = 3.3,
								},
								{
									itemID = 237830,
									usagePct = 2.0,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 59.6,
								},
								{
									itemID = 251133,
									usagePct = 10.7,
								},
								{
									itemID = 277764,
									usagePct = 6.1,
								},
								{
									itemID = 159409,
									usagePct = 6.1,
								},
								{
									itemID = 249966,
									usagePct = 3.8,
								},
								{
									itemID = 159425,
									usagePct = 3.8,
								},
								{
									itemID = 268239,
									usagePct = 3.4,
								},
								{
									itemID = 272262,
									usagePct = 1.9,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 48.0,
							},
							{
								itemID = 240898,
								usagePct = 24.6,
							},
							{
								itemID = 240983,
								usagePct = 18.3,
							},
							{
								itemID = 240890,
								usagePct = 2.7,
							},
							{
								itemID = 240906,
								usagePct = 2.1,
							},
							{
								itemID = 240907,
								usagePct = 0.8,
							},
							{
								itemID = 240892,
								usagePct = 0.5,
							},
							{
								itemID = 240900,
								usagePct = 0.5,
							},
							{
								itemID = 240967,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 155636.1,
							metric = "dps",
							outOf = 40,
							rank = 23,
							sample = 300,
							top = 274108.7,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/frost-death-knight",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/death-knight/frost/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 63.5,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 26.0,
								stat = "CRIT",
								weight = 0.888,
							},
							{
								share = 13.8,
								stat = "HASTE",
								weight = 0.391,
							},
							{
								share = 0.5,
								stat = "VERSATILITY",
								weight = 0.032,
							},
						},
						talentBuilds = {
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAzMMjZAz2MzMzMLzMjMjxYYmxgZmZmZmZmZAAAAAAAAAYMbDMgFwywEYsgZGzMDMAMMzAMzgB",
								label = "Deathbringer #1",
								metrics = {
									["Avg dps"] = "169K",
									["Avg key"] = "+11.4",
									["Max dps"] = "239K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 14.1,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAzMjZmZAz2MzMzMLmZkZMGDzMGMzMzMzMzMDAAAAAAAAAjZbgBsAWGmAjFMzYmZgBghZGgZgB",
								label = "Deathbringer #2",
								metrics = {
									["Avg dps"] = "182K",
									["Avg key"] = "+11.6",
									["Max dps"] = "252K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 8.0,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAzMjZmZAzyMzMzMLmZkZMGDzMGMzMzMzMzMDAAAAAAAAAjZbgBsAWGmAjFMzYmZgBghZGgZgB",
								label = "Deathbringer #3",
								metrics = {
									["Avg dps"] = "168K",
									["Avg key"] = "+12.0",
									["Max dps"] = "193K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 2.6,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMDYmZMzMzYY2mZmZmZxMjMjxYYMGMzMzMzMzMDAAAAAAAAAjZbgBsAWGmAjFMzYmZgBghZGAgB",
								label = "Deathbringer #4",
								metrics = {
									["Avg dps"] = "166K",
									["Avg key"] = "+11.7",
									["Max dps"] = "218K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 2.4,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMDYmhZMGDz2MzMzMLzMjMjxYYMGMzMzMzMzMDAAAAAAAAAjZbgBsAWGmAjFMzYmZgBghZGgxgB",
								label = "Deathbringer #5",
								metrics = {
									["Avg dps"] = "169K",
									["Avg key"] = "+11.2",
									["Max dps"] = "211K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 2.4,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMDYmZMjZAzyMzMzMbzMjmZwYYMGMzMzMzMzMDAAAAAAAAAjZbgBsAWGmAjFMzYmZgBghZGgxgB",
								label = "Deathbringer #6",
								metrics = {
									["Avg dps"] = "195K",
									["Avg key"] = "+11.8",
									["Max dps"] = "226K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 1.9,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAzMMjZAz2MzMzMbzMjMjxYYmxgZmZmZmZmZAAAAAAAAAYMbDMgFwywEYsgZGzMDMAMMzAMzgB",
								label = "Deathbringer #7",
								metrics = {
									["Avg dps"] = "169K",
									["Avg key"] = "+11.3",
									["Max dps"] = "212K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 1.9,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAzMjZmZAz2MzMzMbmZkZMGDzMGMzMzMzMzMDAAAAAAAAAjZbgBsAWGmAjFMzYmZgBghZGgZgB",
								label = "Deathbringer #8",
								metrics = {
									["Avg dps"] = "159K",
									["Avg key"] = "+11.5",
									["Max dps"] = "199K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 1.9,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMDYmhZMGDz2MzMzMbzMjmZwYYMGMzMzMzMzMDAAAAAAAAAjZbgBsAWGmAjFMzYmZgBghZGAzgB",
								label = "Deathbringer #9",
								metrics = {
									["Avg dps"] = "207K",
									["Avg key"] = "+11.5",
									["Max dps"] = "247K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 1.4,
							},
							{
								importString = "CsPAAAAAAAAAAAAAAAAAAAAAAMAzMjZmxMDzyMzMzMbGjMjxYYmxgZmZmZmZmZAAAAAAAAAYMbDMgFwywEYsgZGzMDMAMMzAMgB",
								label = "Deathbringer #10",
								metrics = {
									["Avg dps"] = "149K",
									["Avg key"] = "+11.8",
									["Max dps"] = "167K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-death-knight",
								usagePct = 1.4,
							},
						},
					},
					name = "Deathbringer",
				},
			},
			name = "Frost",
		},
		[252] = {
			heroes = {
				[31] = {
					mplus = {
						consumables = {
							{
								category = "POTION",
								itemID = 241288,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 241304,
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
								itemID = 244007,
								slot = "HEAD",
								usagePct = 63.7,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 18.6,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 11.8,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 68.7,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 18.5,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 7.0,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 96.1,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 3.9,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 98.1,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 1.9,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 58.2,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 30.4,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 10.7,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 89.5,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 6.2,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 1.4,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 53.4,
								},
								{
									itemID = 193763,
									usagePct = 10.1,
								},
								{
									itemID = 251132,
									usagePct = 8.6,
								},
								{
									itemID = 251190,
									usagePct = 6.2,
								},
								{
									itemID = 258575,
									usagePct = 5.6,
								},
								{
									itemID = 159288,
									usagePct = 3.1,
								},
								{
									itemID = 272230,
									usagePct = 2.4,
								},
								{
									itemID = 272225,
									usagePct = 2.3,
								},
							},
							CHEST = {
								{
									itemID = 249973,
									usagePct = 80.9,
								},
								{
									itemID = 271477,
									usagePct = 13.1,
								},
								{
									itemID = 251151,
									usagePct = 2.4,
								},
								{
									itemID = 193753,
									usagePct = 1.4,
								},
								{
									itemID = 239036,
									usagePct = 1.0,
								},
								{
									itemID = 268285,
									usagePct = 0.6,
								},
								{
									itemID = 273787,
									usagePct = 0.4,
								},
							},
							FEET = {
								{
									itemID = 249381,
									usagePct = 55.0,
								},
								{
									itemID = 237828,
									usagePct = 7.3,
								},
								{
									itemID = 193728,
									usagePct = 6.2,
								},
								{
									itemID = 159412,
									usagePct = 4.9,
								},
								{
									itemID = 273777,
									usagePct = 3.8,
								},
								{
									itemID = 272256,
									usagePct = 3.7,
								},
								{
									itemID = 249972,
									usagePct = 3.0,
								},
								{
									itemID = 249332,
									usagePct = 2.4,
								},
							},
							FINGER1 = {
								{
									itemID = 193708,
									usagePct = 68.9,
								},
								{
									itemID = 240949,
									usagePct = 24.1,
								},
								{
									itemID = 249919,
									usagePct = 20.1,
								},
								{
									itemID = 158366,
									usagePct = 15.6,
								},
								{
									itemID = 251136,
									usagePct = 11.7,
								},
								{
									itemID = 268290,
									usagePct = 8.0,
								},
								{
									itemID = 251513,
									usagePct = 6.6,
								},
								{
									itemID = 273792,
									usagePct = 5.3,
								},
							},
							HANDS = {
								{
									itemID = 249971,
									usagePct = 78.3,
								},
								{
									itemID = 271475,
									usagePct = 14.3,
								},
								{
									itemID = 159413,
									usagePct = 2.7,
								},
								{
									itemID = 251214,
									usagePct = 1.0,
								},
								{
									itemID = 272257,
									usagePct = 0.8,
								},
								{
									itemID = 258583,
									usagePct = 0.6,
								},
								{
									itemID = 251197,
									usagePct = 0.4,
								},
								{
									itemID = 251221,
									usagePct = 0.4,
								},
							},
							HEAD = {
								{
									itemID = 249970,
									usagePct = 81.3,
								},
								{
									itemID = 271474,
									usagePct = 12.1,
								},
								{
									itemID = 251126,
									usagePct = 3.2,
								},
								{
									itemID = 272258,
									usagePct = 1.0,
								},
								{
									itemID = 251229,
									usagePct = 0.8,
								},
								{
									itemID = 239050,
									usagePct = 0.7,
								},
								{
									itemID = 151333,
									usagePct = 0.4,
								},
								{
									itemID = 277768,
									usagePct = 0.3,
								},
							},
							LEGS = {
								{
									itemID = 249969,
									usagePct = 86.1,
								},
								{
									itemID = 271473,
									usagePct = 9.3,
								},
								{
									itemID = 273776,
									usagePct = 1.3,
								},
								{
									itemID = 251182,
									usagePct = 1.3,
								},
								{
									itemID = 159435,
									usagePct = 0.7,
								},
								{
									itemID = 272259,
									usagePct = 0.6,
								},
								{
									itemID = 275494,
									usagePct = 0.4,
								},
								{
									itemID = 268224,
									usagePct = 0.3,
								},
							},
							MAINHAND = {
								{
									itemID = 251168,
									usagePct = 24.8,
								},
								{
									itemID = 237846,
									usagePct = 20.8,
								},
								{
									itemID = 249277,
									usagePct = 9.7,
								},
								{
									itemID = 193755,
									usagePct = 9.6,
								},
								{
									itemID = 251134,
									usagePct = 7.0,
								},
								{
									itemID = 273782,
									usagePct = 5.5,
								},
								{
									itemID = 251230,
									usagePct = 4.9,
								},
								{
									itemID = 237842,
									usagePct = 2.5,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 65.4,
								},
								{
									itemID = 251234,
									usagePct = 14.6,
								},
								{
									itemID = 251142,
									usagePct = 5.5,
								},
								{
									itemID = 251173,
									usagePct = 5.3,
								},
								{
									itemID = 240950,
									usagePct = 2.7,
								},
								{
									itemID = 273781,
									usagePct = 2.3,
								},
								{
									itemID = 272229,
									usagePct = 1.8,
								},
								{
									itemID = 50228,
									usagePct = 0.7,
								},
							},
							SHOULDER = {
								{
									itemID = 50234,
									usagePct = 35.2,
								},
								{
									itemID = 249968,
									usagePct = 18.6,
								},
								{
									itemID = 271472,
									usagePct = 11.1,
								},
								{
									itemID = 251138,
									usagePct = 10.1,
								},
								{
									itemID = 239037,
									usagePct = 5.3,
								},
								{
									itemID = 277766,
									usagePct = 4.1,
								},
								{
									itemID = 272260,
									usagePct = 3.1,
								},
								{
									itemID = 239051,
									usagePct = 2.7,
								},
							},
							TRINKET1 = {
								{
									itemID = 249344,
									usagePct = 86.2,
								},
								{
									itemID = 249343,
									usagePct = 78.2,
								},
								{
									itemID = 250229,
									usagePct = 4.5,
								},
								{
									itemID = 273797,
									usagePct = 4.4,
								},
								{
									itemID = 250228,
									usagePct = 3.2,
								},
								{
									itemID = 248583,
									usagePct = 2.7,
								},
								{
									itemID = 249342,
									usagePct = 2.5,
								},
								{
									itemID = 264507,
									usagePct = 2.1,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 58.5,
								},
								{
									itemID = 249967,
									usagePct = 25.0,
								},
								{
									itemID = 159418,
									usagePct = 3.8,
								},
								{
									itemID = 251144,
									usagePct = 2.8,
								},
								{
									itemID = 237830,
									usagePct = 2.5,
								},
								{
									itemID = 159442,
									usagePct = 2.1,
								},
								{
									itemID = 272261,
									usagePct = 1.7,
								},
								{
									itemID = 268259,
									usagePct = 1.7,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 75.5,
								},
								{
									itemID = 251133,
									usagePct = 5.3,
								},
								{
									itemID = 277764,
									usagePct = 3.8,
								},
								{
									itemID = 159409,
									usagePct = 3.7,
								},
								{
									itemID = 159425,
									usagePct = 2.5,
								},
								{
									itemID = 249966,
									usagePct = 2.0,
								},
								{
									itemID = 272262,
									usagePct = 1.8,
								},
								{
									itemID = 263193,
									usagePct = 1.4,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 54.5,
							},
							{
								itemID = 240898,
								usagePct = 22.2,
							},
							{
								itemID = 240983,
								usagePct = 17.1,
							},
							{
								itemID = 240900,
								usagePct = 1.1,
							},
							{
								itemID = 240906,
								usagePct = 1.0,
							},
							{
								itemID = 240890,
								usagePct = 0.7,
							},
							{
								itemID = 240967,
								usagePct = 0.6,
							},
							{
								itemID = 240892,
								usagePct = 0.5,
							},
							{
								itemID = 240897,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 180034.1,
							metric = "dps",
							outOf = 40,
							rank = 11,
							sample = 300,
							top = 306291.5,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/unholy-death-knight",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/death-knight/unholy/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 58.9,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 27.5,
								stat = "CRIT",
								weight = 0.916,
							},
							{
								share = 11.0,
								stat = "HASTE",
								weight = 0.277,
							},
							{
								share = 0.4,
								stat = "VERSATILITY",
								weight = 0.022,
							},
						},
						talentBuilds = {
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAwMjZMDDz2MzMTzmZmZMjBAAAAAAAg5BGDDAWmhZ2MzYMjBGYGbassAYZwGGwMAmZmZGzgZGMjxA",
								label = "San'layn #1",
								metrics = {
									["Avg dps"] = "192K",
									["Avg key"] = "+11.5",
									["Max dps"] = "239K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 4.4,
							},
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmhZMGDzyMzMTz2MGzMjBAAAAAAAg5BGjZAwygZ2MzYmZMwAzYTjlNAbD2wAmBwMzMzwgZGMmxA",
								label = "San'layn #2",
								metrics = {
									["Avg dps"] = "162K",
									["Avg key"] = "+12.1",
									["Max dps"] = "217K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 2.0,
							},
						},
					},
					name = "San'layn",
				},
				[32] = {
					mplus = {
						consumables = {
							{
								category = "POTION",
								itemID = 241288,
								primary = true,
							},
							{
								category = "HEALTH_POTION",
								itemID = 241304,
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
								itemID = 244007,
								slot = "HEAD",
								usagePct = 63.7,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 18.6,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 11.8,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 68.7,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 18.5,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 7.0,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 96.1,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 3.9,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 98.1,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 1.9,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 58.2,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 30.4,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 10.7,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 89.5,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 6.2,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 1.4,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 53.4,
								},
								{
									itemID = 193763,
									usagePct = 10.1,
								},
								{
									itemID = 251132,
									usagePct = 8.6,
								},
								{
									itemID = 251190,
									usagePct = 6.2,
								},
								{
									itemID = 258575,
									usagePct = 5.6,
								},
								{
									itemID = 159288,
									usagePct = 3.1,
								},
								{
									itemID = 272230,
									usagePct = 2.4,
								},
								{
									itemID = 272225,
									usagePct = 2.3,
								},
							},
							CHEST = {
								{
									itemID = 249973,
									usagePct = 80.9,
								},
								{
									itemID = 271477,
									usagePct = 13.1,
								},
								{
									itemID = 251151,
									usagePct = 2.4,
								},
								{
									itemID = 193753,
									usagePct = 1.4,
								},
								{
									itemID = 239036,
									usagePct = 1.0,
								},
								{
									itemID = 268285,
									usagePct = 0.6,
								},
								{
									itemID = 273787,
									usagePct = 0.4,
								},
							},
							FEET = {
								{
									itemID = 249381,
									usagePct = 55.0,
								},
								{
									itemID = 237828,
									usagePct = 7.3,
								},
								{
									itemID = 193728,
									usagePct = 6.2,
								},
								{
									itemID = 159412,
									usagePct = 4.9,
								},
								{
									itemID = 273777,
									usagePct = 3.8,
								},
								{
									itemID = 272256,
									usagePct = 3.7,
								},
								{
									itemID = 249972,
									usagePct = 3.0,
								},
								{
									itemID = 249332,
									usagePct = 2.4,
								},
							},
							FINGER1 = {
								{
									itemID = 193708,
									usagePct = 68.9,
								},
								{
									itemID = 240949,
									usagePct = 24.1,
								},
								{
									itemID = 249919,
									usagePct = 20.1,
								},
								{
									itemID = 158366,
									usagePct = 15.6,
								},
								{
									itemID = 251136,
									usagePct = 11.7,
								},
								{
									itemID = 268290,
									usagePct = 8.0,
								},
								{
									itemID = 251513,
									usagePct = 6.6,
								},
								{
									itemID = 273792,
									usagePct = 5.3,
								},
							},
							HANDS = {
								{
									itemID = 249971,
									usagePct = 78.3,
								},
								{
									itemID = 271475,
									usagePct = 14.3,
								},
								{
									itemID = 159413,
									usagePct = 2.7,
								},
								{
									itemID = 251214,
									usagePct = 1.0,
								},
								{
									itemID = 272257,
									usagePct = 0.8,
								},
								{
									itemID = 258583,
									usagePct = 0.6,
								},
								{
									itemID = 251197,
									usagePct = 0.4,
								},
								{
									itemID = 251221,
									usagePct = 0.4,
								},
							},
							HEAD = {
								{
									itemID = 249970,
									usagePct = 81.3,
								},
								{
									itemID = 271474,
									usagePct = 12.1,
								},
								{
									itemID = 251126,
									usagePct = 3.2,
								},
								{
									itemID = 272258,
									usagePct = 1.0,
								},
								{
									itemID = 251229,
									usagePct = 0.8,
								},
								{
									itemID = 239050,
									usagePct = 0.7,
								},
								{
									itemID = 151333,
									usagePct = 0.4,
								},
								{
									itemID = 277768,
									usagePct = 0.3,
								},
							},
							LEGS = {
								{
									itemID = 249969,
									usagePct = 86.1,
								},
								{
									itemID = 271473,
									usagePct = 9.3,
								},
								{
									itemID = 273776,
									usagePct = 1.3,
								},
								{
									itemID = 251182,
									usagePct = 1.3,
								},
								{
									itemID = 159435,
									usagePct = 0.7,
								},
								{
									itemID = 272259,
									usagePct = 0.6,
								},
								{
									itemID = 275494,
									usagePct = 0.4,
								},
								{
									itemID = 268224,
									usagePct = 0.3,
								},
							},
							MAINHAND = {
								{
									itemID = 251168,
									usagePct = 24.8,
								},
								{
									itemID = 237846,
									usagePct = 20.8,
								},
								{
									itemID = 249277,
									usagePct = 9.7,
								},
								{
									itemID = 193755,
									usagePct = 9.6,
								},
								{
									itemID = 251134,
									usagePct = 7.0,
								},
								{
									itemID = 273782,
									usagePct = 5.5,
								},
								{
									itemID = 251230,
									usagePct = 4.9,
								},
								{
									itemID = 237842,
									usagePct = 2.5,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 65.4,
								},
								{
									itemID = 251234,
									usagePct = 14.6,
								},
								{
									itemID = 251142,
									usagePct = 5.5,
								},
								{
									itemID = 251173,
									usagePct = 5.3,
								},
								{
									itemID = 240950,
									usagePct = 2.7,
								},
								{
									itemID = 273781,
									usagePct = 2.3,
								},
								{
									itemID = 272229,
									usagePct = 1.8,
								},
								{
									itemID = 50228,
									usagePct = 0.7,
								},
							},
							SHOULDER = {
								{
									itemID = 50234,
									usagePct = 35.2,
								},
								{
									itemID = 249968,
									usagePct = 18.6,
								},
								{
									itemID = 271472,
									usagePct = 11.1,
								},
								{
									itemID = 251138,
									usagePct = 10.1,
								},
								{
									itemID = 239037,
									usagePct = 5.3,
								},
								{
									itemID = 277766,
									usagePct = 4.1,
								},
								{
									itemID = 272260,
									usagePct = 3.1,
								},
								{
									itemID = 239051,
									usagePct = 2.7,
								},
							},
							TRINKET1 = {
								{
									itemID = 249344,
									usagePct = 86.2,
								},
								{
									itemID = 249343,
									usagePct = 78.2,
								},
								{
									itemID = 250229,
									usagePct = 4.5,
								},
								{
									itemID = 273797,
									usagePct = 4.4,
								},
								{
									itemID = 250228,
									usagePct = 3.2,
								},
								{
									itemID = 248583,
									usagePct = 2.7,
								},
								{
									itemID = 249342,
									usagePct = 2.5,
								},
								{
									itemID = 264507,
									usagePct = 2.1,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 58.5,
								},
								{
									itemID = 249967,
									usagePct = 25.0,
								},
								{
									itemID = 159418,
									usagePct = 3.8,
								},
								{
									itemID = 251144,
									usagePct = 2.8,
								},
								{
									itemID = 237830,
									usagePct = 2.5,
								},
								{
									itemID = 159442,
									usagePct = 2.1,
								},
								{
									itemID = 272261,
									usagePct = 1.7,
								},
								{
									itemID = 268259,
									usagePct = 1.7,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 75.5,
								},
								{
									itemID = 251133,
									usagePct = 5.3,
								},
								{
									itemID = 277764,
									usagePct = 3.8,
								},
								{
									itemID = 159409,
									usagePct = 3.7,
								},
								{
									itemID = 159425,
									usagePct = 2.5,
								},
								{
									itemID = 249966,
									usagePct = 2.0,
								},
								{
									itemID = 272262,
									usagePct = 1.8,
								},
								{
									itemID = 263193,
									usagePct = 1.4,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 54.5,
							},
							{
								itemID = 240898,
								usagePct = 22.2,
							},
							{
								itemID = 240983,
								usagePct = 17.1,
							},
							{
								itemID = 240900,
								usagePct = 1.1,
							},
							{
								itemID = 240906,
								usagePct = 1.0,
							},
							{
								itemID = 240890,
								usagePct = 0.7,
							},
							{
								itemID = 240967,
								usagePct = 0.6,
							},
							{
								itemID = 240892,
								usagePct = 0.5,
							},
							{
								itemID = 240897,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 180034.1,
							metric = "dps",
							outOf = 40,
							rank = 11,
							sample = 300,
							top = 306291.5,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/unholy-death-knight",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/death-knight/unholy/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 58.9,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 27.5,
								stat = "CRIT",
								weight = 0.916,
							},
							{
								share = 11.0,
								stat = "HASTE",
								weight = 0.277,
							},
							{
								share = 0.4,
								stat = "VERSATILITY",
								weight = 0.022,
							},
						},
						talentBuilds = {
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmhZMDDz2MzMTzmxMzMjBAAAAAAAgZGzYAwyMmZ2MzYMDYzsZYgBmNGasgBMDAjZmxMAzMzYMA",
								label = "Rider of the Apocalypse #1",
								metrics = {
									["Avg dps"] = "182K",
									["Avg key"] = "+11.7",
									["Max dps"] = "195K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 3.7,
							},
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmhZMGDz2MzMTz2MzYMDAAAAAAAAMzYYAwyMmZ2MzYmZAbmNDDMwsxQjFMgZAYMzMmBYmZmZMA",
								label = "Rider of the Apocalypse #2",
								metrics = {
									["Avg dps"] = "179K",
									["Avg key"] = "+11.9",
									["Max dps"] = "223K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 3.5,
							},
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmZMjZMYWGzMTjZmxMzYAAAAAAAAYmxwAglZMzsZmxMzA2MbGGYgZjhGLYAzAwYmZMDwMzYGD",
								label = "Rider of the Apocalypse #3",
								metrics = {
									["Avg dps"] = "195K",
									["Avg key"] = "+12.0",
									["Max dps"] = "240K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 3.1,
							},
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmhZMjBzyMzMTjZmxMzYAAAAAAAAYmxwAglZMzsZmxMzA2MbGGYgZjhGLYAzAwYmZMDwMzYGD",
								label = "Rider of the Apocalypse #4",
								metrics = {
									["Avg dps"] = "184K",
									["Avg key"] = "+12.4",
									["Max dps"] = "215K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 2.3,
							},
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmZMjZMY2GzMTjZmxMzYAAAAAAAAYmxwAglZMzsZmxMzA2MbGGYgZjhGLYAzAwYmZMDwMzYGD",
								label = "Rider of the Apocalypse #5",
								metrics = {
									["Avg dps"] = "194K",
									["Avg key"] = "+12.1",
									["Max dps"] = "214K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 1.8,
							},
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmhZMGDz2MzMTjZmxMzYAAAAAAAAYmxwAglZMzsZmxMzAWMLGGYgZjhGLYAzAwYmZMDwMzYGD",
								label = "Rider of the Apocalypse #6",
								metrics = {
									["Avg dps"] = "144K",
									["Avg key"] = "+11.7",
									["Max dps"] = "163K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 1.5,
							},
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmZYMmZY2GzMTz2MzYmZMDAAAAAAAgZGDDAWmxMzmZGzMDYzsZYgBmNGasgBMDAjZmxMAzMYMA",
								label = "Rider of the Apocalypse #7",
								metrics = {
									["Avg dps"] = "189K",
									["Avg key"] = "+12.4",
									["Max dps"] = "200K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 1.4,
							},
							{
								importString = "CwPAAAAAAAAAAAAAAAAAAAAAAAYmZMjxYY2mZmZaYmxMzYAAAAAAAAYmxwAglZMzsZmxMzA2MbGGYgZjhGLYAzAwYmZMDwMzMGD",
								label = "Rider of the Apocalypse #8",
								metrics = {
									["Avg dps"] = "183K",
									["Avg key"] = "+12.2",
									["Max dps"] = "199K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/unholy-death-knight",
								usagePct = 1.3,
							},
						},
					},
					name = "Rider of the Apocalypse",
				},
			},
			name = "Unholy",
		},
	},
})

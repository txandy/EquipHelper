-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

ns.RegisterClassData("WARRIOR", {
	specs = {
		[71] = {
			heroes = {
				[60] = {
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
								itemID = 241308,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241288,
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
								itemID = 242273,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242274,
								primary = false,
							},
							{
								category = "FOOD",
								itemID = 255848,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 49.9,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 36.2,
							},
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 9.7,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 56.9,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 31.4,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 4.2,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 72.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 16.4,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 5.1,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 94.7,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 4.1,
							},
							{
								itemID = 243946,
								slot = "CHEST",
								usagePct = 0.8,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 58.7,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 39.0,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.8,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 72.3,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 18.9,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 7.7,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 87.8,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 4.9,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 3.2,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 29.6,
								},
								{
									itemID = 193763,
									usagePct = 19.5,
								},
								{
									itemID = 251132,
									usagePct = 12.9,
								},
								{
									itemID = 251190,
									usagePct = 7.7,
								},
								{
									itemID = 272225,
									usagePct = 4.9,
								},
								{
									itemID = 159288,
									usagePct = 4.2,
								},
								{
									itemID = 272230,
									usagePct = 3.6,
								},
								{
									itemID = 260312,
									usagePct = 2.7,
								},
							},
							CHEST = {
								{
									itemID = 249955,
									usagePct = 64.9,
								},
								{
									itemID = 271459,
									usagePct = 19.0,
								},
								{
									itemID = 251151,
									usagePct = 3.7,
								},
								{
									itemID = 193753,
									usagePct = 3.3,
								},
								{
									itemID = 273787,
									usagePct = 3.3,
								},
								{
									itemID = 251193,
									usagePct = 1.7,
								},
								{
									itemID = 239036,
									usagePct = 1.3,
								},
								{
									itemID = 272255,
									usagePct = 0.9,
								},
							},
							FEET = {
								{
									itemID = 249954,
									usagePct = 23.7,
								},
								{
									itemID = 237828,
									usagePct = 14.4,
								},
								{
									itemID = 273777,
									usagePct = 11.1,
								},
								{
									itemID = 193728,
									usagePct = 9.5,
								},
								{
									itemID = 159412,
									usagePct = 8.5,
								},
								{
									itemID = 272256,
									usagePct = 7.3,
								},
								{
									itemID = 268245,
									usagePct = 7.1,
								},
								{
									itemID = 249381,
									usagePct = 3.2,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 42.0,
								},
								{
									itemID = 251217,
									usagePct = 28.9,
								},
								{
									itemID = 273792,
									usagePct = 18.1,
								},
								{
									itemID = 49812,
									usagePct = 17.6,
								},
								{
									itemID = 252258,
									usagePct = 17.6,
								},
								{
									itemID = 251136,
									usagePct = 12.6,
								},
								{
									itemID = 158366,
									usagePct = 10.2,
								},
								{
									itemID = 251148,
									usagePct = 6.9,
								},
							},
							HANDS = {
								{
									itemID = 249953,
									usagePct = 26.6,
								},
								{
									itemID = 271457,
									usagePct = 22.5,
								},
								{
									itemID = 251214,
									usagePct = 11.6,
								},
								{
									itemID = 159413,
									usagePct = 8.2,
								},
								{
									itemID = 151332,
									usagePct = 5.8,
								},
								{
									itemID = 251221,
									usagePct = 5.7,
								},
								{
									itemID = 251197,
									usagePct = 4.9,
								},
								{
									itemID = 251081,
									usagePct = 4.4,
								},
							},
							HEAD = {
								{
									itemID = 249952,
									usagePct = 59.5,
								},
								{
									itemID = 271456,
									usagePct = 20.3,
								},
								{
									itemID = 251229,
									usagePct = 5.9,
								},
								{
									itemID = 251126,
									usagePct = 3.7,
								},
								{
									itemID = 277768,
									usagePct = 3.0,
								},
								{
									itemID = 239050,
									usagePct = 2.6,
								},
								{
									itemID = 49819,
									usagePct = 1.7,
								},
								{
									itemID = 272258,
									usagePct = 1.5,
								},
							},
							LEGS = {
								{
									itemID = 249951,
									usagePct = 63.8,
								},
								{
									itemID = 271455,
									usagePct = 17.4,
								},
								{
									itemID = 273776,
									usagePct = 5.5,
								},
								{
									itemID = 159435,
									usagePct = 4.4,
								},
								{
									itemID = 251182,
									usagePct = 3.7,
								},
								{
									itemID = 277767,
									usagePct = 2.1,
								},
								{
									itemID = 257002,
									usagePct = 0.9,
								},
								{
									itemID = 272259,
									usagePct = 0.5,
								},
							},
							MAINHAND = {
								{
									itemID = 237846,
									usagePct = 37.0,
								},
								{
									itemID = 193755,
									usagePct = 13.0,
								},
								{
									itemID = 49802,
									usagePct = 9.9,
								},
								{
									itemID = 251134,
									usagePct = 9.0,
								},
								{
									itemID = 273782,
									usagePct = 8.4,
								},
								{
									itemID = 251230,
									usagePct = 5.1,
								},
								{
									itemID = 251181,
									usagePct = 3.7,
								},
								{
									itemID = 272280,
									usagePct = 3.3,
								},
							},
							NECK = {
								{
									itemID = 273781,
									usagePct = 17.9,
								},
								{
									itemID = 251173,
									usagePct = 15.8,
								},
								{
									itemID = 50228,
									usagePct = 15.0,
								},
								{
									itemID = 268291,
									usagePct = 13.4,
								},
								{
									itemID = 251234,
									usagePct = 12.7,
								},
								{
									itemID = 272229,
									usagePct = 6.9,
								},
								{
									itemID = 251142,
									usagePct = 5.0,
								},
								{
									itemID = 265739,
									usagePct = 3.0,
								},
							},
							SHOULDER = {
								{
									itemID = 249950,
									usagePct = 63.5,
								},
								{
									itemID = 271454,
									usagePct = 17.0,
								},
								{
									itemID = 251138,
									usagePct = 5.9,
								},
								{
									itemID = 239037,
									usagePct = 5.1,
								},
								{
									itemID = 277766,
									usagePct = 3.1,
								},
								{
									itemID = 239051,
									usagePct = 2.8,
								},
								{
									itemID = 272260,
									usagePct = 1.5,
								},
								{
									itemID = 256998,
									usagePct = 0.6,
								},
							},
							TRINKET1 = {
								{
									itemID = 249342,
									usagePct = 56.4,
								},
								{
									itemID = 249343,
									usagePct = 30.6,
								},
								{
									itemID = 273796,
									usagePct = 18.0,
								},
								{
									itemID = 250229,
									usagePct = 12.3,
								},
								{
									itemID = 260235,
									usagePct = 9.0,
								},
								{
									itemID = 252420,
									usagePct = 8.0,
								},
								{
									itemID = 250228,
									usagePct = 8.0,
								},
								{
									itemID = 274493,
									usagePct = 6.4,
								},
							},
							WAIST = {
								{
									itemID = 249949,
									usagePct = 36.0,
								},
								{
									itemID = 268289,
									usagePct = 17.5,
								},
								{
									itemID = 159418,
									usagePct = 12.1,
								},
								{
									itemID = 251144,
									usagePct = 7.7,
								},
								{
									itemID = 159442,
									usagePct = 7.6,
								},
								{
									itemID = 277765,
									usagePct = 6.7,
								},
								{
									itemID = 49808,
									usagePct = 2.7,
								},
								{
									itemID = 272261,
									usagePct = 2.6,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 54.5,
								},
								{
									itemID = 159409,
									usagePct = 11.7,
								},
								{
									itemID = 251133,
									usagePct = 10.5,
								},
								{
									itemID = 277764,
									usagePct = 4.9,
								},
								{
									itemID = 159425,
									usagePct = 4.4,
								},
								{
									itemID = 276641,
									usagePct = 3.1,
								},
								{
									itemID = 272262,
									usagePct = 2.6,
								},
								{
									itemID = 151328,
									usagePct = 2.3,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 48.1,
							},
							{
								itemID = 240983,
								usagePct = 16.4,
							},
							{
								itemID = 240890,
								usagePct = 14.2,
							},
							{
								itemID = 240908,
								usagePct = 6.2,
							},
							{
								itemID = 240892,
								usagePct = 3.3,
							},
							{
								itemID = 240900,
								usagePct = 3.2,
							},
							{
								itemID = 240967,
								usagePct = 3.0,
							},
							{
								itemID = 240898,
								usagePct = 2.0,
							},
							{
								itemID = 240914,
								usagePct = 0.6,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 205905.5,
							metric = "dps",
							outOf = 40,
							rank = 2,
							sample = 300,
							top = 319743.7,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/arms-warrior",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/warrior/arms/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 26.3,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 30.0,
								stat = "CRIT",
								weight = 0.885,
							},
							{
								share = 20.2,
								stat = "MASTERY",
								weight = 0.467,
							},
							{
								share = 0.9,
								stat = "VERSATILITY",
								weight = 0.061,
							},
						},
						talentBuilds = {
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphxYmZzMzMzYmxMDAAAAgxyMDMhxy2AbgBMDTgZwGYmhhBzyMbDwMDAmhBA",
								label = "Slayer #1",
								metrics = {
									["Avg dps"] = "215K",
									["Avg key"] = "+12.7",
									["Max dps"] = "252K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 26.5,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphZGmZzMzMzYmxMDAAAAgxyMDMhxy2ALgBMDTgZwGYmhhBzyMbDwMDAmhBA",
								label = "Slayer #2",
								metrics = {
									["Avg dps"] = "211K",
									["Avg key"] = "+12.9",
									["Max dps"] = "238K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 10.4,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphxwMbLzMzMjZGzMAAAAAGLzMwEGLbDsAGwMMBmBbgZGGGMLzsNAzMAYGGA",
								label = "Slayer #3",
								metrics = {
									["Avg dps"] = "209K",
									["Avg key"] = "+13.0",
									["Max dps"] = "270K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 8.0,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphxYmZzMzMzYmxMDAAAAgxyMDMhxy2ALgBMDTgZwGYmhhBzyMbDwMDAmhBA",
								label = "Slayer #4",
								metrics = {
									["Avg dps"] = "227K",
									["Avg key"] = "+12.6",
									["Max dps"] = "283K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 7.6,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphZGzMbmZmZGmxMDAAAAgxyMDMhxy2AbgBMDTgZwGYmhhBzyMbDwMDAmhBA",
								label = "Slayer #5",
								metrics = {
									["Avg dps"] = "223K",
									["Avg key"] = "+13.5",
									["Max dps"] = "272K",
									["Max key"] = "+16",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 6.7,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphZGzMbmZmZGmxMDAAAAgxyMDMhxy2ALgBMDTgZwGYmhhBzyMbDwMDAmhBA",
								label = "Slayer #6",
								metrics = {
									["Avg dps"] = "201K",
									["Avg key"] = "+12.6",
									["Max dps"] = "211K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 3.7,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphZGmZbZmZmZYGzMAAAAAGLzMwEGLbDsAGwMMBmBbgZGGGMLzsNAzMAYGGA",
								label = "Slayer #7",
								metrics = {
									["Avg dps"] = "214K",
									["Avg key"] = "+12.7",
									["Max dps"] = "243K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 2.7,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphZGmZzMzMzwMmZAAAAAMWmZgJMW2GYBMgZYCMD2AzM2GGMLzsNAzMAYGGA",
								label = "Slayer #8",
								metrics = {
									["Avg dps"] = "248K",
									["Avg key"] = "+13.0",
									["Max dps"] = "274K",
									["Max key"] = "+16",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 1.8,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphxYmZxMzMzYmxMDAAAAgxyMDMhxy2AbgBMDTgZwGYmhhBzyMbDwMDAmhBA",
								label = "Slayer #9",
								metrics = {
									["Avg dps"] = "197K",
									["Avg key"] = "+12.9",
									["Max dps"] = "197K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 1.8,
							},
							{
								importString = "CcEAAAAAAAAAAAAAAAAAAAAAAgZmZmFzYmZGAAAghphxYmZbZmZmZYGzMAAAAAGLzMwEGLbDsBGwMMBmBbgZGGGMLzsNAzMAYGGA",
								label = "Slayer #10",
								metrics = {
									["Avg dps"] = "267K",
									["Avg key"] = "+12.3",
									["Max dps"] = "267K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arms-warrior",
								usagePct = 1.3,
							},
						},
					},
					name = "Slayer",
				},
			},
			name = "Arms",
		},
		[72] = {
			heroes = {
				[60] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241322,
								primary = true,
							},
							{
								category = "FLASK",
								itemID = 241324,
								primary = false,
							},
							{
								category = "POTION",
								itemID = 241308,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241288,
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
								itemID = 242273,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242274,
								primary = false,
							},
							{
								category = "FOOD",
								itemID = 255848,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 48.6,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 32.6,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 9.2,
							},
							{
								itemID = 244031,
								slot = "OFFHAND",
								usagePct = 50.7,
							},
							{
								itemID = 243973,
								slot = "OFFHAND",
								usagePct = 31.8,
							},
							{
								itemID = 243971,
								slot = "OFFHAND",
								usagePct = 8.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 45.1,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 42.8,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 6.0,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 57.4,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 29.5,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 5.2,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 92.1,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 6.9,
							},
							{
								itemID = 243946,
								slot = "CHEST",
								usagePct = 1.0,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 58.5,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 41.1,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 0.4,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 64.0,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 26.3,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 9.3,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 68.1,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 17.3,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 8.9,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 25.5,
								},
								{
									itemID = 193763,
									usagePct = 13.4,
								},
								{
									itemID = 251190,
									usagePct = 11.3,
								},
								{
									itemID = 159288,
									usagePct = 7.2,
								},
								{
									itemID = 251132,
									usagePct = 6.3,
								},
								{
									itemID = 260312,
									usagePct = 4.4,
								},
								{
									itemID = 272230,
									usagePct = 3.7,
								},
								{
									itemID = 279217,
									usagePct = 3.4,
								},
							},
							CHEST = {
								{
									itemID = 249955,
									usagePct = 70.7,
								},
								{
									itemID = 271459,
									usagePct = 13.8,
								},
								{
									itemID = 251151,
									usagePct = 3.5,
								},
								{
									itemID = 268285,
									usagePct = 3.1,
								},
								{
									itemID = 239036,
									usagePct = 2.8,
								},
								{
									itemID = 251193,
									usagePct = 2.4,
								},
								{
									itemID = 193753,
									usagePct = 2.3,
								},
								{
									itemID = 273787,
									usagePct = 0.8,
								},
							},
							FEET = {
								{
									itemID = 249954,
									usagePct = 18.3,
								},
								{
									itemID = 249332,
									usagePct = 13.0,
								},
								{
									itemID = 251107,
									usagePct = 10.8,
								},
								{
									itemID = 273777,
									usagePct = 9.3,
								},
								{
									itemID = 193728,
									usagePct = 9.2,
								},
								{
									itemID = 272256,
									usagePct = 8.3,
								},
								{
									itemID = 237828,
									usagePct = 5.2,
								},
								{
									itemID = 249381,
									usagePct = 4.9,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 62.8,
								},
								{
									itemID = 251093,
									usagePct = 27.5,
								},
								{
									itemID = 252258,
									usagePct = 20.1,
								},
								{
									itemID = 251217,
									usagePct = 13.4,
								},
								{
									itemID = 251115,
									usagePct = 11.3,
								},
								{
									itemID = 272147,
									usagePct = 6.5,
								},
								{
									itemID = 158366,
									usagePct = 5.5,
								},
								{
									itemID = 273792,
									usagePct = 5.4,
								},
							},
							HANDS = {
								{
									itemID = 249953,
									usagePct = 28.0,
								},
								{
									itemID = 271457,
									usagePct = 19.7,
								},
								{
									itemID = 151332,
									usagePct = 18.0,
								},
								{
									itemID = 251214,
									usagePct = 7.5,
								},
								{
									itemID = 251221,
									usagePct = 7.0,
								},
								{
									itemID = 251197,
									usagePct = 5.8,
								},
								{
									itemID = 159413,
									usagePct = 4.5,
								},
								{
									itemID = 272257,
									usagePct = 3.4,
								},
							},
							HEAD = {
								{
									itemID = 249952,
									usagePct = 71.8,
								},
								{
									itemID = 271456,
									usagePct = 14.8,
								},
								{
									itemID = 251126,
									usagePct = 4.2,
								},
								{
									itemID = 251229,
									usagePct = 3.7,
								},
								{
									itemID = 272258,
									usagePct = 1.8,
								},
								{
									itemID = 239050,
									usagePct = 1.7,
								},
								{
									itemID = 277768,
									usagePct = 1.1,
								},
								{
									itemID = 266432,
									usagePct = 0.6,
								},
							},
							LEGS = {
								{
									itemID = 249951,
									usagePct = 75.4,
								},
								{
									itemID = 271455,
									usagePct = 8.9,
								},
								{
									itemID = 273776,
									usagePct = 3.1,
								},
								{
									itemID = 277767,
									usagePct = 2.7,
								},
								{
									itemID = 272259,
									usagePct = 2.4,
								},
								{
									itemID = 251182,
									usagePct = 1.5,
								},
								{
									itemID = 251118,
									usagePct = 1.4,
								},
								{
									itemID = 268224,
									usagePct = 1.3,
								},
							},
							MAINHAND = {
								{
									itemID = 237846,
									usagePct = 31.8,
								},
								{
									itemID = 251117,
									usagePct = 12.3,
								},
								{
									itemID = 193755,
									usagePct = 6.9,
								},
								{
									itemID = 251168,
									usagePct = 5.6,
								},
								{
									itemID = 49802,
									usagePct = 5.2,
								},
								{
									itemID = 251230,
									usagePct = 4.8,
								},
								{
									itemID = 159644,
									usagePct = 4.8,
								},
								{
									itemID = 251134,
									usagePct = 3.8,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 52.4,
								},
								{
									itemID = 251142,
									usagePct = 11.0,
								},
								{
									itemID = 251234,
									usagePct = 8.7,
								},
								{
									itemID = 273781,
									usagePct = 7.2,
								},
								{
									itemID = 251173,
									usagePct = 4.2,
								},
								{
									itemID = 250247,
									usagePct = 3.1,
								},
								{
									itemID = 240950,
									usagePct = 3.0,
								},
								{
									itemID = 272229,
									usagePct = 2.3,
								},
							},
							OFFHAND = {
								{
									itemID = 237846,
									usagePct = 29.5,
								},
								{
									itemID = 251117,
									usagePct = 12.6,
								},
								{
									itemID = 193755,
									usagePct = 8.7,
								},
								{
									itemID = 251230,
									usagePct = 6.5,
								},
								{
									itemID = 251181,
									usagePct = 4.9,
								},
								{
									itemID = 251134,
									usagePct = 4.4,
								},
								{
									itemID = 273782,
									usagePct = 3.8,
								},
								{
									itemID = 159644,
									usagePct = 3.4,
								},
							},
							SHOULDER = {
								{
									itemID = 249950,
									usagePct = 73.8,
								},
								{
									itemID = 271454,
									usagePct = 13.7,
								},
								{
									itemID = 251138,
									usagePct = 5.6,
								},
								{
									itemID = 239037,
									usagePct = 2.8,
								},
								{
									itemID = 239051,
									usagePct = 2.0,
								},
								{
									itemID = 277766,
									usagePct = 1.3,
								},
								{
									itemID = 272260,
									usagePct = 0.4,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 69.0,
								},
								{
									itemID = 249342,
									usagePct = 60.3,
								},
								{
									itemID = 250229,
									usagePct = 6.6,
								},
								{
									itemID = 193701,
									usagePct = 6.5,
								},
								{
									itemID = 252420,
									usagePct = 5.4,
								},
								{
									itemID = 250259,
									usagePct = 5.2,
								},
								{
									itemID = 250228,
									usagePct = 4.5,
								},
								{
									itemID = 268292,
									usagePct = 3.7,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 40.3,
								},
								{
									itemID = 249949,
									usagePct = 20.8,
								},
								{
									itemID = 159418,
									usagePct = 7.5,
								},
								{
									itemID = 277765,
									usagePct = 6.6,
								},
								{
									itemID = 251144,
									usagePct = 6.3,
								},
								{
									itemID = 151327,
									usagePct = 5.6,
								},
								{
									itemID = 159442,
									usagePct = 4.6,
								},
								{
									itemID = 272261,
									usagePct = 2.4,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 55.8,
								},
								{
									itemID = 251133,
									usagePct = 8.3,
								},
								{
									itemID = 249326,
									usagePct = 7.9,
								},
								{
									itemID = 263193,
									usagePct = 4.8,
								},
								{
									itemID = 159409,
									usagePct = 4.5,
								},
								{
									itemID = 272262,
									usagePct = 3.8,
								},
								{
									itemID = 159425,
									usagePct = 3.4,
								},
								{
									itemID = 276641,
									usagePct = 2.8,
								},
							},
						},
						gems = {
							{
								itemID = 240900,
								usagePct = 28.3,
							},
							{
								itemID = 240983,
								usagePct = 15.8,
							},
							{
								itemID = 240892,
								usagePct = 14.4,
							},
							{
								itemID = 240906,
								usagePct = 12.0,
							},
							{
								itemID = 240890,
								usagePct = 7.7,
							},
							{
								itemID = 240908,
								usagePct = 7.6,
							},
							{
								itemID = 240898,
								usagePct = 6.7,
							},
							{
								itemID = 240967,
								usagePct = 2.2,
							},
							{
								itemID = 240894,
								usagePct = 1.0,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 177110.1,
							metric = "dps",
							outOf = 40,
							rank = 13,
							sample = 300,
							top = 306863.8,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/fury-warrior",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/warrior/fury/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 26.4,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 42.0,
								stat = "MASTERY",
								weight = 0.959,
							},
							{
								share = 19.5,
								stat = "CRIT",
								weight = 0.55,
							},
							{
								share = 1.7,
								stat = "VERSATILITY",
								weight = 0.101,
							},
						},
						talentBuilds = {
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjxMzmZmZmZmZMzMzMzYmlZMmZMbmZmBAAixy2ALgBMDTgZYDYmZzAAAMzwYWGYwYA",
								label = "Slayer #1",
								metrics = {
									["Avg dps"] = "174K",
									["Avg key"] = "+11.4",
									["Max dps"] = "221K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 10.6,
							},
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjhZ2WmZmZmZmxMjZmZmZWmZGjZmtxYGAAIGLLDsAGwMMBmhNAzgBAAMzYYWmZGDGD",
								label = "Slayer #2",
								metrics = {
									["Avg dps"] = "207K",
									["Avg key"] = "+11.9",
									["Max dps"] = "272K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 8.0,
							},
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjxMz2yMzMzMzMmZmZmZMzyMGzMmNzMzAAAxYZbgFwAmhJwMsBMzwAAAMzwYWGYwYA",
								label = "Slayer #3",
								metrics = {
									["Avg dps"] = "196K",
									["Avg key"] = "+11.5",
									["Max dps"] = "246K",
									["Max key"] = "+16",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 3.1,
							},
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjxMzmZmZmZmZMzMzMzYmlZMmZMbmZmBAAixy2ALgBMDTgZYDYmhBAAYmhxsMMGMG",
								label = "Slayer #4",
								metrics = {
									["Avg dps"] = "190K",
									["Avg key"] = "+11.4",
									["Max dps"] = "212K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 2.8,
							},
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDzMmZ2MzMzMzMjZmZmZGzsMjxMjZzMzMAAQMW2GYBMgZYCMDbAzMMAAAzMMmlBGMG",
								label = "Slayer #5",
								metrics = {
									["Avg dps"] = "183K",
									["Avg key"] = "+11.4",
									["Max dps"] = "217K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 2.0,
							},
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjxMzmZmZmZmZMzMzMzYmlZMmZMbmZmBAAixy2ALgBMDTgZYDYmhxCAAMzwYWGYwYA",
								label = "Slayer #6",
								metrics = {
									["Avg dps"] = "172K",
									["Avg key"] = "+11.8",
									["Max dps"] = "172K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 1.7,
							},
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjxMz2yMzMzMmxMzMzMjZWmxYmxsZmZGAAIGLbDsAGwMMBmhNgZGGAAgZGGzywYwYA",
								label = "Slayer #7",
								metrics = {
									["Avg dps"] = "222K",
									["Avg key"] = "+11.7",
									["Max dps"] = "243K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 1.7,
							},
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjhZ2WmZmZmZmxMjZMzMzyMzYMzsNmHYGAAIGLLDsAGwMMBmhNAzgBAAMzYYWmZGDGD",
								label = "Slayer #8",
								metrics = {
									["Avg dps"] = "195K",
									["Avg key"] = "+11.5",
									["Max dps"] = "204K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 1.5,
							},
						},
					},
					name = "Slayer",
				},
				[61] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241322,
								primary = true,
							},
							{
								category = "FLASK",
								itemID = 241324,
								primary = false,
							},
							{
								category = "POTION",
								itemID = 241308,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241288,
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
								itemID = 242273,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242274,
								primary = false,
							},
							{
								category = "FOOD",
								itemID = 255848,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 48.6,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 32.6,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 9.2,
							},
							{
								itemID = 244031,
								slot = "OFFHAND",
								usagePct = 50.7,
							},
							{
								itemID = 243973,
								slot = "OFFHAND",
								usagePct = 31.8,
							},
							{
								itemID = 243971,
								slot = "OFFHAND",
								usagePct = 8.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 45.1,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 42.8,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 6.0,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 57.4,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 29.5,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 5.2,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 92.1,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 6.9,
							},
							{
								itemID = 243946,
								slot = "CHEST",
								usagePct = 1.0,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 58.5,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 41.1,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 0.4,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 64.0,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 26.3,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 9.3,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 68.1,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 17.3,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 8.9,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 25.5,
								},
								{
									itemID = 193763,
									usagePct = 13.4,
								},
								{
									itemID = 251190,
									usagePct = 11.3,
								},
								{
									itemID = 159288,
									usagePct = 7.2,
								},
								{
									itemID = 251132,
									usagePct = 6.3,
								},
								{
									itemID = 260312,
									usagePct = 4.4,
								},
								{
									itemID = 272230,
									usagePct = 3.7,
								},
								{
									itemID = 279217,
									usagePct = 3.4,
								},
							},
							CHEST = {
								{
									itemID = 249955,
									usagePct = 70.7,
								},
								{
									itemID = 271459,
									usagePct = 13.8,
								},
								{
									itemID = 251151,
									usagePct = 3.5,
								},
								{
									itemID = 268285,
									usagePct = 3.1,
								},
								{
									itemID = 239036,
									usagePct = 2.8,
								},
								{
									itemID = 251193,
									usagePct = 2.4,
								},
								{
									itemID = 193753,
									usagePct = 2.3,
								},
								{
									itemID = 273787,
									usagePct = 0.8,
								},
							},
							FEET = {
								{
									itemID = 249954,
									usagePct = 18.3,
								},
								{
									itemID = 249332,
									usagePct = 13.0,
								},
								{
									itemID = 251107,
									usagePct = 10.8,
								},
								{
									itemID = 273777,
									usagePct = 9.3,
								},
								{
									itemID = 193728,
									usagePct = 9.2,
								},
								{
									itemID = 272256,
									usagePct = 8.3,
								},
								{
									itemID = 237828,
									usagePct = 5.2,
								},
								{
									itemID = 249381,
									usagePct = 4.9,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 62.8,
								},
								{
									itemID = 251093,
									usagePct = 27.5,
								},
								{
									itemID = 252258,
									usagePct = 20.1,
								},
								{
									itemID = 251217,
									usagePct = 13.4,
								},
								{
									itemID = 251115,
									usagePct = 11.3,
								},
								{
									itemID = 272147,
									usagePct = 6.5,
								},
								{
									itemID = 158366,
									usagePct = 5.5,
								},
								{
									itemID = 273792,
									usagePct = 5.4,
								},
							},
							HANDS = {
								{
									itemID = 249953,
									usagePct = 28.0,
								},
								{
									itemID = 271457,
									usagePct = 19.7,
								},
								{
									itemID = 151332,
									usagePct = 18.0,
								},
								{
									itemID = 251214,
									usagePct = 7.5,
								},
								{
									itemID = 251221,
									usagePct = 7.0,
								},
								{
									itemID = 251197,
									usagePct = 5.8,
								},
								{
									itemID = 159413,
									usagePct = 4.5,
								},
								{
									itemID = 272257,
									usagePct = 3.4,
								},
							},
							HEAD = {
								{
									itemID = 249952,
									usagePct = 71.8,
								},
								{
									itemID = 271456,
									usagePct = 14.8,
								},
								{
									itemID = 251126,
									usagePct = 4.2,
								},
								{
									itemID = 251229,
									usagePct = 3.7,
								},
								{
									itemID = 272258,
									usagePct = 1.8,
								},
								{
									itemID = 239050,
									usagePct = 1.7,
								},
								{
									itemID = 277768,
									usagePct = 1.1,
								},
								{
									itemID = 266432,
									usagePct = 0.6,
								},
							},
							LEGS = {
								{
									itemID = 249951,
									usagePct = 75.4,
								},
								{
									itemID = 271455,
									usagePct = 8.9,
								},
								{
									itemID = 273776,
									usagePct = 3.1,
								},
								{
									itemID = 277767,
									usagePct = 2.7,
								},
								{
									itemID = 272259,
									usagePct = 2.4,
								},
								{
									itemID = 251182,
									usagePct = 1.5,
								},
								{
									itemID = 251118,
									usagePct = 1.4,
								},
								{
									itemID = 268224,
									usagePct = 1.3,
								},
							},
							MAINHAND = {
								{
									itemID = 237846,
									usagePct = 31.8,
								},
								{
									itemID = 251117,
									usagePct = 12.3,
								},
								{
									itemID = 193755,
									usagePct = 6.9,
								},
								{
									itemID = 251168,
									usagePct = 5.6,
								},
								{
									itemID = 49802,
									usagePct = 5.2,
								},
								{
									itemID = 251230,
									usagePct = 4.8,
								},
								{
									itemID = 159644,
									usagePct = 4.8,
								},
								{
									itemID = 251134,
									usagePct = 3.8,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 52.4,
								},
								{
									itemID = 251142,
									usagePct = 11.0,
								},
								{
									itemID = 251234,
									usagePct = 8.7,
								},
								{
									itemID = 273781,
									usagePct = 7.2,
								},
								{
									itemID = 251173,
									usagePct = 4.2,
								},
								{
									itemID = 250247,
									usagePct = 3.1,
								},
								{
									itemID = 240950,
									usagePct = 3.0,
								},
								{
									itemID = 272229,
									usagePct = 2.3,
								},
							},
							OFFHAND = {
								{
									itemID = 237846,
									usagePct = 29.5,
								},
								{
									itemID = 251117,
									usagePct = 12.6,
								},
								{
									itemID = 193755,
									usagePct = 8.7,
								},
								{
									itemID = 251230,
									usagePct = 6.5,
								},
								{
									itemID = 251181,
									usagePct = 4.9,
								},
								{
									itemID = 251134,
									usagePct = 4.4,
								},
								{
									itemID = 273782,
									usagePct = 3.8,
								},
								{
									itemID = 159644,
									usagePct = 3.4,
								},
							},
							SHOULDER = {
								{
									itemID = 249950,
									usagePct = 73.8,
								},
								{
									itemID = 271454,
									usagePct = 13.7,
								},
								{
									itemID = 251138,
									usagePct = 5.6,
								},
								{
									itemID = 239037,
									usagePct = 2.8,
								},
								{
									itemID = 239051,
									usagePct = 2.0,
								},
								{
									itemID = 277766,
									usagePct = 1.3,
								},
								{
									itemID = 272260,
									usagePct = 0.4,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 69.0,
								},
								{
									itemID = 249342,
									usagePct = 60.3,
								},
								{
									itemID = 250229,
									usagePct = 6.6,
								},
								{
									itemID = 193701,
									usagePct = 6.5,
								},
								{
									itemID = 252420,
									usagePct = 5.4,
								},
								{
									itemID = 250259,
									usagePct = 5.2,
								},
								{
									itemID = 250228,
									usagePct = 4.5,
								},
								{
									itemID = 268292,
									usagePct = 3.7,
								},
							},
							WAIST = {
								{
									itemID = 268289,
									usagePct = 40.3,
								},
								{
									itemID = 249949,
									usagePct = 20.8,
								},
								{
									itemID = 159418,
									usagePct = 7.5,
								},
								{
									itemID = 277765,
									usagePct = 6.6,
								},
								{
									itemID = 251144,
									usagePct = 6.3,
								},
								{
									itemID = 151327,
									usagePct = 5.6,
								},
								{
									itemID = 159442,
									usagePct = 4.6,
								},
								{
									itemID = 272261,
									usagePct = 2.4,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 55.8,
								},
								{
									itemID = 251133,
									usagePct = 8.3,
								},
								{
									itemID = 249326,
									usagePct = 7.9,
								},
								{
									itemID = 263193,
									usagePct = 4.8,
								},
								{
									itemID = 159409,
									usagePct = 4.5,
								},
								{
									itemID = 272262,
									usagePct = 3.8,
								},
								{
									itemID = 159425,
									usagePct = 3.4,
								},
								{
									itemID = 276641,
									usagePct = 2.8,
								},
							},
						},
						gems = {
							{
								itemID = 240900,
								usagePct = 28.3,
							},
							{
								itemID = 240983,
								usagePct = 15.8,
							},
							{
								itemID = 240892,
								usagePct = 14.4,
							},
							{
								itemID = 240906,
								usagePct = 12.0,
							},
							{
								itemID = 240890,
								usagePct = 7.7,
							},
							{
								itemID = 240908,
								usagePct = 7.6,
							},
							{
								itemID = 240898,
								usagePct = 6.7,
							},
							{
								itemID = 240967,
								usagePct = 2.2,
							},
							{
								itemID = 240894,
								usagePct = 1.0,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 177110.1,
							metric = "dps",
							outOf = 40,
							rank = 13,
							sample = 300,
							top = 306863.8,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/fury-warrior",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/warrior/fury/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 26.4,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 42.0,
								stat = "MASTERY",
								weight = 0.959,
							},
							{
								share = 19.5,
								stat = "CRIT",
								weight = 0.55,
							},
							{
								share = 1.7,
								stat = "VERSATILITY",
								weight = 0.101,
							},
						},
						talentBuilds = {
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjZMz2yMzMjZmxMzMzMjZWmZmZmxsYmZGAAIMwGssY0YGAzCmxCgZwAAmZAYYxMAjB",
								label = "Mountain Thane #1",
								metrics = {
									["Avg dps"] = "161K",
									["Avg key"] = "+11.5",
									["Max dps"] = "210K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 5.6,
							},
							{
								importString = "CgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgGDjZMz2yMzMjZmxMzMzMjZWmZmZmxsYmZGAAIMwGssY0YGAzCmxCgZwAAmZAALmhBjB",
								label = "Mountain Thane #2",
								metrics = {
									["Avg dps"] = "172K",
									["Avg key"] = "+11.3",
									["Max dps"] = "197K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fury-warrior",
								usagePct = 1.4,
							},
						},
					},
					name = "Mountain Thane",
				},
			},
			name = "Fury",
		},
		[73] = {
			heroes = {
				[61] = {
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
								usagePct = 54.0,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 40.7,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 2.4,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 63.5,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 19.0,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 10.3,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 59.4,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 23.0,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 13.4,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 90.0,
							},
							{
								itemID = 243947,
								slot = "CHEST",
								usagePct = 10.0,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 62.6,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 36.5,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.5,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 57.2,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 24.2,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 16.4,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 51.9,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 32.1,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 4.5,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 33.5,
								},
								{
									itemID = 193763,
									usagePct = 12.8,
								},
								{
									itemID = 251132,
									usagePct = 10.3,
								},
								{
									itemID = 251190,
									usagePct = 9.3,
								},
								{
									itemID = 159288,
									usagePct = 5.6,
								},
								{
									itemID = 272230,
									usagePct = 2.9,
								},
								{
									itemID = 272225,
									usagePct = 2.9,
								},
								{
									itemID = 249947,
									usagePct = 2.9,
								},
							},
							CHEST = {
								{
									itemID = 249955,
									usagePct = 76.6,
								},
								{
									itemID = 271459,
									usagePct = 9.6,
								},
								{
									itemID = 251151,
									usagePct = 2.9,
								},
								{
									itemID = 273787,
									usagePct = 2.1,
								},
								{
									itemID = 251193,
									usagePct = 1.9,
								},
								{
									itemID = 193753,
									usagePct = 1.9,
								},
								{
									itemID = 272255,
									usagePct = 1.6,
								},
								{
									itemID = 239036,
									usagePct = 1.1,
								},
							},
							FEET = {
								{
									itemID = 249954,
									usagePct = 32.6,
								},
								{
									itemID = 237828,
									usagePct = 11.8,
								},
								{
									itemID = 273777,
									usagePct = 10.8,
								},
								{
									itemID = 272256,
									usagePct = 8.0,
								},
								{
									itemID = 193728,
									usagePct = 7.4,
								},
								{
									itemID = 159412,
									usagePct = 6.4,
								},
								{
									itemID = 249381,
									usagePct = 5.0,
								},
								{
									itemID = 277770,
									usagePct = 3.6,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 54.8,
								},
								{
									itemID = 251217,
									usagePct = 19.4,
								},
								{
									itemID = 273792,
									usagePct = 15.0,
								},
								{
									itemID = 252258,
									usagePct = 11.0,
								},
								{
									itemID = 251093,
									usagePct = 10.8,
								},
								{
									itemID = 49812,
									usagePct = 10.6,
								},
								{
									itemID = 159459,
									usagePct = 10.3,
								},
								{
									itemID = 249920,
									usagePct = 10.1,
								},
							},
							HANDS = {
								{
									itemID = 249953,
									usagePct = 24.5,
								},
								{
									itemID = 151332,
									usagePct = 23.3,
								},
								{
									itemID = 271457,
									usagePct = 15.1,
								},
								{
									itemID = 251214,
									usagePct = 9.4,
								},
								{
									itemID = 251221,
									usagePct = 6.8,
								},
								{
									itemID = 251081,
									usagePct = 4.0,
								},
								{
									itemID = 251197,
									usagePct = 3.0,
								},
								{
									itemID = 159413,
									usagePct = 3.0,
								},
							},
							HEAD = {
								{
									itemID = 249952,
									usagePct = 73.3,
								},
								{
									itemID = 271456,
									usagePct = 11.1,
								},
								{
									itemID = 251126,
									usagePct = 4.0,
								},
								{
									itemID = 239050,
									usagePct = 3.5,
								},
								{
									itemID = 251229,
									usagePct = 3.1,
								},
								{
									itemID = 272258,
									usagePct = 2.0,
								},
								{
									itemID = 277768,
									usagePct = 1.0,
								},
								{
									itemID = 275492,
									usagePct = 0.5,
								},
							},
							LEGS = {
								{
									itemID = 249951,
									usagePct = 72.9,
								},
								{
									itemID = 271455,
									usagePct = 10.8,
								},
								{
									itemID = 159435,
									usagePct = 4.1,
								},
								{
									itemID = 273776,
									usagePct = 3.9,
								},
								{
									itemID = 277767,
									usagePct = 3.5,
								},
								{
									itemID = 251182,
									usagePct = 2.1,
								},
								{
									itemID = 272259,
									usagePct = 1.0,
								},
								{
									itemID = 275494,
									usagePct = 0.6,
								},
							},
							MAINHAND = {
								{
									itemID = 237839,
									usagePct = 16.4,
								},
								{
									itemID = 249281,
									usagePct = 10.4,
								},
								{
									itemID = 249295,
									usagePct = 9.6,
								},
								{
									itemID = 258525,
									usagePct = 9.3,
								},
								{
									itemID = 251195,
									usagePct = 8.8,
								},
								{
									itemID = 193711,
									usagePct = 7.0,
								},
								{
									itemID = 251218,
									usagePct = 6.0,
								},
								{
									itemID = 158373,
									usagePct = 5.3,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 36.0,
								},
								{
									itemID = 273781,
									usagePct = 15.6,
								},
								{
									itemID = 251173,
									usagePct = 10.0,
								},
								{
									itemID = 50228,
									usagePct = 9.1,
								},
								{
									itemID = 251234,
									usagePct = 8.0,
								},
								{
									itemID = 251142,
									usagePct = 5.1,
								},
								{
									itemID = 249368,
									usagePct = 2.3,
								},
								{
									itemID = 249337,
									usagePct = 2.1,
								},
							},
							OFFHAND = {
								{
									itemID = 237831,
									usagePct = 31.8,
								},
								{
									itemID = 249275,
									usagePct = 18.4,
								},
								{
									itemID = 249921,
									usagePct = 6.4,
								},
								{
									itemID = 251202,
									usagePct = 6.3,
								},
								{
									itemID = 193754,
									usagePct = 5.9,
								},
								{
									itemID = 251196,
									usagePct = 4.9,
								},
								{
									itemID = 251150,
									usagePct = 4.0,
								},
								{
									itemID = 159664,
									usagePct = 3.9,
								},
							},
							SHOULDER = {
								{
									itemID = 249950,
									usagePct = 76.1,
								},
								{
									itemID = 271454,
									usagePct = 10.3,
								},
								{
									itemID = 239037,
									usagePct = 3.1,
								},
								{
									itemID = 251138,
									usagePct = 3.1,
								},
								{
									itemID = 239051,
									usagePct = 3.1,
								},
								{
									itemID = 277766,
									usagePct = 2.0,
								},
								{
									itemID = 272260,
									usagePct = 1.0,
								},
								{
									itemID = 249313,
									usagePct = 0.6,
								},
							},
							TRINKET1 = {
								{
									itemID = 249342,
									usagePct = 46.3,
								},
								{
									itemID = 249343,
									usagePct = 42.0,
								},
								{
									itemID = 268292,
									usagePct = 11.5,
								},
								{
									itemID = 250229,
									usagePct = 8.3,
								},
								{
									itemID = 273796,
									usagePct = 7.6,
								},
								{
									itemID = 250228,
									usagePct = 7.5,
								},
								{
									itemID = 264507,
									usagePct = 6.0,
								},
								{
									itemID = 250256,
									usagePct = 5.4,
								},
							},
							WAIST = {
								{
									itemID = 249949,
									usagePct = 44.1,
								},
								{
									itemID = 268289,
									usagePct = 18.1,
								},
								{
									itemID = 159418,
									usagePct = 6.3,
								},
								{
									itemID = 251144,
									usagePct = 6.0,
								},
								{
									itemID = 159442,
									usagePct = 5.3,
								},
								{
									itemID = 49808,
									usagePct = 4.4,
								},
								{
									itemID = 277765,
									usagePct = 4.4,
								},
								{
									itemID = 237830,
									usagePct = 2.1,
								},
							},
							WRIST = {
								{
									itemID = 237834,
									usagePct = 48.0,
								},
								{
									itemID = 251133,
									usagePct = 9.6,
								},
								{
									itemID = 249948,
									usagePct = 7.2,
								},
								{
									itemID = 159409,
									usagePct = 7.2,
								},
								{
									itemID = 159425,
									usagePct = 5.9,
								},
								{
									itemID = 276641,
									usagePct = 4.8,
								},
								{
									itemID = 151328,
									usagePct = 4.5,
								},
								{
									itemID = 277764,
									usagePct = 3.0,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 24.4,
							},
							{
								itemID = 240890,
								usagePct = 23.8,
							},
							{
								itemID = 240983,
								usagePct = 15.6,
							},
							{
								itemID = 240894,
								usagePct = 11.3,
							},
							{
								itemID = 240900,
								usagePct = 4.7,
							},
							{
								itemID = 240908,
								usagePct = 3.9,
							},
							{
								itemID = 240892,
								usagePct = 3.8,
							},
							{
								itemID = 240916,
								usagePct = 3.7,
							},
							{
								itemID = 240898,
								usagePct = 1.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 104530.3,
							metric = "dps",
							outOf = 40,
							rank = 29,
							sample = 300,
							top = 204188.6,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/protection-warrior",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/warrior/protection/enchants-gems-pve-tank",
							},
						},
						statPriority = {
							{
								share = 28.9,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 21.6,
								stat = "CRIT",
								weight = 0.609,
							},
							{
								share = 31.4,
								stat = "MASTERY",
								weight = 0.562,
							},
							{
								share = 3.7,
								stat = "VERSATILITY",
								weight = 0.204,
							},
						},
						talentBuilds = {
							{
								importString = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAjZGzMzYGzmZmlZMGjGzYGLzMzMDzYmBAAAALDAzYAGYD2WMaMDgZBzsBzMmBzCAMzAAwAGD",
								label = "Mountain Thane #1",
								metrics = {
									["Avg dps"] = "132K",
									["Avg key"] = "+11.5",
									["Max dps"] = "173K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-warrior",
								usagePct = 13.1,
							},
							{
								importString = "CkEAAAAAAAAAAAAAAAAAAAAAAkBAAGzwMzMzMmFzMLzYMmpxMGWMzMzYGmZAAAAwyMDwMGgB2gtFjGzAYWwMbYYmZYsAAzMAAMgxA",
								label = "Mountain Thane #2",
								metrics = {
									["Avg dps"] = "114K",
									["Avg key"] = "+11.5",
									["Max dps"] = "124K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-warrior",
								usagePct = 1.9,
							},
							{
								importString = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAzMjZmZmZGzmxsMjxY0YGzYZmZmZYYmBAAAALDAzYAGYD2WMaMDgZBzsBzwMYWAgZGAAmBGD",
								label = "Mountain Thane #3",
								metrics = {
									["Avg dps"] = "189K",
									["Avg key"] = "+12.3",
									["Max dps"] = "213K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-warrior",
								usagePct = 1.3,
							},
							{
								importString = "CkEAAAAAAAAAAAAAAAAAAAAAAkBAAGzwMzMzMmNzMLzYMGNmxMbLzMzMDDzMAAAAYZmBYGDwAbwyiRjZAMLYmNYMzMMAAzMAAYgxA",
								label = "Mountain Thane #4",
								metrics = {
									["Avg dps"] = "121K",
									["Avg key"] = "+11.9",
									["Max dps"] = "140K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-warrior",
								usagePct = 1.3,
							},
							{
								importString = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAjZYmZmZGziZmlZMGz0YGDLmZmZMDzMAAAAYZAYGDwAbw2iRjZAMLYmNYmZmhxCAMzAAwAGD",
								label = "Mountain Thane #5",
								metrics = {
									["Avg dps"] = "119K",
									["Avg key"] = "+11.6",
									["Max dps"] = "152K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-warrior",
								usagePct = 1.3,
							},
							{
								importString = "CkEAAAAAAAAAAAAAAAAAAAAAA0yAAAjZGzMzYGzmZmlZMGjGzYGLzMzMDzYmBAAAALDAzYAGYD2WMaMDgZDzsBzMmBzCAMzAAwAGD",
								label = "Mountain Thane #6",
								metrics = {
									["Avg dps"] = "144K",
									["Avg key"] = "+11.1",
									["Max dps"] = "144K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/protection-warrior",
								usagePct = 1.1,
							},
						},
					},
					name = "Mountain Thane",
				},
			},
			name = "Protection",
		},
	},
})

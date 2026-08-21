-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

ns.RegisterClassData("HUNTER", {
	specs = {
		[253] = {
			heroes = {
				[43] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241322,
								primary = true,
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
								itemID = 255846,
								primary = true,
							},
						},
						enchants = {
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 45.5,
							},
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 44.2,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 7.6,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 73.7,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 19.5,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 2.9,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 73.4,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 18.3,
							},
							{
								itemID = 243989,
								slot = "SHOULDER",
								usagePct = 4.2,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 95.8,
							},
							{
								itemID = 243975,
								slot = "CHEST",
								usagePct = 3.1,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.7,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 98.9,
							},
							{
								itemID = 244640,
								slot = "LEGS",
								usagePct = 0.5,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 72.4,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 21.6,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 5.4,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 87.2,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 8.7,
							},
							{
								itemID = 243955,
								slot = "FINGER1",
								usagePct = 1.6,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 29.0,
								},
								{
									itemID = 251190,
									usagePct = 10.9,
								},
								{
									itemID = 193763,
									usagePct = 10.9,
								},
								{
									itemID = 251132,
									usagePct = 10.1,
								},
								{
									itemID = 258575,
									usagePct = 7.6,
								},
								{
									itemID = 159288,
									usagePct = 6.5,
								},
								{
									itemID = 272227,
									usagePct = 2.5,
								},
								{
									itemID = 272226,
									usagePct = 2.1,
								},
							},
							CHEST = {
								{
									itemID = 249991,
									usagePct = 62.2,
								},
								{
									itemID = 271495,
									usagePct = 21.9,
								},
								{
									itemID = 273789,
									usagePct = 2.5,
								},
								{
									itemID = 239046,
									usagePct = 2.5,
								},
								{
									itemID = 251233,
									usagePct = 2.2,
								},
								{
									itemID = 244609,
									usagePct = 2.1,
								},
								{
									itemID = 272247,
									usagePct = 1.8,
								},
								{
									itemID = 239034,
									usagePct = 1.6,
								},
							},
							FEET = {
								{
									itemID = 249990,
									usagePct = 27.1,
								},
								{
									itemID = 268287,
									usagePct = 17.8,
								},
								{
									itemID = 159388,
									usagePct = 12.9,
								},
								{
									itemID = 244610,
									usagePct = 12.4,
								},
								{
									itemID = 159371,
									usagePct = 6.2,
								},
								{
									itemID = 272248,
									usagePct = 5.5,
								},
								{
									itemID = 251145,
									usagePct = 5.1,
								},
								{
									itemID = 251125,
									usagePct = 5.0,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 46.6,
								},
								{
									itemID = 193708,
									usagePct = 30.0,
								},
								{
									itemID = 251136,
									usagePct = 19.2,
								},
								{
									itemID = 158366,
									usagePct = 13.7,
								},
								{
									itemID = 252258,
									usagePct = 9.0,
								},
								{
									itemID = 251217,
									usagePct = 7.8,
								},
								{
									itemID = 251194,
									usagePct = 6.1,
								},
								{
									itemID = 273792,
									usagePct = 5.9,
								},
							},
							HANDS = {
								{
									itemID = 249989,
									usagePct = 58.9,
								},
								{
									itemID = 271493,
									usagePct = 24.4,
								},
								{
									itemID = 193752,
									usagePct = 7.8,
								},
								{
									itemID = 160213,
									usagePct = 2.6,
								},
								{
									itemID = 251152,
									usagePct = 2.0,
								},
								{
									itemID = 272249,
									usagePct = 1.6,
								},
								{
									itemID = 268238,
									usagePct = 1.1,
								},
								{
									itemID = 251165,
									usagePct = 0.8,
								},
							},
							HEAD = {
								{
									itemID = 249988,
									usagePct = 65.0,
								},
								{
									itemID = 271492,
									usagePct = 22.8,
								},
								{
									itemID = 239035,
									usagePct = 3.3,
								},
								{
									itemID = 251158,
									usagePct = 1.7,
								},
								{
									itemID = 193765,
									usagePct = 1.7,
								},
								{
									itemID = 251220,
									usagePct = 1.7,
								},
								{
									itemID = 277776,
									usagePct = 1.4,
								},
								{
									itemID = 272250,
									usagePct = 1.1,
								},
							},
							LEGS = {
								{
									itemID = 249987,
									usagePct = 74.6,
								},
								{
									itemID = 271491,
									usagePct = 18.6,
								},
								{
									itemID = 159375,
									usagePct = 1.8,
								},
								{
									itemID = 193759,
									usagePct = 1.3,
								},
								{
									itemID = 251141,
									usagePct = 1.1,
								},
								{
									itemID = 272251,
									usagePct = 0.8,
								},
								{
									itemID = 277775,
									usagePct = 0.7,
								},
								{
									itemID = 268288,
									usagePct = 0.4,
								},
							},
							MAINHAND = {
								{
									itemID = 265337,
									usagePct = 30.0,
								},
								{
									itemID = 249279,
									usagePct = 9.2,
								},
								{
									itemID = 159637,
									usagePct = 7.9,
								},
								{
									itemID = 273784,
									usagePct = 7.4,
								},
								{
									itemID = 159643,
									usagePct = 6.6,
								},
								{
									itemID = 251174,
									usagePct = 6.3,
								},
								{
									itemID = 251187,
									usagePct = 5.1,
								},
								{
									itemID = 271680,
									usagePct = 4.9,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 58.2,
								},
								{
									itemID = 251234,
									usagePct = 11.7,
								},
								{
									itemID = 273781,
									usagePct = 8.0,
								},
								{
									itemID = 251142,
									usagePct = 5.8,
								},
								{
									itemID = 251173,
									usagePct = 5.5,
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
									usagePct = 1.2,
								},
							},
							SHOULDER = {
								{
									itemID = 249986,
									usagePct = 20.4,
								},
								{
									itemID = 271490,
									usagePct = 18.7,
								},
								{
									itemID = 193704,
									usagePct = 13.8,
								},
								{
									itemID = 277774,
									usagePct = 8.4,
								},
								{
									itemID = 239049,
									usagePct = 6.9,
								},
								{
									itemID = 272252,
									usagePct = 5.9,
								},
								{
									itemID = 249318,
									usagePct = 5.7,
								},
								{
									itemID = 251131,
									usagePct = 5.3,
								},
							},
							TRINKET1 = {
								{
									itemID = 193701,
									usagePct = 50.7,
								},
								{
									itemID = 249343,
									usagePct = 39.9,
								},
								{
									itemID = 249806,
									usagePct = 15.0,
								},
								{
									itemID = 273796,
									usagePct = 9.2,
								},
								{
									itemID = 250214,
									usagePct = 9.1,
								},
								{
									itemID = 250215,
									usagePct = 8.8,
								},
								{
									itemID = 159617,
									usagePct = 8.6,
								},
								{
									itemID = 252420,
									usagePct = 5.5,
								},
							},
							WAIST = {
								{
									itemID = 244581,
									usagePct = 18.3,
								},
								{
									itemID = 244611,
									usagePct = 16.1,
								},
								{
									itemID = 251228,
									usagePct = 11.9,
								},
								{
									itemID = 249985,
									usagePct = 11.7,
								},
								{
									itemID = 251155,
									usagePct = 10.3,
								},
								{
									itemID = 249371,
									usagePct = 6.2,
								},
								{
									itemID = 159369,
									usagePct = 4.7,
								},
								{
									itemID = 272253,
									usagePct = 4.0,
								},
							},
							WRIST = {
								{
									itemID = 244584,
									usagePct = 42.4,
								},
								{
									itemID = 249304,
									usagePct = 8.4,
								},
								{
									itemID = 159380,
									usagePct = 7.5,
								},
								{
									itemID = 273775,
									usagePct = 6.9,
								},
								{
									itemID = 251200,
									usagePct = 6.7,
								},
								{
									itemID = 277772,
									usagePct = 5.4,
								},
								{
									itemID = 151321,
									usagePct = 5.3,
								},
								{
									itemID = 251079,
									usagePct = 4.2,
								},
							},
						},
						gems = {
							{
								itemID = 240898,
								usagePct = 38.0,
							},
							{
								itemID = 240908,
								usagePct = 20.3,
							},
							{
								itemID = 240983,
								usagePct = 16.0,
							},
							{
								itemID = 240900,
								usagePct = 6.4,
							},
							{
								itemID = 240892,
								usagePct = 4.0,
							},
							{
								itemID = 240967,
								usagePct = 3.2,
							},
							{
								itemID = 240890,
								usagePct = 2.9,
							},
							{
								itemID = 240906,
								usagePct = 2.2,
							},
							{
								itemID = 240914,
								usagePct = 1.3,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 171202.6,
							metric = "dps",
							outOf = 40,
							rank = 18,
							sample = 300,
							top = 274564.0,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/hunter/beast-mastery/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 63.7,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 34.1,
								stat = "CRIT",
								weight = 0.89,
							},
							{
								share = 14.9,
								stat = "HASTE",
								weight = 0.544,
							},
							{
								share = 1.4,
								stat = "VERSATILITY",
								weight = 0.093,
							},
						},
						talentBuilds = {
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsAzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzYbmZMjZYZMNDAAAAAAAA8AjxAmZDAzCYbAYA",
								label = "Pack Leader #1",
								metrics = {
									["Avg dps"] = "173K",
									["Avg key"] = "+11.8",
									["Max dps"] = "228K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 24.5,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzYbmZYMDLDNDAAAAAAAAmHYMzAmZDAzCYbAYA",
								label = "Pack Leader #2",
								metrics = {
									["Avg dps"] = "174K",
									["Avg key"] = "+11.9",
									["Max dps"] = "269K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 12.9,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAYGPwMzsMzwMzMjZGMzYmhZGzMzYbmZYMDLDNDAAAAAAAAmHYMzAmZDAzCYbAYA",
								label = "Pack Leader #3",
								metrics = {
									["Avg dps"] = "165K",
									["Avg key"] = "+11.8",
									["Max dps"] = "236K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 5.7,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsAzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzwMzYGzwyQzAAAAAAAAAzYMgZ2AGmFw2AwA",
								label = "Pack Leader #4",
								metrics = {
									["Avg dps"] = "181K",
									["Avg key"] = "+11.7",
									["Max dps"] = "221K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 3.6,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsAzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzYbmZMjZYZoZAAAAAAAAgZMGwMbAYWAbDAD",
								label = "Pack Leader #5",
								metrics = {
									["Avg dps"] = "185K",
									["Avg key"] = "+11.8",
									["Max dps"] = "235K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 3.3,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsAzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzYbmZYMDGTzAAAAAAAAg5BGzMgZ2AwsA2GAG",
								label = "Pack Leader #6",
								metrics = {
									["Avg dps"] = "168K",
									["Avg key"] = "+12.1",
									["Max dps"] = "215K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 1.7,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsAzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzYbmZYMDLDNDAAAAAAAAmHYMzAmZDAzCYbAYA",
								label = "Pack Leader #7",
								metrics = {
									["Avg dps"] = "192K",
									["Avg key"] = "+12.3",
									["Max dps"] = "226K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 1.6,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsAzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzYbmZMjZYZoZAAAAAAAAgHYMGwMbADzCYbAYA",
								label = "Pack Leader #8",
								metrics = {
									["Avg dps"] = "148K",
									["Avg key"] = "+12.1",
									["Max dps"] = "155K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 1.6,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsAzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzYbmZMjZwQzAAAAAAAAAzYMgZ2AGmFw2AwA",
								label = "Pack Leader #9",
								metrics = {
									["Avg dps"] = "188K",
									["Avg key"] = "+12.0",
									["Max dps"] = "225K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 1.3,
							},
							{
								importString = "C0PAAAAAAAAAAAAAAAAAAAAAAAMmxwCsBzwQDbAAYGzMzsYGzMzMjZGMzYmhZGzMzYbmZYMDLjpZAAAAAAAAw8AjxAmZDAzCYbAYA",
								label = "Pack Leader #10",
								metrics = {
									["Avg dps"] = "186K",
									["Avg key"] = "+11.7",
									["Max dps"] = "201K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/beast-mastery-hunter",
								usagePct = 1.3,
							},
						},
					},
					name = "Pack Leader",
				},
			},
			name = "Beast Mastery",
		},
		[254] = {
			heroes = {
				[42] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241326,
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
								itemID = 255846,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 255845,
								primary = false,
							},
							{
								category = "FOOD",
								itemID = 242747,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 46.8,
							},
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 43.3,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 7.8,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 55.8,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 38.8,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 2.1,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 56.3,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 39.6,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 1.9,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 98.3,
							},
							{
								itemID = 243975,
								slot = "CHEST",
								usagePct = 1.3,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.1,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 99.0,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 0.7,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 0.1,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 57.6,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 35.5,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 4.4,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 96.0,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 1.1,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 1.0,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 26.1,
								},
								{
									itemID = 251132,
									usagePct = 14.8,
								},
								{
									itemID = 193763,
									usagePct = 10.8,
								},
								{
									itemID = 258575,
									usagePct = 6.6,
								},
								{
									itemID = 251190,
									usagePct = 6.0,
								},
								{
									itemID = 159288,
									usagePct = 4.3,
								},
								{
									itemID = 272226,
									usagePct = 3.6,
								},
								{
									itemID = 249335,
									usagePct = 3.2,
								},
							},
							CHEST = {
								{
									itemID = 249991,
									usagePct = 46.6,
								},
								{
									itemID = 271495,
									usagePct = 26.2,
								},
								{
									itemID = 244609,
									usagePct = 8.4,
								},
								{
									itemID = 239034,
									usagePct = 3.8,
								},
								{
									itemID = 251233,
									usagePct = 3.6,
								},
								{
									itemID = 273789,
									usagePct = 3.6,
								},
								{
									itemID = 239046,
									usagePct = 3.2,
								},
								{
									itemID = 277779,
									usagePct = 1.8,
								},
							},
							FEET = {
								{
									itemID = 249990,
									usagePct = 34.2,
								},
								{
									itemID = 244610,
									usagePct = 12.5,
								},
								{
									itemID = 268287,
									usagePct = 11.7,
								},
								{
									itemID = 159388,
									usagePct = 9.5,
								},
								{
									itemID = 251125,
									usagePct = 7.4,
								},
								{
									itemID = 272248,
									usagePct = 6.4,
								},
								{
									itemID = 251145,
									usagePct = 4.8,
								},
								{
									itemID = 159371,
									usagePct = 4.7,
								},
							},
							FINGER1 = {
								{
									itemID = 193708,
									usagePct = 30.9,
								},
								{
									itemID = 249336,
									usagePct = 23.4,
								},
								{
									itemID = 249919,
									usagePct = 19.7,
								},
								{
									itemID = 268290,
									usagePct = 17.3,
								},
								{
									itemID = 251136,
									usagePct = 16.1,
								},
								{
									itemID = 158366,
									usagePct = 15.7,
								},
								{
									itemID = 251217,
									usagePct = 10.9,
								},
								{
									itemID = 251148,
									usagePct = 9.0,
								},
							},
							HANDS = {
								{
									itemID = 249989,
									usagePct = 56.4,
								},
								{
									itemID = 271493,
									usagePct = 27.0,
								},
								{
									itemID = 193752,
									usagePct = 8.4,
								},
								{
									itemID = 251152,
									usagePct = 2.1,
								},
								{
									itemID = 277777,
									usagePct = 1.7,
								},
								{
									itemID = 251165,
									usagePct = 1.6,
								},
								{
									itemID = 272249,
									usagePct = 1.0,
								},
								{
									itemID = 268238,
									usagePct = 0.6,
								},
							},
							HEAD = {
								{
									itemID = 249988,
									usagePct = 61.6,
								},
								{
									itemID = 271492,
									usagePct = 24.4,
								},
								{
									itemID = 239035,
									usagePct = 4.5,
								},
								{
									itemID = 251220,
									usagePct = 3.6,
								},
								{
									itemID = 193765,
									usagePct = 1.8,
								},
								{
									itemID = 272250,
									usagePct = 1.6,
								},
								{
									itemID = 268230,
									usagePct = 0.9,
								},
								{
									itemID = 251158,
									usagePct = 0.6,
								},
							},
							LEGS = {
								{
									itemID = 249987,
									usagePct = 72.9,
								},
								{
									itemID = 271491,
									usagePct = 19.4,
								},
								{
									itemID = 159375,
									usagePct = 2.7,
								},
								{
									itemID = 277775,
									usagePct = 1.9,
								},
								{
									itemID = 193759,
									usagePct = 1.0,
								},
								{
									itemID = 258932,
									usagePct = 0.6,
								},
								{
									itemID = 251141,
									usagePct = 0.5,
								},
								{
									itemID = 268288,
									usagePct = 0.3,
								},
							},
							MAINHAND = {
								{
									itemID = 265337,
									usagePct = 12.9,
								},
								{
									itemID = 249288,
									usagePct = 10.1,
								},
								{
									itemID = 271680,
									usagePct = 9.4,
								},
								{
									itemID = 251187,
									usagePct = 8.4,
								},
								{
									itemID = 159637,
									usagePct = 7.7,
								},
								{
									itemID = 258412,
									usagePct = 7.4,
								},
								{
									itemID = 159643,
									usagePct = 6.9,
								},
								{
									itemID = 268207,
									usagePct = 6.8,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 50.1,
								},
								{
									itemID = 251234,
									usagePct = 17.8,
								},
								{
									itemID = 273781,
									usagePct = 9.5,
								},
								{
									itemID = 251173,
									usagePct = 4.7,
								},
								{
									itemID = 272228,
									usagePct = 3.0,
								},
								{
									itemID = 251142,
									usagePct = 2.9,
								},
								{
									itemID = 272229,
									usagePct = 2.6,
								},
								{
									itemID = 240950,
									usagePct = 2.6,
								},
							},
							SHOULDER = {
								{
									itemID = 249986,
									usagePct = 27.4,
								},
								{
									itemID = 271490,
									usagePct = 24.9,
								},
								{
									itemID = 193704,
									usagePct = 7.1,
								},
								{
									itemID = 251131,
									usagePct = 6.8,
								},
								{
									itemID = 277774,
									usagePct = 6.6,
								},
								{
									itemID = 239049,
									usagePct = 5.7,
								},
								{
									itemID = 249318,
									usagePct = 4.5,
								},
								{
									itemID = 272252,
									usagePct = 4.5,
								},
							},
							TRINKET1 = {
								{
									itemID = 193701,
									usagePct = 60.8,
								},
								{
									itemID = 260235,
									usagePct = 38.2,
								},
								{
									itemID = 249343,
									usagePct = 16.2,
								},
								{
									itemID = 273796,
									usagePct = 10.0,
								},
								{
									itemID = 250215,
									usagePct = 7.9,
								},
								{
									itemID = 250228,
									usagePct = 7.5,
								},
								{
									itemID = 264507,
									usagePct = 7.0,
								},
								{
									itemID = 252420,
									usagePct = 6.5,
								},
							},
							WAIST = {
								{
									itemID = 244581,
									usagePct = 23.1,
								},
								{
									itemID = 244611,
									usagePct = 21.0,
								},
								{
									itemID = 249985,
									usagePct = 13.5,
								},
								{
									itemID = 251155,
									usagePct = 11.9,
								},
								{
									itemID = 251228,
									usagePct = 8.6,
								},
								{
									itemID = 249371,
									usagePct = 4.2,
								},
								{
									itemID = 263268,
									usagePct = 3.5,
								},
								{
									itemID = 277773,
									usagePct = 2.7,
								},
							},
							WRIST = {
								{
									itemID = 244584,
									usagePct = 47.0,
								},
								{
									itemID = 249304,
									usagePct = 13.2,
								},
								{
									itemID = 159380,
									usagePct = 8.8,
								},
								{
									itemID = 251200,
									usagePct = 4.9,
								},
								{
									itemID = 277772,
									usagePct = 4.8,
								},
								{
									itemID = 273775,
									usagePct = 4.4,
								},
								{
									itemID = 251079,
									usagePct = 3.6,
								},
								{
									itemID = 151321,
									usagePct = 3.4,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 31.4,
							},
							{
								itemID = 240898,
								usagePct = 24.5,
							},
							{
								itemID = 240983,
								usagePct = 11.5,
							},
							{
								itemID = 240967,
								usagePct = 8.0,
							},
							{
								itemID = 240890,
								usagePct = 5.4,
							},
							{
								itemID = 240914,
								usagePct = 5.0,
							},
							{
								itemID = 240900,
								usagePct = 3.2,
							},
							{
								itemID = 240892,
								usagePct = 2.9,
							},
							{
								itemID = 240906,
								usagePct = 2.3,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 169065.8,
							metric = "dps",
							outOf = 40,
							rank = 19,
							sample = 300,
							top = 342778.4,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/hunter/marksmanship/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 41.5,
								stat = "CRIT",
								weight = 1.0,
							},
							{
								share = 16.5,
								stat = "MASTERY",
								weight = 0.711,
							},
							{
								share = 11.8,
								stat = "HASTE",
								weight = 0.357,
							},
							{
								share = 1.9,
								stat = "VERSATILITY",
								weight = 0.101,
							},
						},
						talentBuilds = {
							{
								importString = "C4PAAAAAAAAAAAAAAAAAAAAAAwGMwMGNWGAzgNAAAAAAAAwMmZmx2MmZGzwyYaGDmltlZmZmZmZmZhZWGmBAAwDMGDAzYDMAbMz2MG",
								label = "Sentinel #1",
								metrics = {
									["Avg dps"] = "182K",
									["Avg key"] = "+11.6",
									["Max dps"] = "263K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
								usagePct = 38.8,
							},
							{
								importString = "C4PAAAAAAAAAAAAAAAAAAAAAAwCMwMGNWGAzgNAAAAAAAAwMmZmx2MmZGzwyYaGDmltlZmZmZmZmZhZWGmBAAwDMGDAzYDMAbMz2MG",
								label = "Sentinel #2",
								metrics = {
									["Avg dps"] = "184K",
									["Avg key"] = "+11.6",
									["Max dps"] = "243K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
								usagePct = 14.5,
							},
							{
								importString = "C4PAAAAAAAAAAAAAAAAAAAAAAwGMwMGNWGAzgNAAAAAAAAwMmZmxmxMzYGWGTzYwsstMzMzMzMzMLMzywMAAAmxYAYGbgBYjZ2mxA",
								label = "Sentinel #3",
								metrics = {
									["Avg dps"] = "177K",
									["Avg key"] = "+11.9",
									["Max dps"] = "212K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
								usagePct = 2.6,
							},
							{
								importString = "C4PAAAAAAAAAAAAAAAAAAAAAAwGMwMGNWGAzgNAAAAAAAAwMmZmx2MmZGzwyYaGDmltlZmZmZmZmZhZWGmBAAgZGDAzYDMAbMz2MG",
								label = "Sentinel #4",
								metrics = {
									["Avg dps"] = "174K",
									["Avg key"] = "+12.5",
									["Max dps"] = "197K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
								usagePct = 1.6,
							},
							{
								importString = "C4PAAAAAAAAAAAAAAAAAAAAAAwCMwMGNWGAzgNAAAAAAAAwMmxM2mxMzYGMmmxgZZbZmZmZmZmZWYmlhZAAAGjxAwM2wyMAbMz2MG",
								label = "Sentinel #5",
								metrics = {
									["Avg dps"] = "200K",
									["Avg key"] = "+11.6",
									["Max dps"] = "216K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
								usagePct = 1.4,
							},
							{
								importString = "C4PAAAAAAAAAAAAAAAAAAAAAAwGMwMGNWGAzgNAAAAAAAAwMmZmx2MmZGzwyYaGDmltlZmZmZmZmBzsMMzAAA8AjxAwM2ADwGzsNjB",
								label = "Sentinel #6",
								metrics = {
									["Avg dps"] = "207K",
									["Avg key"] = "+11.5",
									["Max dps"] = "230K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
								usagePct = 1.4,
							},
							{
								importString = "C4PAAAAAAAAAAAAAAAAAAAAAAwGMwMGNWGAzgNAAAAAAAAwMmZmx2MmZGzwyYaGDmltlZmZmZmZmBzsMMDAAgHYMmBwM2ADwGzsNjB",
								label = "Sentinel #7",
								metrics = {
									["Avg dps"] = "173K",
									["Avg key"] = "+11.2",
									["Max dps"] = "210K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
								usagePct = 1.4,
							},
							{
								importString = "C4PAAAAAAAAAAAAAAAAAAAAAAwCMwMGNWGAzgNAAAAAAAAwMmZmBjZmxMsMmmxgZZbZmZmZmZmZWYmlhZAAAMjxAwM2YYAWYmtZMA",
								label = "Sentinel #8",
								metrics = {
									["Avg dps"] = "156K",
									["Avg key"] = "+11.6",
									["Max dps"] = "184K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/marksmanship-hunter",
								usagePct = 1.0,
							},
						},
					},
					name = "Sentinel",
				},
			},
			name = "Marksmanship",
		},
		[255] = {
			heroes = {
				[42] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 245933,
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
								itemID = 275265,
								primary = true,
							},
						},
						enchants = {
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 84.2,
							},
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 9.7,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 2.7,
							},
							{
								itemID = 244031,
								slot = "OFFHAND",
								usagePct = 86.5,
							},
							{
								itemID = 244029,
								slot = "OFFHAND",
								usagePct = 9.2,
							},
							{
								itemID = 243973,
								slot = "OFFHAND",
								usagePct = 2.1,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 54.5,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 36.3,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 2.7,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 55.3,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 37.2,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 3.9,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 96.0,
							},
							{
								itemID = 243975,
								slot = "CHEST",
								usagePct = 3.0,
							},
							{
								itemID = 243974,
								slot = "CHEST",
								usagePct = 0.6,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 97.2,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 2.1,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 61.0,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 33.4,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 5.1,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 87.0,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 10.5,
							},
							{
								itemID = 243955,
								slot = "FINGER1",
								usagePct = 1.3,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 22.0,
								},
								{
									itemID = 193763,
									usagePct = 11.0,
								},
								{
									itemID = 258575,
									usagePct = 10.9,
								},
								{
									itemID = 251190,
									usagePct = 10.1,
								},
								{
									itemID = 251132,
									usagePct = 7.8,
								},
								{
									itemID = 159288,
									usagePct = 4.9,
								},
								{
									itemID = 272230,
									usagePct = 3.5,
								},
								{
									itemID = 272227,
									usagePct = 3.2,
								},
							},
							CHEST = {
								{
									itemID = 249991,
									usagePct = 63.4,
								},
								{
									itemID = 271495,
									usagePct = 25.3,
								},
								{
									itemID = 272247,
									usagePct = 1.8,
								},
								{
									itemID = 251233,
									usagePct = 1.8,
								},
								{
									itemID = 273789,
									usagePct = 1.5,
								},
								{
									itemID = 251179,
									usagePct = 1.1,
								},
								{
									itemID = 277779,
									usagePct = 0.9,
								},
								{
									itemID = 239046,
									usagePct = 0.8,
								},
							},
							FEET = {
								{
									itemID = 268287,
									usagePct = 27.2,
								},
								{
									itemID = 249990,
									usagePct = 21.8,
								},
								{
									itemID = 244610,
									usagePct = 9.2,
								},
								{
									itemID = 159388,
									usagePct = 8.5,
								},
								{
									itemID = 159371,
									usagePct = 5.4,
								},
								{
									itemID = 251125,
									usagePct = 4.4,
								},
								{
									itemID = 272248,
									usagePct = 4.4,
								},
								{
									itemID = 244577,
									usagePct = 4.3,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 56.5,
								},
								{
									itemID = 251093,
									usagePct = 18.9,
								},
								{
									itemID = 193708,
									usagePct = 15.9,
								},
								{
									itemID = 251217,
									usagePct = 14.4,
								},
								{
									itemID = 251136,
									usagePct = 12.7,
								},
								{
									itemID = 251115,
									usagePct = 9.0,
								},
								{
									itemID = 273792,
									usagePct = 8.0,
								},
								{
									itemID = 158366,
									usagePct = 7.5,
								},
							},
							HANDS = {
								{
									itemID = 249989,
									usagePct = 65.8,
								},
								{
									itemID = 271493,
									usagePct = 24.7,
								},
								{
									itemID = 193752,
									usagePct = 3.3,
								},
								{
									itemID = 272249,
									usagePct = 1.6,
								},
								{
									itemID = 251165,
									usagePct = 1.5,
								},
								{
									itemID = 160213,
									usagePct = 0.9,
								},
								{
									itemID = 251152,
									usagePct = 0.8,
								},
								{
									itemID = 244583,
									usagePct = 0.4,
								},
							},
							HEAD = {
								{
									itemID = 249988,
									usagePct = 62.4,
								},
								{
									itemID = 271492,
									usagePct = 27.2,
								},
								{
									itemID = 239035,
									usagePct = 2.3,
								},
								{
									itemID = 277776,
									usagePct = 1.9,
								},
								{
									itemID = 251220,
									usagePct = 1.8,
								},
								{
									itemID = 251158,
									usagePct = 1.1,
								},
								{
									itemID = 193765,
									usagePct = 0.9,
								},
								{
									itemID = 251119,
									usagePct = 0.8,
								},
							},
							LEGS = {
								{
									itemID = 249987,
									usagePct = 73.2,
								},
								{
									itemID = 271491,
									usagePct = 21.8,
								},
								{
									itemID = 193759,
									usagePct = 1.0,
								},
								{
									itemID = 277775,
									usagePct = 0.9,
								},
								{
									itemID = 159375,
									usagePct = 0.9,
								},
								{
									itemID = 251141,
									usagePct = 0.8,
								},
								{
									itemID = 268288,
									usagePct = 0.4,
								},
								{
									itemID = 251215,
									usagePct = 0.4,
								},
							},
							MAINHAND = {
								{
									itemID = 249925,
									usagePct = 11.1,
								},
								{
									itemID = 237847,
									usagePct = 11.0,
								},
								{
									itemID = 258436,
									usagePct = 10.0,
								},
								{
									itemID = 237837,
									usagePct = 7.5,
								},
								{
									itemID = 159642,
									usagePct = 7.0,
								},
								{
									itemID = 273783,
									usagePct = 6.7,
								},
								{
									itemID = 158370,
									usagePct = 4.4,
								},
								{
									itemID = 272272,
									usagePct = 3.9,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 53.9,
								},
								{
									itemID = 251142,
									usagePct = 11.6,
								},
								{
									itemID = 251234,
									usagePct = 9.4,
								},
								{
									itemID = 251173,
									usagePct = 4.8,
								},
								{
									itemID = 273781,
									usagePct = 4.7,
								},
								{
									itemID = 240950,
									usagePct = 3.7,
								},
								{
									itemID = 272228,
									usagePct = 2.2,
								},
								{
									itemID = 275531,
									usagePct = 1.6,
								},
							},
							OFFHAND = {
								{
									itemID = 237837,
									usagePct = 60.6,
								},
								{
									itemID = 249925,
									usagePct = 7.6,
								},
								{
									itemID = 258436,
									usagePct = 5.1,
								},
								{
									itemID = 275070,
									usagePct = 3.6,
								},
								{
									itemID = 251180,
									usagePct = 2.8,
								},
								{
									itemID = 49807,
									usagePct = 2.3,
								},
								{
									itemID = 251212,
									usagePct = 2.3,
								},
								{
									itemID = 251128,
									usagePct = 2.3,
								},
							},
							SHOULDER = {
								{
									itemID = 271490,
									usagePct = 24.6,
								},
								{
									itemID = 249986,
									usagePct = 21.9,
								},
								{
									itemID = 193704,
									usagePct = 11.3,
								},
								{
									itemID = 151323,
									usagePct = 7.7,
								},
								{
									itemID = 277774,
									usagePct = 7.3,
								},
								{
									itemID = 239049,
									usagePct = 6.7,
								},
								{
									itemID = 272252,
									usagePct = 3.9,
								},
								{
									itemID = 251097,
									usagePct = 3.3,
								},
							},
							TRINKET1 = {
								{
									itemID = 193701,
									usagePct = 45.6,
								},
								{
									itemID = 249343,
									usagePct = 45.1,
								},
								{
									itemID = 249806,
									usagePct = 19.4,
								},
								{
									itemID = 250215,
									usagePct = 9.0,
								},
								{
									itemID = 264507,
									usagePct = 8.7,
								},
								{
									itemID = 273796,
									usagePct = 5.7,
								},
								{
									itemID = 274493,
									usagePct = 4.9,
								},
								{
									itemID = 265657,
									usagePct = 4.8,
								},
							},
							WAIST = {
								{
									itemID = 244581,
									usagePct = 16.5,
								},
								{
									itemID = 249371,
									usagePct = 15.8,
								},
								{
									itemID = 249985,
									usagePct = 13.5,
								},
								{
									itemID = 251155,
									usagePct = 10.9,
								},
								{
									itemID = 244611,
									usagePct = 10.5,
								},
								{
									itemID = 251228,
									usagePct = 6.5,
								},
								{
									itemID = 277773,
									usagePct = 6.5,
								},
								{
									itemID = 159369,
									usagePct = 3.5,
								},
							},
							WRIST = {
								{
									itemID = 244584,
									usagePct = 38.4,
								},
								{
									itemID = 249304,
									usagePct = 12.3,
								},
								{
									itemID = 251200,
									usagePct = 8.6,
								},
								{
									itemID = 251079,
									usagePct = 7.0,
								},
								{
									itemID = 151321,
									usagePct = 5.8,
								},
								{
									itemID = 273775,
									usagePct = 4.6,
								},
								{
									itemID = 159380,
									usagePct = 3.8,
								},
								{
									itemID = 277772,
									usagePct = 3.7,
								},
							},
						},
						gems = {
							{
								itemID = 240898,
								usagePct = 43.6,
							},
							{
								itemID = 240983,
								usagePct = 17.2,
							},
							{
								itemID = 240908,
								usagePct = 12.3,
							},
							{
								itemID = 240900,
								usagePct = 11.9,
							},
							{
								itemID = 240892,
								usagePct = 4.2,
							},
							{
								itemID = 240890,
								usagePct = 3.2,
							},
							{
								itemID = 240906,
								usagePct = 2.6,
							},
							{
								itemID = 240967,
								usagePct = 1.5,
							},
							{
								itemID = 240918,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 151055.1,
							metric = "dps",
							outOf = 40,
							rank = 24,
							sample = 300,
							top = 277291.8,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/survival-hunter",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/hunter/survival/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 31.2,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 31.8,
								stat = "CRIT",
								weight = 0.737,
							},
							{
								share = 17.2,
								stat = "HASTE",
								weight = 0.595,
							},
							{
								share = 0.6,
								stat = "VERSATILITY",
								weight = 0.046,
							},
						},
						talentBuilds = {
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMWgBmxoxyAYGw2MzMzMjZbeAAAAAAAzYmZGbzYMjZYZMNDAAAwAAjllZGLYmZ8AjxAwM2AjxMzmBA",
								label = "Sentinel #1",
								metrics = {
									["Avg dps"] = "170K",
									["Avg key"] = "+11.3",
									["Max dps"] = "248K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 15.3,
							},
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMWgBmxoxyAYGw2MzMzYmZbGAAAAAAzYmZGmxYGzgx0MAAAADAwy2MjtZMzYMmZAYGbYxYYmFDA",
								label = "Sentinel #2",
								metrics = {
									["Avg dps"] = "151K",
									["Avg key"] = "+11.1",
									["Max dps"] = "177K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 4.3,
							},
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMWgBmxoxyAYGw2MzMzYmZbGAAAAAAzYmZGmxYGzgx0MAAAADAwy2MjlZMzYMmZAYGbYxYYmFDA",
								label = "Sentinel #3",
								metrics = {
									["Avg dps"] = "180K",
									["Avg key"] = "+11.4",
									["Max dps"] = "198K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 2.7,
							},
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMWgBmxoxyAYGw2MzMzYmZbGAAAAAAzYmZGmxYGzgx0MAAAADAwy2MjtZMzYMmZAYGbYxYYmNDA",
								label = "Sentinel #4",
								metrics = {
									["Avg dps"] = "157K",
									["Avg key"] = "+11.1",
									["Max dps"] = "192K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 2.4,
							},
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMWgBmxoxyAYGw2MzMzYmZbGAAAAAAzYmZGmxYGzgx0MAAAADAwy2MjlZMzYMmZAYGbYxYYmNDA",
								label = "Sentinel #5",
								metrics = {
									["Avg dps"] = "191K",
									["Avg key"] = "+11.4",
									["Max dps"] = "232K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 1.9,
							},
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMWgBmxoxyAYGw2MzMzYmZbGAAAAAAzYmZGmxYGzwyYaGAAAgBAGLbzMWGmZwMjBgZsxwYYmNDA",
								label = "Sentinel #6",
								metrics = {
									["Avg dps"] = "198K",
									["Avg key"] = "+11.2",
									["Max dps"] = "210K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 1.3,
							},
						},
					},
					name = "Sentinel",
				},
				[43] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 245933,
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
								itemID = 275265,
								primary = true,
							},
						},
						enchants = {
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 84.2,
							},
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 9.7,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 2.7,
							},
							{
								itemID = 244031,
								slot = "OFFHAND",
								usagePct = 86.5,
							},
							{
								itemID = 244029,
								slot = "OFFHAND",
								usagePct = 9.2,
							},
							{
								itemID = 243973,
								slot = "OFFHAND",
								usagePct = 2.1,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 54.5,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 36.3,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 2.7,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 55.3,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 37.2,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 3.9,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 96.0,
							},
							{
								itemID = 243975,
								slot = "CHEST",
								usagePct = 3.0,
							},
							{
								itemID = 243974,
								slot = "CHEST",
								usagePct = 0.6,
							},
							{
								itemID = 244641,
								slot = "LEGS",
								usagePct = 97.2,
							},
							{
								itemID = 244643,
								slot = "LEGS",
								usagePct = 2.1,
							},
							{
								itemID = 244645,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 61.0,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 33.4,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 5.1,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 87.0,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 10.5,
							},
							{
								itemID = 243955,
								slot = "FINGER1",
								usagePct = 1.3,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 22.0,
								},
								{
									itemID = 193763,
									usagePct = 11.0,
								},
								{
									itemID = 258575,
									usagePct = 10.9,
								},
								{
									itemID = 251190,
									usagePct = 10.1,
								},
								{
									itemID = 251132,
									usagePct = 7.8,
								},
								{
									itemID = 159288,
									usagePct = 4.9,
								},
								{
									itemID = 272230,
									usagePct = 3.5,
								},
								{
									itemID = 272227,
									usagePct = 3.2,
								},
							},
							CHEST = {
								{
									itemID = 249991,
									usagePct = 63.4,
								},
								{
									itemID = 271495,
									usagePct = 25.3,
								},
								{
									itemID = 272247,
									usagePct = 1.8,
								},
								{
									itemID = 251233,
									usagePct = 1.8,
								},
								{
									itemID = 273789,
									usagePct = 1.5,
								},
								{
									itemID = 251179,
									usagePct = 1.1,
								},
								{
									itemID = 277779,
									usagePct = 0.9,
								},
								{
									itemID = 239046,
									usagePct = 0.8,
								},
							},
							FEET = {
								{
									itemID = 268287,
									usagePct = 27.2,
								},
								{
									itemID = 249990,
									usagePct = 21.8,
								},
								{
									itemID = 244610,
									usagePct = 9.2,
								},
								{
									itemID = 159388,
									usagePct = 8.5,
								},
								{
									itemID = 159371,
									usagePct = 5.4,
								},
								{
									itemID = 251125,
									usagePct = 4.4,
								},
								{
									itemID = 272248,
									usagePct = 4.4,
								},
								{
									itemID = 244577,
									usagePct = 4.3,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 56.5,
								},
								{
									itemID = 251093,
									usagePct = 18.9,
								},
								{
									itemID = 193708,
									usagePct = 15.9,
								},
								{
									itemID = 251217,
									usagePct = 14.4,
								},
								{
									itemID = 251136,
									usagePct = 12.7,
								},
								{
									itemID = 251115,
									usagePct = 9.0,
								},
								{
									itemID = 273792,
									usagePct = 8.0,
								},
								{
									itemID = 158366,
									usagePct = 7.5,
								},
							},
							HANDS = {
								{
									itemID = 249989,
									usagePct = 65.8,
								},
								{
									itemID = 271493,
									usagePct = 24.7,
								},
								{
									itemID = 193752,
									usagePct = 3.3,
								},
								{
									itemID = 272249,
									usagePct = 1.6,
								},
								{
									itemID = 251165,
									usagePct = 1.5,
								},
								{
									itemID = 160213,
									usagePct = 0.9,
								},
								{
									itemID = 251152,
									usagePct = 0.8,
								},
								{
									itemID = 244583,
									usagePct = 0.4,
								},
							},
							HEAD = {
								{
									itemID = 249988,
									usagePct = 62.4,
								},
								{
									itemID = 271492,
									usagePct = 27.2,
								},
								{
									itemID = 239035,
									usagePct = 2.3,
								},
								{
									itemID = 277776,
									usagePct = 1.9,
								},
								{
									itemID = 251220,
									usagePct = 1.8,
								},
								{
									itemID = 251158,
									usagePct = 1.1,
								},
								{
									itemID = 193765,
									usagePct = 0.9,
								},
								{
									itemID = 251119,
									usagePct = 0.8,
								},
							},
							LEGS = {
								{
									itemID = 249987,
									usagePct = 73.2,
								},
								{
									itemID = 271491,
									usagePct = 21.8,
								},
								{
									itemID = 193759,
									usagePct = 1.0,
								},
								{
									itemID = 277775,
									usagePct = 0.9,
								},
								{
									itemID = 159375,
									usagePct = 0.9,
								},
								{
									itemID = 251141,
									usagePct = 0.8,
								},
								{
									itemID = 268288,
									usagePct = 0.4,
								},
								{
									itemID = 251215,
									usagePct = 0.4,
								},
							},
							MAINHAND = {
								{
									itemID = 249925,
									usagePct = 11.1,
								},
								{
									itemID = 237847,
									usagePct = 11.0,
								},
								{
									itemID = 258436,
									usagePct = 10.0,
								},
								{
									itemID = 237837,
									usagePct = 7.5,
								},
								{
									itemID = 159642,
									usagePct = 7.0,
								},
								{
									itemID = 273783,
									usagePct = 6.7,
								},
								{
									itemID = 158370,
									usagePct = 4.4,
								},
								{
									itemID = 272272,
									usagePct = 3.9,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 53.9,
								},
								{
									itemID = 251142,
									usagePct = 11.6,
								},
								{
									itemID = 251234,
									usagePct = 9.4,
								},
								{
									itemID = 251173,
									usagePct = 4.8,
								},
								{
									itemID = 273781,
									usagePct = 4.7,
								},
								{
									itemID = 240950,
									usagePct = 3.7,
								},
								{
									itemID = 272228,
									usagePct = 2.2,
								},
								{
									itemID = 275531,
									usagePct = 1.6,
								},
							},
							OFFHAND = {
								{
									itemID = 237837,
									usagePct = 60.6,
								},
								{
									itemID = 249925,
									usagePct = 7.6,
								},
								{
									itemID = 258436,
									usagePct = 5.1,
								},
								{
									itemID = 275070,
									usagePct = 3.6,
								},
								{
									itemID = 251180,
									usagePct = 2.8,
								},
								{
									itemID = 49807,
									usagePct = 2.3,
								},
								{
									itemID = 251212,
									usagePct = 2.3,
								},
								{
									itemID = 251128,
									usagePct = 2.3,
								},
							},
							SHOULDER = {
								{
									itemID = 271490,
									usagePct = 24.6,
								},
								{
									itemID = 249986,
									usagePct = 21.9,
								},
								{
									itemID = 193704,
									usagePct = 11.3,
								},
								{
									itemID = 151323,
									usagePct = 7.7,
								},
								{
									itemID = 277774,
									usagePct = 7.3,
								},
								{
									itemID = 239049,
									usagePct = 6.7,
								},
								{
									itemID = 272252,
									usagePct = 3.9,
								},
								{
									itemID = 251097,
									usagePct = 3.3,
								},
							},
							TRINKET1 = {
								{
									itemID = 193701,
									usagePct = 45.6,
								},
								{
									itemID = 249343,
									usagePct = 45.1,
								},
								{
									itemID = 249806,
									usagePct = 19.4,
								},
								{
									itemID = 250215,
									usagePct = 9.0,
								},
								{
									itemID = 264507,
									usagePct = 8.7,
								},
								{
									itemID = 273796,
									usagePct = 5.7,
								},
								{
									itemID = 274493,
									usagePct = 4.9,
								},
								{
									itemID = 265657,
									usagePct = 4.8,
								},
							},
							WAIST = {
								{
									itemID = 244581,
									usagePct = 16.5,
								},
								{
									itemID = 249371,
									usagePct = 15.8,
								},
								{
									itemID = 249985,
									usagePct = 13.5,
								},
								{
									itemID = 251155,
									usagePct = 10.9,
								},
								{
									itemID = 244611,
									usagePct = 10.5,
								},
								{
									itemID = 251228,
									usagePct = 6.5,
								},
								{
									itemID = 277773,
									usagePct = 6.5,
								},
								{
									itemID = 159369,
									usagePct = 3.5,
								},
							},
							WRIST = {
								{
									itemID = 244584,
									usagePct = 38.4,
								},
								{
									itemID = 249304,
									usagePct = 12.3,
								},
								{
									itemID = 251200,
									usagePct = 8.6,
								},
								{
									itemID = 251079,
									usagePct = 7.0,
								},
								{
									itemID = 151321,
									usagePct = 5.8,
								},
								{
									itemID = 273775,
									usagePct = 4.6,
								},
								{
									itemID = 159380,
									usagePct = 3.8,
								},
								{
									itemID = 277772,
									usagePct = 3.7,
								},
							},
						},
						gems = {
							{
								itemID = 240898,
								usagePct = 43.6,
							},
							{
								itemID = 240983,
								usagePct = 17.2,
							},
							{
								itemID = 240908,
								usagePct = 12.3,
							},
							{
								itemID = 240900,
								usagePct = 11.9,
							},
							{
								itemID = 240892,
								usagePct = 4.2,
							},
							{
								itemID = 240890,
								usagePct = 3.2,
							},
							{
								itemID = 240906,
								usagePct = 2.6,
							},
							{
								itemID = 240967,
								usagePct = 1.5,
							},
							{
								itemID = 240918,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 151055.1,
							metric = "dps",
							outOf = 40,
							rank = 24,
							sample = 300,
							top = 277291.8,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/survival-hunter",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/hunter/survival/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 31.2,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 31.8,
								stat = "CRIT",
								weight = 0.737,
							},
							{
								share = 17.2,
								stat = "HASTE",
								weight = 0.595,
							},
							{
								share = 0.6,
								stat = "VERSATILITY",
								weight = 0.046,
							},
						},
						talentBuilds = {
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMGWgFYGGawiZmZmZGLDAAAAAAzYmZGbzYMjZYZMNDAAAwAgZssMzYhZmhHYMGwMbAYMmZ2MAA",
								label = "Pack Leader #1",
								metrics = {
									["Avg dps"] = "164K",
									["Avg key"] = "+11.3",
									["Max dps"] = "204K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 3.7,
							},
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawiZmZmZGLDAAAAAAzYmZGbzYMjZwYaGAAAgBAzYZZmxCzMjxYmBMzGAGjZmNDA",
								label = "Pack Leader #2",
								metrics = {
									["Avg dps"] = "216K",
									["Avg key"] = "+12.6",
									["Max dps"] = "264K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 1.8,
							},
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawiZmZmZYZAAAAAAwMmZmx2MGzYGMmmBAAAgBAGLLzMziZmZMmZMgZ2AgxYmZzAA",
								label = "Pack Leader #3",
								metrics = {
									["Avg dps"] = "182K",
									["Avg key"] = "+12.4",
									["Max dps"] = "193K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 1.4,
							},
							{
								importString = "C8PAAAAAAAAAAAAAAAAAAAAAAMgxMG2gFYGGawiZmZmZYZAAAAAAwMmZmx2MGzYGMmmBAAAgBAGLLzMziZmZMPwYMgZ2AgxYmZzAA",
								label = "Pack Leader #4",
								metrics = {
									["Avg dps"] = "173K",
									["Avg key"] = "+11.5",
									["Max dps"] = "195K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/survival-hunter",
								usagePct = 1.3,
							},
						},
					},
					name = "Pack Leader",
				},
			},
			name = "Survival",
		},
	},
})

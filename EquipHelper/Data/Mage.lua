-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

ns.RegisterClassData("MAGE", {
	specs = {
		[62] = {
			heroes = {
				[39] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
								primary = true,
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
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 85.4,
							},
							{
								itemID = 244001,
								slot = "MAINHAND",
								usagePct = 5.8,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 3.2,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 81.9,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 8.7,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 3.8,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 66.5,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 19.4,
							},
							{
								itemID = 243989,
								slot = "SHOULDER",
								usagePct = 5.7,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 97.6,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 1.7,
							},
							{
								itemID = 244002,
								slot = "CHEST",
								usagePct = 0.4,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 71.1,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 27.1,
							},
							{
								itemID = 240157,
								slot = "LEGS",
								usagePct = 1.4,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 72.4,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 20.9,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 5.5,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 83.6,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 5.1,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 3.9,
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
									usagePct = 15.1,
								},
								{
									itemID = 251132,
									usagePct = 13.3,
								},
								{
									itemID = 251190,
									usagePct = 11.1,
								},
								{
									itemID = 159288,
									usagePct = 7.6,
								},
								{
									itemID = 272227,
									usagePct = 4.0,
								},
								{
									itemID = 272225,
									usagePct = 3.6,
								},
								{
									itemID = 272230,
									usagePct = 2.6,
								},
							},
							CHEST = {
								{
									itemID = 250063,
									usagePct = 44.3,
								},
								{
									itemID = 271567,
									usagePct = 30.3,
								},
								{
									itemID = 251139,
									usagePct = 5.4,
								},
								{
									itemID = 239032,
									usagePct = 5.3,
								},
								{
									itemID = 251147,
									usagePct = 4.1,
								},
								{
									itemID = 273785,
									usagePct = 3.9,
								},
								{
									itemID = 277795,
									usagePct = 2.2,
								},
								{
									itemID = 272231,
									usagePct = 1.4,
								},
							},
							FEET = {
								{
									itemID = 268282,
									usagePct = 17.8,
								},
								{
									itemID = 251137,
									usagePct = 17.7,
								},
								{
									itemID = 251219,
									usagePct = 17.3,
								},
								{
									itemID = 159243,
									usagePct = 13.3,
								},
								{
									itemID = 159259,
									usagePct = 11.5,
								},
								{
									itemID = 277794,
									usagePct = 5.9,
								},
								{
									itemID = 250062,
									usagePct = 3.1,
								},
								{
									itemID = 272232,
									usagePct = 2.7,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 37.9,
								},
								{
									itemID = 159459,
									usagePct = 18.6,
								},
								{
									itemID = 251148,
									usagePct = 18.6,
								},
								{
									itemID = 273792,
									usagePct = 15.1,
								},
								{
									itemID = 252258,
									usagePct = 13.3,
								},
								{
									itemID = 251136,
									usagePct = 10.7,
								},
								{
									itemID = 158366,
									usagePct = 8.4,
								},
								{
									itemID = 251194,
									usagePct = 7.5,
								},
							},
							HANDS = {
								{
									itemID = 250061,
									usagePct = 43.5,
								},
								{
									itemID = 271565,
									usagePct = 27.1,
								},
								{
									itemID = 159247,
									usagePct = 8.3,
								},
								{
									itemID = 251129,
									usagePct = 5.3,
								},
								{
									itemID = 273773,
									usagePct = 5.0,
								},
								{
									itemID = 277793,
									usagePct = 4.1,
								},
								{
									itemID = 272233,
									usagePct = 1.8,
								},
								{
									itemID = 251211,
									usagePct = 1.2,
								},
							},
							HEAD = {
								{
									itemID = 250060,
									usagePct = 40.9,
								},
								{
									itemID = 271564,
									usagePct = 26.7,
								},
								{
									itemID = 251199,
									usagePct = 7.1,
								},
								{
									itemID = 251232,
									usagePct = 7.0,
								},
								{
									itemID = 239047,
									usagePct = 5.0,
								},
								{
									itemID = 277792,
									usagePct = 4.6,
								},
								{
									itemID = 272234,
									usagePct = 1.9,
								},
								{
									itemID = 271874,
									usagePct = 1.4,
								},
							},
							LEGS = {
								{
									itemID = 250059,
									usagePct = 34.8,
								},
								{
									itemID = 271563,
									usagePct = 31.1,
								},
								{
									itemID = 251160,
									usagePct = 7.9,
								},
								{
									itemID = 193750,
									usagePct = 6.1,
								},
								{
									itemID = 273786,
									usagePct = 5.3,
								},
								{
									itemID = 159234,
									usagePct = 4.8,
								},
								{
									itemID = 272235,
									usagePct = 3.6,
								},
								{
									itemID = 277791,
									usagePct = 3.2,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 43.7,
								},
								{
									itemID = 273778,
									usagePct = 7.5,
								},
								{
									itemID = 251123,
									usagePct = 6.6,
								},
								{
									itemID = 193761,
									usagePct = 5.0,
								},
								{
									itemID = 251156,
									usagePct = 4.1,
								},
								{
									itemID = 159137,
									usagePct = 4.0,
								},
								{
									itemID = 251188,
									usagePct = 3.9,
								},
								{
									itemID = 159636,
									usagePct = 3.2,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 21.3,
								},
								{
									itemID = 273781,
									usagePct = 17.7,
								},
								{
									itemID = 251173,
									usagePct = 14.1,
								},
								{
									itemID = 251142,
									usagePct = 13.7,
								},
								{
									itemID = 251234,
									usagePct = 7.4,
								},
								{
									itemID = 50228,
									usagePct = 3.0,
								},
								{
									itemID = 265739,
									usagePct = 3.0,
								},
								{
									itemID = 272228,
									usagePct = 2.8,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 53.4,
								},
								{
									itemID = 193766,
									usagePct = 12.5,
								},
								{
									itemID = 271681,
									usagePct = 7.3,
								},
								{
									itemID = 273779,
									usagePct = 5.6,
								},
								{
									itemID = 249922,
									usagePct = 3.9,
								},
								{
									itemID = 159667,
									usagePct = 3.9,
								},
								{
									itemID = 251191,
									usagePct = 3.4,
								},
								{
									itemID = 268197,
									usagePct = 2.6,
								},
							},
							SHOULDER = {
								{
									itemID = 271562,
									usagePct = 27.5,
								},
								{
									itemID = 250058,
									usagePct = 25.9,
								},
								{
									itemID = 251227,
									usagePct = 9.7,
								},
								{
									itemID = 239045,
									usagePct = 7.5,
								},
								{
									itemID = 239031,
									usagePct = 7.4,
								},
								{
									itemID = 277790,
									usagePct = 5.5,
								},
								{
									itemID = 272236,
									usagePct = 3.6,
								},
								{
									itemID = 251085,
									usagePct = 3.2,
								},
							},
							TRINKET1 = {
								{
									itemID = 249346,
									usagePct = 34.2,
								},
								{
									itemID = 249343,
									usagePct = 26.2,
								},
								{
									itemID = 250215,
									usagePct = 24.5,
								},
								{
									itemID = 264507,
									usagePct = 14.8,
								},
								{
									itemID = 250214,
									usagePct = 11.2,
								},
								{
									itemID = 273796,
									usagePct = 10.2,
								},
								{
									itemID = 273794,
									usagePct = 8.4,
								},
								{
									itemID = 250224,
									usagePct = 8.1,
								},
							},
							WAIST = {
								{
									itemID = 193691,
									usagePct = 15.2,
								},
								{
									itemID = 251185,
									usagePct = 14.7,
								},
								{
									itemID = 251222,
									usagePct = 14.7,
								},
								{
									itemID = 250057,
									usagePct = 13.3,
								},
								{
									itemID = 239649,
									usagePct = 7.6,
								},
								{
									itemID = 277789,
									usagePct = 6.6,
								},
								{
									itemID = 159255,
									usagePct = 6.5,
								},
								{
									itemID = 268257,
									usagePct = 3.9,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 41.4,
								},
								{
									itemID = 251127,
									usagePct = 16.6,
								},
								{
									itemID = 251154,
									usagePct = 12.3,
								},
								{
									itemID = 159263,
									usagePct = 6.6,
								},
								{
									itemID = 277788,
									usagePct = 4.1,
								},
								{
									itemID = 276644,
									usagePct = 4.0,
								},
								{
									itemID = 272238,
									usagePct = 3.1,
								},
								{
									itemID = 249315,
									usagePct = 1.9,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 16.3,
							},
							{
								itemID = 240983,
								usagePct = 15.1,
							},
							{
								itemID = 240894,
								usagePct = 10.6,
							},
							{
								itemID = 240916,
								usagePct = 9.3,
							},
							{
								itemID = 240906,
								usagePct = 7.3,
							},
							{
								itemID = 240914,
								usagePct = 6.0,
							},
							{
								itemID = 240890,
								usagePct = 5.6,
							},
							{
								itemID = 240900,
								usagePct = 5.5,
							},
							{
								itemID = 240898,
								usagePct = 5.4,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 215007.4,
							metric = "dps",
							outOf = 40,
							rank = 1,
							sample = 300,
							top = 324464.2,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/arcane-mage",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/mage/arcane/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 25.1,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 38.1,
								stat = "MASTERY",
								weight = 0.919,
							},
							{
								share = 20.5,
								stat = "CRIT",
								weight = 0.708,
							},
							{
								share = 2.7,
								stat = "VERSATILITY",
								weight = 0.191,
							},
						},
						talentBuilds = {
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMGAAAGAwMz0sssMDAgNAA2gZmhNLzYmlZMmZmZGWYmZmZGAgBAAYAmZAGAMMzM",
								label = "Sunfury #1",
								metrics = {
									["Avg dps"] = "229K",
									["Avg key"] = "+12.8",
									["Max dps"] = "293K",
									["Max key"] = "+16",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 38.3,
							},
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMzAAAwAAmZmmlltZAAsBAwGjZmhNLzYmlZMmxMzwCzYmHYGAgBAAYAmZAzAghZmB",
								label = "Sunfury #2",
								metrics = {
									["Avg dps"] = "218K",
									["Avg key"] = "+12.9",
									["Max dps"] = "262K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 2.5,
							},
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMzAAAwAAmZmmlllZAAsBAwGMzMsZZGzsMjxMzMzwGzYGzAAMAAADwMDMzAghZmB",
								label = "Sunfury #3",
								metrics = {
									["Avg dps"] = "262K",
									["Avg key"] = "+12.9",
									["Max dps"] = "277K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 2.3,
							},
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMGAAAGAwMz0sssMDAgNAAWgZmhNLzYmlZMmZmZGWYmZmZGAgBAAYAmZAGAMMzM",
								label = "Sunfury #4",
								metrics = {
									["Avg dps"] = "266K",
									["Avg key"] = "+12.9",
									["Max dps"] = "266K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 1.8,
							},
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMzAAAwAAmZmmlllZAAsBAwGMzMsZZGzsMjxMzMzwCzYmZGAgBAAYAmZAGAMMzM",
								label = "Sunfury #5",
								metrics = {
									["Avg dps"] = "264K",
									["Avg key"] = "+12.5",
									["Max dps"] = "273K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 1.8,
							},
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMGAAAGAwMz0sssMDAgNAA2gZmhNLzYmlZMmZmZG2YmZmZGAgBAAYAmZAGAMMzM",
								label = "Sunfury #6",
								metrics = {
									["Avg dps"] = "237K",
									["Avg key"] = "+13.2",
									["Max dps"] = "261K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 1.5,
							},
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMGAAAGAwMz0sssNDAgNAA2gZmhNLzYmlZMmZmZGWYmZmZGAgBAAYAmZAGAMMzM",
								label = "Sunfury #7",
								metrics = {
									["Avg dps"] = "239K",
									["Avg key"] = "+13.5",
									["Max dps"] = "244K",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 1.4,
							},
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMGAAAGAwMz0sstNDAgNAAWgZmZsZZGzsMjxMmZGWYmZmZGAgBAAYAmZAGAMMzM",
								label = "Sunfury #8",
								metrics = {
									["Avg dps"] = "199K",
									["Avg key"] = "+12.6",
									["Max dps"] = "200K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 1.4,
							},
							{
								importString = "C4DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzQzMzAAAwAAmZmmlltZAAsBAwGMzMjNLzYmlZMmxMzwCzMzYGAgBAAYAmZAzAghZmB",
								label = "Sunfury #9",
								metrics = {
									["Avg dps"] = "265K",
									["Avg key"] = "+12.5",
									["Max dps"] = "265K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/arcane-mage",
								usagePct = 1.0,
							},
						},
					},
					name = "Sunfury",
				},
			},
			name = "Arcane",
		},
		[63] = {
			heroes = {
				[39] = {
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
								itemID = 255846,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242272,
								primary = false,
							},
							{
								category = "FOOD",
								itemID = 242274,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 85.0,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 5.7,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 3.2,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 69.6,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 12.0,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 9.7,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 75.5,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 10.6,
							},
							{
								itemID = 243989,
								slot = "SHOULDER",
								usagePct = 5.6,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 96.8,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 2.0,
							},
							{
								itemID = 244002,
								slot = "CHEST",
								usagePct = 0.8,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 91.7,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 6.2,
							},
							{
								itemID = 240094,
								slot = "LEGS",
								usagePct = 1.2,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 77.7,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 13.4,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 8.4,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 94.2,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 1.9,
							},
							{
								itemID = 244011,
								slot = "FINGER1",
								usagePct = 1.7,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 30.0,
								},
								{
									itemID = 250055,
									usagePct = 16.8,
								},
								{
									itemID = 159288,
									usagePct = 11.4,
								},
								{
									itemID = 193763,
									usagePct = 10.3,
								},
								{
									itemID = 251190,
									usagePct = 5.1,
								},
								{
									itemID = 249370,
									usagePct = 4.8,
								},
								{
									itemID = 251132,
									usagePct = 4.4,
								},
								{
									itemID = 272225,
									usagePct = 3.7,
								},
							},
							CHEST = {
								{
									itemID = 250063,
									usagePct = 45.1,
								},
								{
									itemID = 268284,
									usagePct = 26.0,
								},
								{
									itemID = 271567,
									usagePct = 8.4,
								},
								{
									itemID = 273785,
									usagePct = 5.1,
								},
								{
									itemID = 239655,
									usagePct = 4.0,
								},
								{
									itemID = 251139,
									usagePct = 3.7,
								},
								{
									itemID = 251147,
									usagePct = 2.9,
								},
								{
									itemID = 239032,
									usagePct = 1.5,
								},
							},
							FEET = {
								{
									itemID = 250062,
									usagePct = 47.3,
								},
								{
									itemID = 251137,
									usagePct = 9.5,
								},
								{
									itemID = 159243,
									usagePct = 8.4,
								},
								{
									itemID = 268282,
									usagePct = 7.7,
								},
								{
									itemID = 251219,
									usagePct = 5.1,
								},
								{
									itemID = 159259,
									usagePct = 4.0,
								},
								{
									itemID = 272232,
									usagePct = 3.3,
								},
								{
									itemID = 258584,
									usagePct = 2.9,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 59.3,
								},
								{
									itemID = 251093,
									usagePct = 30.8,
								},
								{
									itemID = 159459,
									usagePct = 12.5,
								},
								{
									itemID = 251115,
									usagePct = 12.1,
								},
								{
									itemID = 252258,
									usagePct = 11.7,
								},
								{
									itemID = 251194,
									usagePct = 9.2,
								},
								{
									itemID = 249920,
									usagePct = 8.4,
								},
								{
									itemID = 272147,
									usagePct = 7.7,
								},
							},
							HANDS = {
								{
									itemID = 250061,
									usagePct = 72.5,
								},
								{
									itemID = 271565,
									usagePct = 13.6,
								},
								{
									itemID = 277793,
									usagePct = 4.0,
								},
								{
									itemID = 251129,
									usagePct = 2.2,
								},
								{
									itemID = 273773,
									usagePct = 1.8,
								},
								{
									itemID = 151300,
									usagePct = 1.5,
								},
								{
									itemID = 272233,
									usagePct = 1.1,
								},
								{
									itemID = 249330,
									usagePct = 1.1,
								},
							},
							HEAD = {
								{
									itemID = 250060,
									usagePct = 80.2,
								},
								{
									itemID = 271564,
									usagePct = 9.2,
								},
								{
									itemID = 251232,
									usagePct = 3.3,
								},
								{
									itemID = 239047,
									usagePct = 2.2,
								},
								{
									itemID = 272234,
									usagePct = 1.8,
								},
								{
									itemID = 256997,
									usagePct = 0.7,
								},
								{
									itemID = 251199,
									usagePct = 0.7,
								},
								{
									itemID = 276019,
									usagePct = 0.7,
								},
							},
							LEGS = {
								{
									itemID = 250059,
									usagePct = 72.2,
								},
								{
									itemID = 271563,
									usagePct = 7.7,
								},
								{
									itemID = 193750,
									usagePct = 4.8,
								},
								{
									itemID = 273786,
									usagePct = 4.4,
								},
								{
									itemID = 251160,
									usagePct = 2.2,
								},
								{
									itemID = 272235,
									usagePct = 1.8,
								},
								{
									itemID = 275502,
									usagePct = 1.8,
								},
								{
									itemID = 159234,
									usagePct = 1.5,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 22.7,
								},
								{
									itemID = 251201,
									usagePct = 12.5,
								},
								{
									itemID = 159636,
									usagePct = 12.1,
								},
								{
									itemID = 273778,
									usagePct = 5.9,
								},
								{
									itemID = 251156,
									usagePct = 5.9,
								},
								{
									itemID = 251188,
									usagePct = 5.1,
								},
								{
									itemID = 251123,
									usagePct = 4.0,
								},
								{
									itemID = 249283,
									usagePct = 4.0,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 33.0,
								},
								{
									itemID = 251142,
									usagePct = 17.9,
								},
								{
									itemID = 240950,
									usagePct = 9.5,
								},
								{
									itemID = 249368,
									usagePct = 5.9,
								},
								{
									itemID = 251096,
									usagePct = 5.9,
								},
								{
									itemID = 250247,
									usagePct = 5.1,
								},
								{
									itemID = 251234,
									usagePct = 2.6,
								},
								{
									itemID = 268251,
									usagePct = 2.6,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 41.0,
								},
								{
									itemID = 251191,
									usagePct = 16.9,
								},
								{
									itemID = 249922,
									usagePct = 14.5,
								},
								{
									itemID = 159667,
									usagePct = 7.2,
								},
								{
									itemID = 273779,
									usagePct = 6.0,
								},
								{
									itemID = 258472,
									usagePct = 3.6,
								},
								{
									itemID = 271681,
									usagePct = 3.6,
								},
								{
									itemID = 272275,
									usagePct = 3.6,
								},
							},
							SHOULDER = {
								{
									itemID = 250058,
									usagePct = 71.8,
								},
								{
									itemID = 271562,
									usagePct = 8.8,
								},
								{
									itemID = 239045,
									usagePct = 3.3,
								},
								{
									itemID = 257001,
									usagePct = 2.6,
								},
								{
									itemID = 277790,
									usagePct = 2.6,
								},
								{
									itemID = 251213,
									usagePct = 1.8,
								},
								{
									itemID = 268241,
									usagePct = 1.8,
								},
								{
									itemID = 251227,
									usagePct = 1.5,
								},
							},
							TRINKET1 = {
								{
									itemID = 250144,
									usagePct = 55.3,
								},
								{
									itemID = 249346,
									usagePct = 43.2,
								},
								{
									itemID = 249343,
									usagePct = 18.3,
								},
								{
									itemID = 273796,
									usagePct = 15.0,
								},
								{
									itemID = 273649,
									usagePct = 12.1,
								},
								{
									itemID = 250256,
									usagePct = 7.0,
								},
								{
									itemID = 280376,
									usagePct = 6.2,
								},
								{
									itemID = 250214,
									usagePct = 5.9,
								},
							},
							WAIST = {
								{
									itemID = 239649,
									usagePct = 25.3,
								},
								{
									itemID = 193691,
									usagePct = 16.1,
								},
								{
									itemID = 251185,
									usagePct = 13.6,
								},
								{
									itemID = 251222,
									usagePct = 8.4,
								},
								{
									itemID = 159255,
									usagePct = 7.3,
								},
								{
									itemID = 249376,
									usagePct = 6.2,
								},
								{
									itemID = 260371,
									usagePct = 5.1,
								},
								{
									itemID = 250057,
									usagePct = 3.3,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 57.9,
								},
								{
									itemID = 251154,
									usagePct = 6.2,
								},
								{
									itemID = 249315,
									usagePct = 4.8,
								},
								{
									itemID = 251127,
									usagePct = 4.8,
								},
								{
									itemID = 251108,
									usagePct = 4.4,
								},
								{
									itemID = 151305,
									usagePct = 2.9,
								},
								{
									itemID = 159263,
									usagePct = 2.6,
								},
								{
									itemID = 277788,
									usagePct = 2.6,
								},
							},
						},
						gems = {
							{
								itemID = 240892,
								usagePct = 28.1,
							},
							{
								itemID = 240900,
								usagePct = 19.5,
							},
							{
								itemID = 240983,
								usagePct = 10.0,
							},
							{
								itemID = 240967,
								usagePct = 9.1,
							},
							{
								itemID = 240916,
								usagePct = 8.3,
							},
							{
								itemID = 240908,
								usagePct = 7.9,
							},
							{
								itemID = 240894,
								usagePct = 5.2,
							},
							{
								itemID = 240906,
								usagePct = 3.3,
							},
							{
								itemID = 240918,
								usagePct = 1.6,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 172840.0,
							metric = "dps",
							outOf = 40,
							rank = 17,
							sample = 300,
							top = 331176.1,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/fire-mage",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/mage/fire/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 30.0,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 14.6,
								stat = "MASTERY",
								weight = 0.763,
							},
							{
								share = 11.1,
								stat = "CRIT",
								weight = 0.159,
							},
							{
								share = 1.9,
								stat = "VERSATILITY",
								weight = 0.102,
							},
						},
						talentBuilds = {
							{
								importString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzwMLzMzswMzIzMGAAAGAwMz0sssNDAwmZmx2YmZGbAAAAAwiZmZGAAYMjZMzMzMLAYmBYMGMDD",
								label = "Sunfury #1",
								metrics = {
									["Avg dps"] = "198K",
									["Avg key"] = "+11.6",
									["Max dps"] = "242K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fire-mage",
								usagePct = 3.7,
							},
							{
								importString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzIzMzMAAAGAwMz0sstNDAwmZmx2MzMzYDAAAAALmZmZAAgZMmZmZMzsMAMzAMGwMMGA",
								label = "Sunfury #2",
								metrics = {
									["Avg dps"] = "125K",
									["Avg key"] = "+11.4",
									["Max dps"] = "136K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fire-mage",
								usagePct = 3.7,
							},
							{
								importString = "C8DAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFmZGZmxAAAwAAmZmmtltZAA2MzM2GzMzYDAAAAALmZmZeAAAMmhxMzMzsAgZGgxMDmhBA",
								label = "Sunfury #3",
								metrics = {
									["Avg dps"] = "176K",
									["Avg key"] = "+11.8",
									["Max dps"] = "206K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/fire-mage",
								usagePct = 3.3,
							},
						},
					},
					name = "Sunfury",
				},
			},
			name = "Fire",
		},
		[64] = {
			heroes = {
				[40] = {
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
								itemID = 255846,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242274,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 73.1,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 24.6,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 1.6,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 76.2,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 9.5,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 6.8,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 75.9,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 11.9,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 5.0,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 99.4,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 0.6,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 96.2,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 3.5,
							},
							{
								itemID = 240154,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 77.9,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 15.7,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 6.4,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 88.0,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 6.7,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 3.3,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 28.1,
								},
								{
									itemID = 258575,
									usagePct = 13.9,
								},
								{
									itemID = 250055,
									usagePct = 10.5,
								},
								{
									itemID = 251190,
									usagePct = 7.4,
								},
								{
									itemID = 251132,
									usagePct = 6.2,
								},
								{
									itemID = 159288,
									usagePct = 5.2,
								},
								{
									itemID = 193763,
									usagePct = 4.6,
								},
								{
									itemID = 272230,
									usagePct = 3.4,
								},
							},
							CHEST = {
								{
									itemID = 250063,
									usagePct = 87.3,
								},
								{
									itemID = 271567,
									usagePct = 4.6,
								},
								{
									itemID = 268284,
									usagePct = 1.9,
								},
								{
									itemID = 273785,
									usagePct = 1.5,
								},
								{
									itemID = 251147,
									usagePct = 1.2,
								},
								{
									itemID = 272231,
									usagePct = 1.2,
								},
								{
									itemID = 277795,
									usagePct = 0.9,
								},
								{
									itemID = 239032,
									usagePct = 0.6,
								},
							},
							FEET = {
								{
									itemID = 268282,
									usagePct = 59.3,
								},
								{
									itemID = 251137,
									usagePct = 6.5,
								},
								{
									itemID = 277794,
									usagePct = 6.2,
								},
								{
									itemID = 249373,
									usagePct = 5.9,
								},
								{
									itemID = 251219,
									usagePct = 5.2,
								},
								{
									itemID = 159259,
									usagePct = 4.0,
								},
								{
									itemID = 250062,
									usagePct = 3.1,
								},
								{
									itemID = 272232,
									usagePct = 2.8,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 42.9,
								},
								{
									itemID = 193708,
									usagePct = 33.3,
								},
								{
									itemID = 251217,
									usagePct = 18.8,
								},
								{
									itemID = 249919,
									usagePct = 16.0,
								},
								{
									itemID = 251136,
									usagePct = 11.7,
								},
								{
									itemID = 240949,
									usagePct = 8.6,
								},
								{
									itemID = 251093,
									usagePct = 7.7,
								},
								{
									itemID = 158366,
									usagePct = 7.7,
								},
							},
							HANDS = {
								{
									itemID = 250061,
									usagePct = 86.4,
								},
								{
									itemID = 271565,
									usagePct = 4.3,
								},
								{
									itemID = 272233,
									usagePct = 2.5,
								},
								{
									itemID = 273773,
									usagePct = 1.9,
								},
								{
									itemID = 277793,
									usagePct = 1.5,
								},
								{
									itemID = 239653,
									usagePct = 1.5,
								},
								{
									itemID = 159247,
									usagePct = 0.6,
								},
								{
									itemID = 251129,
									usagePct = 0.6,
								},
							},
							HEAD = {
								{
									itemID = 250060,
									usagePct = 79.9,
								},
								{
									itemID = 271564,
									usagePct = 6.5,
								},
								{
									itemID = 251232,
									usagePct = 3.1,
								},
								{
									itemID = 251080,
									usagePct = 2.5,
								},
								{
									itemID = 251199,
									usagePct = 2.5,
								},
								{
									itemID = 193703,
									usagePct = 0.9,
								},
								{
									itemID = 277792,
									usagePct = 0.9,
								},
								{
									itemID = 266429,
									usagePct = 0.9,
								},
							},
							LEGS = {
								{
									itemID = 250059,
									usagePct = 84.6,
								},
								{
									itemID = 271563,
									usagePct = 6.2,
								},
								{
									itemID = 193750,
									usagePct = 2.2,
								},
								{
									itemID = 251160,
									usagePct = 1.5,
								},
								{
									itemID = 257005,
									usagePct = 1.2,
								},
								{
									itemID = 277791,
									usagePct = 1.2,
								},
								{
									itemID = 273786,
									usagePct = 0.9,
								},
								{
									itemID = 251090,
									usagePct = 0.6,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 22.2,
								},
								{
									itemID = 258514,
									usagePct = 12.0,
								},
								{
									itemID = 258218,
									usagePct = 10.2,
								},
								{
									itemID = 193761,
									usagePct = 9.3,
								},
								{
									itemID = 273778,
									usagePct = 7.4,
								},
								{
									itemID = 251123,
									usagePct = 5.9,
								},
								{
									itemID = 249286,
									usagePct = 3.4,
								},
								{
									itemID = 251225,
									usagePct = 3.4,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 64.8,
								},
								{
									itemID = 240950,
									usagePct = 6.8,
								},
								{
									itemID = 249337,
									usagePct = 6.2,
								},
								{
									itemID = 251234,
									usagePct = 5.2,
								},
								{
									itemID = 50228,
									usagePct = 4.6,
								},
								{
									itemID = 251142,
									usagePct = 2.5,
								},
								{
									itemID = 273781,
									usagePct = 2.2,
								},
								{
									itemID = 272229,
									usagePct = 1.9,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 54.2,
								},
								{
									itemID = 258523,
									usagePct = 7.6,
								},
								{
									itemID = 249276,
									usagePct = 6.8,
								},
								{
									itemID = 193766,
									usagePct = 5.1,
								},
								{
									itemID = 277798,
									usagePct = 5.1,
								},
								{
									itemID = 159667,
									usagePct = 5.1,
								},
								{
									itemID = 271681,
									usagePct = 5.1,
								},
								{
									itemID = 251191,
									usagePct = 2.5,
								},
							},
							SHOULDER = {
								{
									itemID = 250058,
									usagePct = 31.8,
								},
								{
									itemID = 251085,
									usagePct = 29.3,
								},
								{
									itemID = 271562,
									usagePct = 8.0,
								},
								{
									itemID = 239031,
									usagePct = 5.6,
								},
								{
									itemID = 251213,
									usagePct = 4.3,
								},
								{
									itemID = 272236,
									usagePct = 4.0,
								},
								{
									itemID = 239650,
									usagePct = 4.0,
								},
								{
									itemID = 239045,
									usagePct = 3.7,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 75.0,
								},
								{
									itemID = 249346,
									usagePct = 69.8,
								},
								{
									itemID = 250215,
									usagePct = 5.9,
								},
								{
									itemID = 274493,
									usagePct = 5.2,
								},
								{
									itemID = 273796,
									usagePct = 4.6,
								},
								{
									itemID = 264507,
									usagePct = 4.6,
								},
								{
									itemID = 268292,
									usagePct = 4.6,
								},
								{
									itemID = 250224,
									usagePct = 2.8,
								},
							},
							WAIST = {
								{
									itemID = 250057,
									usagePct = 41.4,
								},
								{
									itemID = 239649,
									usagePct = 10.5,
								},
								{
									itemID = 251185,
									usagePct = 7.7,
								},
								{
									itemID = 193691,
									usagePct = 6.5,
								},
								{
									itemID = 251222,
									usagePct = 6.5,
								},
								{
									itemID = 276794,
									usagePct = 6.5,
								},
								{
									itemID = 239664,
									usagePct = 5.9,
								},
								{
									itemID = 159255,
									usagePct = 3.4,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 72.5,
								},
								{
									itemID = 251154,
									usagePct = 6.8,
								},
								{
									itemID = 249315,
									usagePct = 3.1,
								},
								{
									itemID = 251127,
									usagePct = 2.8,
								},
								{
									itemID = 272238,
									usagePct = 2.2,
								},
								{
									itemID = 277788,
									usagePct = 2.2,
								},
								{
									itemID = 151305,
									usagePct = 1.9,
								},
								{
									itemID = 159263,
									usagePct = 1.9,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 50.7,
							},
							{
								itemID = 240983,
								usagePct = 14.9,
							},
							{
								itemID = 240898,
								usagePct = 13.8,
							},
							{
								itemID = 240906,
								usagePct = 4.6,
							},
							{
								itemID = 240967,
								usagePct = 3.2,
							},
							{
								itemID = 240900,
								usagePct = 2.7,
							},
							{
								itemID = 240890,
								usagePct = 2.6,
							},
							{
								itemID = 240892,
								usagePct = 1.6,
							},
							{
								itemID = 240918,
								usagePct = 1.3,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 146885.3,
							metric = "dps",
							outOf = 40,
							rank = 26,
							sample = 300,
							top = 223975.3,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/frost-mage",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/mage/frost/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 50.8,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 25.3,
								stat = "CRIT",
								weight = 0.882,
							},
							{
								share = 21.1,
								stat = "HASTE",
								weight = 0.704,
							},
							{
								share = 0.5,
								stat = "VERSATILITY",
								weight = 0.043,
							},
						},
						talentBuilds = {
							{
								importString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFmZmYGmZmZmZWMzMMjZAAAgZmZWWmZaDAAWAAAAWAYbbMzMDmthxMjNAAAmZDYGGDYGMA",
								label = "Spellslinger #1",
								metrics = {
									["Avg dps"] = "137K",
									["Avg key"] = "+11.1",
									["Max dps"] = "173K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-mage",
								usagePct = 3.7,
							},
							{
								importString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzEzMmZmZmZWMzMjZMDAAAMzMzyyMTbAAwCAAAYBgtlxMzMY2GGzwCAAAzsBMDjBMDGGA",
								label = "Spellslinger #2",
								metrics = {
									["Avg dps"] = "163K",
									["Avg key"] = "+11.3",
									["Max dps"] = "191K",
									["Max key"] = "+11",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-mage",
								usagePct = 2.8,
							},
							{
								importString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFmZmYmxMzMzMziZmhZMDAAAMzMzyyMTbAAwGAAAwCAbbjZmZwsNMmZsBAAwMbAzADYGMA",
								label = "Spellslinger #3",
								metrics = {
									["Avg dps"] = "141K",
									["Avg key"] = "+11.0",
									["Max dps"] = "184K",
									["Max key"] = "+11",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-mage",
								usagePct = 1.9,
							},
							{
								importString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFmZmYGmZmZmZWMzMMjZAAAgZmZWWmZaDAA2AAAAWAYbbMzMDmthxMjFAAAmZDYGGDYGMA",
								label = "Spellslinger #4",
								metrics = {
									["Avg dps"] = "141K",
									["Avg key"] = "+11.2",
									["Max dps"] = "185K",
									["Max key"] = "+11",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-mage",
								usagePct = 1.5,
							},
							{
								importString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmlhZmYmxMzMzMziZmhZMDAAAMzMzyyMTbAAwGAAAwCAbbjZmZwsNMmZsAAAwMbAzwYAzgB",
								label = "Spellslinger #5",
								metrics = {
									["Avg dps"] = "137K",
									["Avg key"] = "+11.0",
									["Max dps"] = "143K",
									["Max key"] = "+11",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-mage",
								usagePct = 1.2,
							},
						},
					},
					name = "Spellslinger",
				},
				[41] = {
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
								itemID = 255846,
								primary = true,
							},
							{
								category = "FOOD",
								itemID = 242274,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 73.1,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 24.6,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 1.6,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 76.2,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 9.5,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 6.8,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 75.9,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 11.9,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 5.0,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 99.4,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 0.6,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 96.2,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 3.5,
							},
							{
								itemID = 240154,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 77.9,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 15.7,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 6.4,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 88.0,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 6.7,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 3.3,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 28.1,
								},
								{
									itemID = 258575,
									usagePct = 13.9,
								},
								{
									itemID = 250055,
									usagePct = 10.5,
								},
								{
									itemID = 251190,
									usagePct = 7.4,
								},
								{
									itemID = 251132,
									usagePct = 6.2,
								},
								{
									itemID = 159288,
									usagePct = 5.2,
								},
								{
									itemID = 193763,
									usagePct = 4.6,
								},
								{
									itemID = 272230,
									usagePct = 3.4,
								},
							},
							CHEST = {
								{
									itemID = 250063,
									usagePct = 87.3,
								},
								{
									itemID = 271567,
									usagePct = 4.6,
								},
								{
									itemID = 268284,
									usagePct = 1.9,
								},
								{
									itemID = 273785,
									usagePct = 1.5,
								},
								{
									itemID = 251147,
									usagePct = 1.2,
								},
								{
									itemID = 272231,
									usagePct = 1.2,
								},
								{
									itemID = 277795,
									usagePct = 0.9,
								},
								{
									itemID = 239032,
									usagePct = 0.6,
								},
							},
							FEET = {
								{
									itemID = 268282,
									usagePct = 59.3,
								},
								{
									itemID = 251137,
									usagePct = 6.5,
								},
								{
									itemID = 277794,
									usagePct = 6.2,
								},
								{
									itemID = 249373,
									usagePct = 5.9,
								},
								{
									itemID = 251219,
									usagePct = 5.2,
								},
								{
									itemID = 159259,
									usagePct = 4.0,
								},
								{
									itemID = 250062,
									usagePct = 3.1,
								},
								{
									itemID = 272232,
									usagePct = 2.8,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 42.9,
								},
								{
									itemID = 193708,
									usagePct = 33.3,
								},
								{
									itemID = 251217,
									usagePct = 18.8,
								},
								{
									itemID = 249919,
									usagePct = 16.0,
								},
								{
									itemID = 251136,
									usagePct = 11.7,
								},
								{
									itemID = 240949,
									usagePct = 8.6,
								},
								{
									itemID = 251093,
									usagePct = 7.7,
								},
								{
									itemID = 158366,
									usagePct = 7.7,
								},
							},
							HANDS = {
								{
									itemID = 250061,
									usagePct = 86.4,
								},
								{
									itemID = 271565,
									usagePct = 4.3,
								},
								{
									itemID = 272233,
									usagePct = 2.5,
								},
								{
									itemID = 273773,
									usagePct = 1.9,
								},
								{
									itemID = 277793,
									usagePct = 1.5,
								},
								{
									itemID = 239653,
									usagePct = 1.5,
								},
								{
									itemID = 159247,
									usagePct = 0.6,
								},
								{
									itemID = 251129,
									usagePct = 0.6,
								},
							},
							HEAD = {
								{
									itemID = 250060,
									usagePct = 79.9,
								},
								{
									itemID = 271564,
									usagePct = 6.5,
								},
								{
									itemID = 251232,
									usagePct = 3.1,
								},
								{
									itemID = 251080,
									usagePct = 2.5,
								},
								{
									itemID = 251199,
									usagePct = 2.5,
								},
								{
									itemID = 193703,
									usagePct = 0.9,
								},
								{
									itemID = 277792,
									usagePct = 0.9,
								},
								{
									itemID = 266429,
									usagePct = 0.9,
								},
							},
							LEGS = {
								{
									itemID = 250059,
									usagePct = 84.6,
								},
								{
									itemID = 271563,
									usagePct = 6.2,
								},
								{
									itemID = 193750,
									usagePct = 2.2,
								},
								{
									itemID = 251160,
									usagePct = 1.5,
								},
								{
									itemID = 257005,
									usagePct = 1.2,
								},
								{
									itemID = 277791,
									usagePct = 1.2,
								},
								{
									itemID = 273786,
									usagePct = 0.9,
								},
								{
									itemID = 251090,
									usagePct = 0.6,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 22.2,
								},
								{
									itemID = 258514,
									usagePct = 12.0,
								},
								{
									itemID = 258218,
									usagePct = 10.2,
								},
								{
									itemID = 193761,
									usagePct = 9.3,
								},
								{
									itemID = 273778,
									usagePct = 7.4,
								},
								{
									itemID = 251123,
									usagePct = 5.9,
								},
								{
									itemID = 249286,
									usagePct = 3.4,
								},
								{
									itemID = 251225,
									usagePct = 3.4,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 64.8,
								},
								{
									itemID = 240950,
									usagePct = 6.8,
								},
								{
									itemID = 249337,
									usagePct = 6.2,
								},
								{
									itemID = 251234,
									usagePct = 5.2,
								},
								{
									itemID = 50228,
									usagePct = 4.6,
								},
								{
									itemID = 251142,
									usagePct = 2.5,
								},
								{
									itemID = 273781,
									usagePct = 2.2,
								},
								{
									itemID = 272229,
									usagePct = 1.9,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 54.2,
								},
								{
									itemID = 258523,
									usagePct = 7.6,
								},
								{
									itemID = 249276,
									usagePct = 6.8,
								},
								{
									itemID = 193766,
									usagePct = 5.1,
								},
								{
									itemID = 277798,
									usagePct = 5.1,
								},
								{
									itemID = 159667,
									usagePct = 5.1,
								},
								{
									itemID = 271681,
									usagePct = 5.1,
								},
								{
									itemID = 251191,
									usagePct = 2.5,
								},
							},
							SHOULDER = {
								{
									itemID = 250058,
									usagePct = 31.8,
								},
								{
									itemID = 251085,
									usagePct = 29.3,
								},
								{
									itemID = 271562,
									usagePct = 8.0,
								},
								{
									itemID = 239031,
									usagePct = 5.6,
								},
								{
									itemID = 251213,
									usagePct = 4.3,
								},
								{
									itemID = 272236,
									usagePct = 4.0,
								},
								{
									itemID = 239650,
									usagePct = 4.0,
								},
								{
									itemID = 239045,
									usagePct = 3.7,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 75.0,
								},
								{
									itemID = 249346,
									usagePct = 69.8,
								},
								{
									itemID = 250215,
									usagePct = 5.9,
								},
								{
									itemID = 274493,
									usagePct = 5.2,
								},
								{
									itemID = 273796,
									usagePct = 4.6,
								},
								{
									itemID = 264507,
									usagePct = 4.6,
								},
								{
									itemID = 268292,
									usagePct = 4.6,
								},
								{
									itemID = 250224,
									usagePct = 2.8,
								},
							},
							WAIST = {
								{
									itemID = 250057,
									usagePct = 41.4,
								},
								{
									itemID = 239649,
									usagePct = 10.5,
								},
								{
									itemID = 251185,
									usagePct = 7.7,
								},
								{
									itemID = 193691,
									usagePct = 6.5,
								},
								{
									itemID = 251222,
									usagePct = 6.5,
								},
								{
									itemID = 276794,
									usagePct = 6.5,
								},
								{
									itemID = 239664,
									usagePct = 5.9,
								},
								{
									itemID = 159255,
									usagePct = 3.4,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 72.5,
								},
								{
									itemID = 251154,
									usagePct = 6.8,
								},
								{
									itemID = 249315,
									usagePct = 3.1,
								},
								{
									itemID = 251127,
									usagePct = 2.8,
								},
								{
									itemID = 272238,
									usagePct = 2.2,
								},
								{
									itemID = 277788,
									usagePct = 2.2,
								},
								{
									itemID = 151305,
									usagePct = 1.9,
								},
								{
									itemID = 159263,
									usagePct = 1.9,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 50.7,
							},
							{
								itemID = 240983,
								usagePct = 14.9,
							},
							{
								itemID = 240898,
								usagePct = 13.8,
							},
							{
								itemID = 240906,
								usagePct = 4.6,
							},
							{
								itemID = 240967,
								usagePct = 3.2,
							},
							{
								itemID = 240900,
								usagePct = 2.7,
							},
							{
								itemID = 240890,
								usagePct = 2.6,
							},
							{
								itemID = 240892,
								usagePct = 1.6,
							},
							{
								itemID = 240918,
								usagePct = 1.3,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 146885.3,
							metric = "dps",
							outOf = 40,
							rank = 26,
							sample = 300,
							top = 223975.3,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/frost-mage",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/mage/frost/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 50.8,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 25.3,
								stat = "CRIT",
								weight = 0.882,
							},
							{
								share = 21.1,
								stat = "HASTE",
								weight = 0.704,
							},
							{
								share = 0.5,
								stat = "VERSATILITY",
								weight = 0.043,
							},
						},
						talentBuilds = {
							{
								importString = "CAEAAAAAAAAAAAAAAAAAAAAAAMzwYZmZmFMzEzMmZmZmZWMzMzMzMzsMTzMbzCAAAsAAALAAAAAstMmZmBz2MmZGbLAAAgZGMDjBMAGA",
								label = "Frostfire #1",
								metrics = {
									["Avg dps"] = "125K",
									["Avg key"] = "+11.3",
									["Max dps"] = "128K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/frost-mage",
								usagePct = 1.2,
							},
						},
					},
					name = "Frostfire",
				},
			},
			name = "Frost",
		},
	},
})

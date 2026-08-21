-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

ns.RegisterClassData("PRIEST", {
	specs = {
		[256] = {
			heroes = {
				[18] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
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
								category = "POTION",
								itemID = 241303,
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
								itemID = 255848,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 57.5,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 30.2,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 6.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 61.5,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 28.1,
							},
							{
								itemID = 243949,
								slot = "HEAD",
								usagePct = 4.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 67.2,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 21.8,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 6.4,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 58.1,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 41.0,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.5,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 64.7,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 33.4,
							},
							{
								itemID = 240157,
								slot = "LEGS",
								usagePct = 1.5,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 62.7,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 29.4,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 7.5,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 51.8,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 18.8,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 14.0,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 21.1,
								},
								{
									itemID = 193763,
									usagePct = 13.4,
								},
								{
									itemID = 251190,
									usagePct = 11.5,
								},
								{
									itemID = 159288,
									usagePct = 8.1,
								},
								{
									itemID = 251132,
									usagePct = 7.2,
								},
								{
									itemID = 249370,
									usagePct = 5.1,
								},
								{
									itemID = 272225,
									usagePct = 5.0,
								},
								{
									itemID = 250046,
									usagePct = 4.9,
								},
							},
							CHEST = {
								{
									itemID = 250054,
									usagePct = 54.6,
								},
								{
									itemID = 268284,
									usagePct = 16.8,
								},
								{
									itemID = 271558,
									usagePct = 13.6,
								},
								{
									itemID = 273785,
									usagePct = 3.9,
								},
								{
									itemID = 251139,
									usagePct = 3.6,
								},
								{
									itemID = 49825,
									usagePct = 2.1,
								},
								{
									itemID = 239032,
									usagePct = 1.6,
								},
								{
									itemID = 249912,
									usagePct = 1.1,
								},
							},
							FEET = {
								{
									itemID = 268282,
									usagePct = 36.1,
								},
								{
									itemID = 250053,
									usagePct = 13.0,
								},
								{
									itemID = 251219,
									usagePct = 12.4,
								},
								{
									itemID = 251137,
									usagePct = 9.3,
								},
								{
									itemID = 159259,
									usagePct = 6.8,
								},
								{
									itemID = 159243,
									usagePct = 6.8,
								},
								{
									itemID = 277794,
									usagePct = 4.0,
								},
								{
									itemID = 272232,
									usagePct = 3.1,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 62.0,
								},
								{
									itemID = 251093,
									usagePct = 18.1,
								},
								{
									itemID = 251217,
									usagePct = 17.1,
								},
								{
									itemID = 249920,
									usagePct = 15.3,
								},
								{
									itemID = 273792,
									usagePct = 13.1,
								},
								{
									itemID = 252258,
									usagePct = 10.5,
								},
								{
									itemID = 159459,
									usagePct = 10.4,
								},
								{
									itemID = 49812,
									usagePct = 8.6,
								},
							},
							HANDS = {
								{
									itemID = 250052,
									usagePct = 66.8,
								},
								{
									itemID = 271556,
									usagePct = 12.6,
								},
								{
									itemID = 159247,
									usagePct = 5.3,
								},
								{
									itemID = 273773,
									usagePct = 4.3,
								},
								{
									itemID = 251129,
									usagePct = 2.9,
								},
								{
									itemID = 277793,
									usagePct = 2.4,
								},
								{
									itemID = 251172,
									usagePct = 1.9,
								},
								{
									itemID = 239653,
									usagePct = 1.1,
								},
							},
							HEAD = {
								{
									itemID = 250051,
									usagePct = 66.1,
								},
								{
									itemID = 271555,
									usagePct = 18.4,
								},
								{
									itemID = 251232,
									usagePct = 3.1,
								},
								{
									itemID = 272234,
									usagePct = 3.0,
								},
								{
									itemID = 251199,
									usagePct = 2.1,
								},
								{
									itemID = 277792,
									usagePct = 1.9,
								},
								{
									itemID = 239047,
									usagePct = 1.6,
								},
								{
									itemID = 271874,
									usagePct = 0.9,
								},
							},
							LEGS = {
								{
									itemID = 250050,
									usagePct = 65.4,
								},
								{
									itemID = 271554,
									usagePct = 18.9,
								},
								{
									itemID = 193750,
									usagePct = 4.9,
								},
								{
									itemID = 251160,
									usagePct = 2.8,
								},
								{
									itemID = 159234,
									usagePct = 2.5,
								},
								{
									itemID = 273786,
									usagePct = 2.4,
								},
								{
									itemID = 277791,
									usagePct = 1.4,
								},
								{
									itemID = 272235,
									usagePct = 0.9,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 17.4,
								},
								{
									itemID = 273778,
									usagePct = 11.0,
								},
								{
									itemID = 251201,
									usagePct = 7.4,
								},
								{
									itemID = 251188,
									usagePct = 7.0,
								},
								{
									itemID = 249283,
									usagePct = 5.9,
								},
								{
									itemID = 251156,
									usagePct = 5.4,
								},
								{
									itemID = 159636,
									usagePct = 4.9,
								},
								{
									itemID = 251123,
									usagePct = 4.4,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 43.4,
								},
								{
									itemID = 251142,
									usagePct = 9.8,
								},
								{
									itemID = 251173,
									usagePct = 9.1,
								},
								{
									itemID = 273781,
									usagePct = 8.1,
								},
								{
									itemID = 249368,
									usagePct = 5.5,
								},
								{
									itemID = 50228,
									usagePct = 4.5,
								},
								{
									itemID = 251234,
									usagePct = 4.0,
								},
								{
									itemID = 268250,
									usagePct = 3.9,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 46.8,
								},
								{
									itemID = 249922,
									usagePct = 9.7,
								},
								{
									itemID = 251191,
									usagePct = 8.0,
								},
								{
									itemID = 273779,
									usagePct = 5.5,
								},
								{
									itemID = 271681,
									usagePct = 5.2,
								},
								{
									itemID = 193766,
									usagePct = 5.0,
								},
								{
									itemID = 249276,
									usagePct = 3.7,
								},
								{
									itemID = 193709,
									usagePct = 3.2,
								},
							},
							SHOULDER = {
								{
									itemID = 250049,
									usagePct = 58.6,
								},
								{
									itemID = 271553,
									usagePct = 19.9,
								},
								{
									itemID = 239031,
									usagePct = 6.8,
								},
								{
									itemID = 239045,
									usagePct = 4.8,
								},
								{
									itemID = 251227,
									usagePct = 2.3,
								},
								{
									itemID = 272236,
									usagePct = 1.5,
								},
								{
									itemID = 277790,
									usagePct = 1.3,
								},
								{
									itemID = 249328,
									usagePct = 1.0,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 49.9,
								},
								{
									itemID = 268292,
									usagePct = 24.4,
								},
								{
									itemID = 249808,
									usagePct = 21.0,
								},
								{
									itemID = 250256,
									usagePct = 10.0,
								},
								{
									itemID = 249346,
									usagePct = 9.0,
								},
								{
									itemID = 250215,
									usagePct = 7.0,
								},
								{
									itemID = 251792,
									usagePct = 6.4,
								},
								{
									itemID = 274493,
									usagePct = 5.9,
								},
							},
							WAIST = {
								{
									itemID = 239664,
									usagePct = 30.4,
								},
								{
									itemID = 193691,
									usagePct = 10.3,
								},
								{
									itemID = 251185,
									usagePct = 9.0,
								},
								{
									itemID = 251222,
									usagePct = 9.0,
								},
								{
									itemID = 249319,
									usagePct = 8.9,
								},
								{
									itemID = 250048,
									usagePct = 7.9,
								},
								{
									itemID = 239649,
									usagePct = 7.1,
								},
								{
									itemID = 159255,
									usagePct = 4.5,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 36.3,
								},
								{
									itemID = 249315,
									usagePct = 12.9,
								},
								{
									itemID = 251127,
									usagePct = 11.6,
								},
								{
									itemID = 251154,
									usagePct = 10.9,
								},
								{
									itemID = 277788,
									usagePct = 7.0,
								},
								{
									itemID = 159263,
									usagePct = 4.5,
								},
								{
									itemID = 250047,
									usagePct = 4.0,
								},
								{
									itemID = 239671,
									usagePct = 2.3,
								},
							},
						},
						gems = {
							{
								itemID = 240890,
								usagePct = 25.4,
							},
							{
								itemID = 240892,
								usagePct = 18.3,
							},
							{
								itemID = 240983,
								usagePct = 17.1,
							},
							{
								itemID = 240906,
								usagePct = 11.0,
							},
							{
								itemID = 240908,
								usagePct = 8.1,
							},
							{
								itemID = 240900,
								usagePct = 6.7,
							},
							{
								itemID = 240898,
								usagePct = 4.7,
							},
							{
								itemID = 240910,
								usagePct = 2.0,
							},
							{
								itemID = 240969,
								usagePct = 1.4,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 18539.7,
							metric = "dps",
							outOf = 40,
							rank = 39,
							sample = 300,
							top = 48577.7,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/discipline-priest",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/priest/discipline/enchants-gems-pve-healer",
							},
						},
						statPriority = {
							{
								share = 28.6,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 34.9,
								stat = "MASTERY",
								weight = 0.742,
							},
							{
								share = 16.9,
								stat = "CRIT",
								weight = 0.505,
							},
							{
								share = 1.5,
								stat = "VERSATILITY",
								weight = 0.098,
							},
						},
						talentBuilds = {
							{
								importString = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMzMWYMGzgZzsNzMzMzMDAAAAAAAAAgxYZGMzMjNjZGsZamYwMDAAwsNbLgxmBAgxMzMGMDmZwIYG",
								label = "Voidweaver #1",
								metrics = {
									["Avg key"] = "+11.4",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/discipline-priest",
								usagePct = 2.5,
							},
							{
								importString = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMzMWYMGzgZzsNzMzMzMDAAAAAAAAAgZYZGMzMzwYmBbmmJGMzAAAMbz2CYsZAAYMzMjBzgZGMCmB",
								label = "Voidweaver #2",
								metrics = {
									["Avg key"] = "+11.1",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/discipline-priest",
								usagePct = 2.5,
							},
							{
								importString = "CAQAAAAAAAAAAAAAAAAAAAAAAADsYmxyMjZmZmhZDmZYmBAAAAAAAAAAjZ2mBzMzgZmZAamYwMDAAwsNbbgxmBAgxMPwMGmZwMDmJYG",
								label = "Voidweaver #3",
								metrics = {
									["Avg key"] = "+11.5",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/discipline-priest",
								usagePct = 1.3,
							},
						},
					},
					name = "Voidweaver",
				},
				[20] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241324,
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
								category = "POTION",
								itemID = 241303,
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
								itemID = 255848,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 57.5,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 30.2,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 6.1,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 61.5,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 28.1,
							},
							{
								itemID = 243949,
								slot = "HEAD",
								usagePct = 4.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 67.2,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 21.8,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 6.4,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 58.1,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 41.0,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.5,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 64.7,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 33.4,
							},
							{
								itemID = 240157,
								slot = "LEGS",
								usagePct = 1.5,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 62.7,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 29.4,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 7.5,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 51.8,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 18.8,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 14.0,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 21.1,
								},
								{
									itemID = 193763,
									usagePct = 13.4,
								},
								{
									itemID = 251190,
									usagePct = 11.5,
								},
								{
									itemID = 159288,
									usagePct = 8.1,
								},
								{
									itemID = 251132,
									usagePct = 7.2,
								},
								{
									itemID = 249370,
									usagePct = 5.1,
								},
								{
									itemID = 272225,
									usagePct = 5.0,
								},
								{
									itemID = 250046,
									usagePct = 4.9,
								},
							},
							CHEST = {
								{
									itemID = 250054,
									usagePct = 54.6,
								},
								{
									itemID = 268284,
									usagePct = 16.8,
								},
								{
									itemID = 271558,
									usagePct = 13.6,
								},
								{
									itemID = 273785,
									usagePct = 3.9,
								},
								{
									itemID = 251139,
									usagePct = 3.6,
								},
								{
									itemID = 49825,
									usagePct = 2.1,
								},
								{
									itemID = 239032,
									usagePct = 1.6,
								},
								{
									itemID = 249912,
									usagePct = 1.1,
								},
							},
							FEET = {
								{
									itemID = 268282,
									usagePct = 36.1,
								},
								{
									itemID = 250053,
									usagePct = 13.0,
								},
								{
									itemID = 251219,
									usagePct = 12.4,
								},
								{
									itemID = 251137,
									usagePct = 9.3,
								},
								{
									itemID = 159259,
									usagePct = 6.8,
								},
								{
									itemID = 159243,
									usagePct = 6.8,
								},
								{
									itemID = 277794,
									usagePct = 4.0,
								},
								{
									itemID = 272232,
									usagePct = 3.1,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 62.0,
								},
								{
									itemID = 251093,
									usagePct = 18.1,
								},
								{
									itemID = 251217,
									usagePct = 17.1,
								},
								{
									itemID = 249920,
									usagePct = 15.3,
								},
								{
									itemID = 273792,
									usagePct = 13.1,
								},
								{
									itemID = 252258,
									usagePct = 10.5,
								},
								{
									itemID = 159459,
									usagePct = 10.4,
								},
								{
									itemID = 49812,
									usagePct = 8.6,
								},
							},
							HANDS = {
								{
									itemID = 250052,
									usagePct = 66.8,
								},
								{
									itemID = 271556,
									usagePct = 12.6,
								},
								{
									itemID = 159247,
									usagePct = 5.3,
								},
								{
									itemID = 273773,
									usagePct = 4.3,
								},
								{
									itemID = 251129,
									usagePct = 2.9,
								},
								{
									itemID = 277793,
									usagePct = 2.4,
								},
								{
									itemID = 251172,
									usagePct = 1.9,
								},
								{
									itemID = 239653,
									usagePct = 1.1,
								},
							},
							HEAD = {
								{
									itemID = 250051,
									usagePct = 66.1,
								},
								{
									itemID = 271555,
									usagePct = 18.4,
								},
								{
									itemID = 251232,
									usagePct = 3.1,
								},
								{
									itemID = 272234,
									usagePct = 3.0,
								},
								{
									itemID = 251199,
									usagePct = 2.1,
								},
								{
									itemID = 277792,
									usagePct = 1.9,
								},
								{
									itemID = 239047,
									usagePct = 1.6,
								},
								{
									itemID = 271874,
									usagePct = 0.9,
								},
							},
							LEGS = {
								{
									itemID = 250050,
									usagePct = 65.4,
								},
								{
									itemID = 271554,
									usagePct = 18.9,
								},
								{
									itemID = 193750,
									usagePct = 4.9,
								},
								{
									itemID = 251160,
									usagePct = 2.8,
								},
								{
									itemID = 159234,
									usagePct = 2.5,
								},
								{
									itemID = 273786,
									usagePct = 2.4,
								},
								{
									itemID = 277791,
									usagePct = 1.4,
								},
								{
									itemID = 272235,
									usagePct = 0.9,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 17.4,
								},
								{
									itemID = 273778,
									usagePct = 11.0,
								},
								{
									itemID = 251201,
									usagePct = 7.4,
								},
								{
									itemID = 251188,
									usagePct = 7.0,
								},
								{
									itemID = 249283,
									usagePct = 5.9,
								},
								{
									itemID = 251156,
									usagePct = 5.4,
								},
								{
									itemID = 159636,
									usagePct = 4.9,
								},
								{
									itemID = 251123,
									usagePct = 4.4,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 43.4,
								},
								{
									itemID = 251142,
									usagePct = 9.8,
								},
								{
									itemID = 251173,
									usagePct = 9.1,
								},
								{
									itemID = 273781,
									usagePct = 8.1,
								},
								{
									itemID = 249368,
									usagePct = 5.5,
								},
								{
									itemID = 50228,
									usagePct = 4.5,
								},
								{
									itemID = 251234,
									usagePct = 4.0,
								},
								{
									itemID = 268250,
									usagePct = 3.9,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 46.8,
								},
								{
									itemID = 249922,
									usagePct = 9.7,
								},
								{
									itemID = 251191,
									usagePct = 8.0,
								},
								{
									itemID = 273779,
									usagePct = 5.5,
								},
								{
									itemID = 271681,
									usagePct = 5.2,
								},
								{
									itemID = 193766,
									usagePct = 5.0,
								},
								{
									itemID = 249276,
									usagePct = 3.7,
								},
								{
									itemID = 193709,
									usagePct = 3.2,
								},
							},
							SHOULDER = {
								{
									itemID = 250049,
									usagePct = 58.6,
								},
								{
									itemID = 271553,
									usagePct = 19.9,
								},
								{
									itemID = 239031,
									usagePct = 6.8,
								},
								{
									itemID = 239045,
									usagePct = 4.8,
								},
								{
									itemID = 251227,
									usagePct = 2.3,
								},
								{
									itemID = 272236,
									usagePct = 1.5,
								},
								{
									itemID = 277790,
									usagePct = 1.3,
								},
								{
									itemID = 249328,
									usagePct = 1.0,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 49.9,
								},
								{
									itemID = 268292,
									usagePct = 24.4,
								},
								{
									itemID = 249808,
									usagePct = 21.0,
								},
								{
									itemID = 250256,
									usagePct = 10.0,
								},
								{
									itemID = 249346,
									usagePct = 9.0,
								},
								{
									itemID = 250215,
									usagePct = 7.0,
								},
								{
									itemID = 251792,
									usagePct = 6.4,
								},
								{
									itemID = 274493,
									usagePct = 5.9,
								},
							},
							WAIST = {
								{
									itemID = 239664,
									usagePct = 30.4,
								},
								{
									itemID = 193691,
									usagePct = 10.3,
								},
								{
									itemID = 251185,
									usagePct = 9.0,
								},
								{
									itemID = 251222,
									usagePct = 9.0,
								},
								{
									itemID = 249319,
									usagePct = 8.9,
								},
								{
									itemID = 250048,
									usagePct = 7.9,
								},
								{
									itemID = 239649,
									usagePct = 7.1,
								},
								{
									itemID = 159255,
									usagePct = 4.5,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 36.3,
								},
								{
									itemID = 249315,
									usagePct = 12.9,
								},
								{
									itemID = 251127,
									usagePct = 11.6,
								},
								{
									itemID = 251154,
									usagePct = 10.9,
								},
								{
									itemID = 277788,
									usagePct = 7.0,
								},
								{
									itemID = 159263,
									usagePct = 4.5,
								},
								{
									itemID = 250047,
									usagePct = 4.0,
								},
								{
									itemID = 239671,
									usagePct = 2.3,
								},
							},
						},
						gems = {
							{
								itemID = 240890,
								usagePct = 25.4,
							},
							{
								itemID = 240892,
								usagePct = 18.3,
							},
							{
								itemID = 240983,
								usagePct = 17.1,
							},
							{
								itemID = 240906,
								usagePct = 11.0,
							},
							{
								itemID = 240908,
								usagePct = 8.1,
							},
							{
								itemID = 240900,
								usagePct = 6.7,
							},
							{
								itemID = 240898,
								usagePct = 4.7,
							},
							{
								itemID = 240910,
								usagePct = 2.0,
							},
							{
								itemID = 240969,
								usagePct = 1.4,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 18539.7,
							metric = "dps",
							outOf = 40,
							rank = 39,
							sample = 300,
							top = 48577.7,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/discipline-priest",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/priest/discipline/enchants-gems-pve-healer",
							},
						},
						statPriority = {
							{
								share = 28.6,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 34.9,
								stat = "MASTERY",
								weight = 0.742,
							},
							{
								share = 16.9,
								stat = "CRIT",
								weight = 0.505,
							},
							{
								share = 1.5,
								stat = "VERSATILITY",
								weight = 0.098,
							},
						},
						talentBuilds = {
							{
								importString = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMDWmZMmBmZbmtZmZmxMDAAAAAAAAAgxYZGMzMjNjZGsZamYAmZDDhxsMAjBLAAwYmZGDmBYmZAmB",
								label = "Oracle #1",
								metrics = {
									["Avg key"] = "+11.5",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/discipline-priest",
								usagePct = 14.5,
							},
							{
								importString = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMDWmZMmBmZbmtZmZmxMDAAAAAAAAAgZYZGMzMzwYmBbmmJGgZWwQYMLDwYwCAAMmZmxgZAmZGgZA",
								label = "Oracle #2",
								metrics = {
									["Avg key"] = "+11.4",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/discipline-priest",
								usagePct = 9.5,
							},
							{
								importString = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMDWmZMmBmZbmtZmZmxMDAAAAAAAAAgxYZGMzMjNjZGsZamYAmZBDhxsMAjBLAAwYmZGDmBYmZAmB",
								label = "Oracle #3",
								metrics = {
									["Avg key"] = "+11.6",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/discipline-priest",
								usagePct = 4.0,
							},
							{
								importString = "CAQAAAAAAAAAAAAAAAAAAAAAAADsMDWmZMmBmZbmtZmZmxMDAAAAAAAAAgxYZGMzMzwYmBbmmJGgZWwQYMLDwYwCAAMmZmxgZAmZGgZA",
								label = "Oracle #4",
								metrics = {
									["Avg key"] = "+11.3",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/discipline-priest",
								usagePct = 1.5,
							},
						},
					},
					name = "Oracle",
				},
			},
			name = "Discipline",
		},
		[257] = {
			heroes = {
				[20] = {
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
								category = "POTION",
								itemID = 241308,
								primary = false,
							},
							{
								category = "POTION",
								itemID = 241303,
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
								itemID = 242275,
								primary = false,
							},
						},
						enchants = {
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 82.0,
							},
							{
								itemID = 243973,
								slot = "MAINHAND",
								usagePct = 12.0,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 2.8,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 68.9,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 18.2,
							},
							{
								itemID = 243949,
								slot = "HEAD",
								usagePct = 7.1,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 73.1,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 17.6,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 4.6,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 68.2,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 31.2,
							},
							{
								itemID = 243946,
								slot = "CHEST",
								usagePct = 0.3,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 64.4,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 34.2,
							},
							{
								itemID = 240157,
								slot = "LEGS",
								usagePct = 0.6,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 71.5,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 20.6,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 7.1,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 37.0,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 23.8,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 19.9,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 14.5,
								},
								{
									itemID = 193763,
									usagePct = 11.3,
								},
								{
									itemID = 251190,
									usagePct = 10.4,
								},
								{
									itemID = 250046,
									usagePct = 9.2,
								},
								{
									itemID = 251132,
									usagePct = 7.9,
								},
								{
									itemID = 159288,
									usagePct = 7.1,
								},
								{
									itemID = 249335,
									usagePct = 5.9,
								},
								{
									itemID = 272226,
									usagePct = 3.4,
								},
							},
							CHEST = {
								{
									itemID = 250054,
									usagePct = 51.2,
								},
								{
									itemID = 271558,
									usagePct = 16.3,
								},
								{
									itemID = 268284,
									usagePct = 12.1,
								},
								{
									itemID = 251139,
									usagePct = 4.5,
								},
								{
									itemID = 239032,
									usagePct = 4.5,
								},
								{
									itemID = 273785,
									usagePct = 4.3,
								},
								{
									itemID = 251147,
									usagePct = 1.9,
								},
								{
									itemID = 277795,
									usagePct = 1.0,
								},
							},
							FEET = {
								{
									itemID = 268282,
									usagePct = 38.2,
								},
								{
									itemID = 251219,
									usagePct = 10.1,
								},
								{
									itemID = 251137,
									usagePct = 8.8,
								},
								{
									itemID = 272232,
									usagePct = 7.5,
								},
								{
									itemID = 159259,
									usagePct = 6.4,
								},
								{
									itemID = 250053,
									usagePct = 5.9,
								},
								{
									itemID = 159243,
									usagePct = 5.9,
								},
								{
									itemID = 277794,
									usagePct = 4.8,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 39.1,
								},
								{
									itemID = 251217,
									usagePct = 14.4,
								},
								{
									itemID = 249336,
									usagePct = 14.3,
								},
								{
									itemID = 159459,
									usagePct = 10.7,
								},
								{
									itemID = 273792,
									usagePct = 10.1,
								},
								{
									itemID = 151308,
									usagePct = 8.8,
								},
								{
									itemID = 193708,
									usagePct = 8.2,
								},
								{
									itemID = 251194,
									usagePct = 7.9,
								},
							},
							HANDS = {
								{
									itemID = 250052,
									usagePct = 63.6,
								},
								{
									itemID = 271556,
									usagePct = 13.5,
								},
								{
									itemID = 251129,
									usagePct = 4.2,
								},
								{
									itemID = 273773,
									usagePct = 4.1,
								},
								{
									itemID = 159247,
									usagePct = 2.7,
								},
								{
									itemID = 277793,
									usagePct = 2.5,
								},
								{
									itemID = 251172,
									usagePct = 1.9,
								},
								{
									itemID = 151300,
									usagePct = 1.5,
								},
							},
							HEAD = {
								{
									itemID = 250051,
									usagePct = 68.7,
								},
								{
									itemID = 271555,
									usagePct = 8.7,
								},
								{
									itemID = 239047,
									usagePct = 5.9,
								},
								{
									itemID = 251232,
									usagePct = 4.6,
								},
								{
									itemID = 272234,
									usagePct = 3.1,
								},
								{
									itemID = 277792,
									usagePct = 2.8,
								},
								{
									itemID = 251199,
									usagePct = 2.5,
								},
								{
									itemID = 268242,
									usagePct = 1.1,
								},
							},
							LEGS = {
								{
									itemID = 250050,
									usagePct = 58.2,
								},
								{
									itemID = 271554,
									usagePct = 16.2,
								},
								{
									itemID = 273786,
									usagePct = 5.1,
								},
								{
									itemID = 249323,
									usagePct = 4.2,
								},
								{
									itemID = 193750,
									usagePct = 3.9,
								},
								{
									itemID = 251160,
									usagePct = 3.6,
								},
								{
									itemID = 159234,
									usagePct = 2.5,
								},
								{
									itemID = 277791,
									usagePct = 1.9,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 26.9,
								},
								{
									itemID = 273778,
									usagePct = 7.0,
								},
								{
									itemID = 249293,
									usagePct = 6.0,
								},
								{
									itemID = 159636,
									usagePct = 5.6,
								},
								{
									itemID = 193761,
									usagePct = 4.6,
								},
								{
									itemID = 251188,
									usagePct = 4.3,
								},
								{
									itemID = 251201,
									usagePct = 4.2,
								},
								{
									itemID = 251156,
									usagePct = 4.2,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 48.4,
								},
								{
									itemID = 251234,
									usagePct = 8.8,
								},
								{
									itemID = 273781,
									usagePct = 6.6,
								},
								{
									itemID = 251173,
									usagePct = 6.2,
								},
								{
									itemID = 251142,
									usagePct = 5.5,
								},
								{
									itemID = 272229,
									usagePct = 3.4,
								},
								{
									itemID = 240950,
									usagePct = 2.9,
								},
								{
									itemID = 249337,
									usagePct = 2.8,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 38.1,
								},
								{
									itemID = 273779,
									usagePct = 10.2,
								},
								{
									itemID = 249276,
									usagePct = 9.9,
								},
								{
									itemID = 271681,
									usagePct = 6.5,
								},
								{
									itemID = 249922,
									usagePct = 5.7,
								},
								{
									itemID = 193766,
									usagePct = 5.7,
								},
								{
									itemID = 159667,
									usagePct = 5.7,
								},
								{
									itemID = 251191,
									usagePct = 3.4,
								},
							},
							SHOULDER = {
								{
									itemID = 250049,
									usagePct = 64.7,
								},
								{
									itemID = 271553,
									usagePct = 16.1,
								},
								{
									itemID = 239031,
									usagePct = 3.9,
								},
								{
									itemID = 239045,
									usagePct = 3.2,
								},
								{
									itemID = 277790,
									usagePct = 2.5,
								},
								{
									itemID = 251227,
									usagePct = 2.5,
								},
								{
									itemID = 272236,
									usagePct = 2.5,
								},
								{
									itemID = 278888,
									usagePct = 0.9,
								},
							},
							TRINKET1 = {
								{
									itemID = 268292,
									usagePct = 39.2,
								},
								{
									itemID = 249343,
									usagePct = 25.9,
								},
								{
									itemID = 249808,
									usagePct = 19.1,
								},
								{
									itemID = 264507,
									usagePct = 12.4,
								},
								{
									itemID = 249809,
									usagePct = 8.9,
								},
								{
									itemID = 250214,
									usagePct = 8.8,
								},
								{
									itemID = 250215,
									usagePct = 8.4,
								},
								{
									itemID = 273796,
									usagePct = 6.5,
								},
							},
							WAIST = {
								{
									itemID = 239664,
									usagePct = 34.3,
								},
								{
									itemID = 193691,
									usagePct = 10.3,
								},
								{
									itemID = 251185,
									usagePct = 7.8,
								},
								{
									itemID = 239649,
									usagePct = 7.5,
								},
								{
									itemID = 251222,
									usagePct = 6.9,
								},
								{
									itemID = 159255,
									usagePct = 5.6,
								},
								{
									itemID = 272237,
									usagePct = 5.1,
								},
								{
									itemID = 250048,
									usagePct = 4.2,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 33.2,
								},
								{
									itemID = 250047,
									usagePct = 14.9,
								},
								{
									itemID = 251154,
									usagePct = 10.4,
								},
								{
									itemID = 251127,
									usagePct = 9.6,
								},
								{
									itemID = 249315,
									usagePct = 7.6,
								},
								{
									itemID = 159263,
									usagePct = 5.1,
								},
								{
									itemID = 277788,
									usagePct = 5.1,
								},
								{
									itemID = 268228,
									usagePct = 2.9,
								},
							},
						},
						gems = {
							{
								itemID = 240910,
								usagePct = 18.6,
							},
							{
								itemID = 240983,
								usagePct = 16.7,
							},
							{
								itemID = 240908,
								usagePct = 12.8,
							},
							{
								itemID = 240890,
								usagePct = 12.0,
							},
							{
								itemID = 240906,
								usagePct = 10.9,
							},
							{
								itemID = 240892,
								usagePct = 8.9,
							},
							{
								itemID = 240898,
								usagePct = 4.9,
							},
							{
								itemID = 240914,
								usagePct = 3.7,
							},
							{
								itemID = 240900,
								usagePct = 2.7,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 25295.5,
							metric = "dps",
							outOf = 40,
							rank = 38,
							sample = 300,
							top = 58350.4,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/holy-priest",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/priest/holy/enchants-gems-pve-healer",
							},
						},
						statPriority = {
							{
								share = 22.8,
								stat = "CRIT",
								weight = 1.0,
							},
							{
								share = 19.8,
								stat = "HASTE",
								weight = 0.88,
							},
							{
								share = 20.4,
								stat = "MASTERY",
								weight = 0.818,
							},
							{
								share = 4.5,
								stat = "VERSATILITY",
								weight = 0.323,
							},
						},
						talentBuilds = {
							{
								importString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAbGzYWGzMmZMMDsMzMzAAAAYMzyMMzMzYbGzMAmpAYmFMEGz2AMGYxMzAgZMzDYMYGgZmBMA",
								label = "Oracle #1",
								metrics = {
									["Avg key"] = "+11.4",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-priest",
								usagePct = 13.8,
							},
							{
								importString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAMzMmlxMjZGDzALzMzMAAAAGzsMDmZmx2MmZAMTBwMLYIMmtBYMwiZmBAzYmxYwMAzMDYA",
								label = "Oracle #2",
								metrics = {
									["Avg key"] = "+11.5",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-priest",
								usagePct = 8.4,
							},
							{
								importString = "CEQAAAAAAAAAAAAAAAAAAAAAAADAAAAAAgZmxsMMjZGDzwYZmZmBAAAwYmlZwMzM2MmZMgZKAmZBDhxsNAjBWMzMLAMjZGjBzAMzMgB",
								label = "Oracle #3",
								metrics = {
									["Avg key"] = "+11.5",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-priest",
								usagePct = 6.9,
							},
							{
								importString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAbGzYWGzwMjhZYsMzMzAAAAYMzyMYmZGmxMDgZKAmZBDhxsMAjBWMzMAYGzMGDmBYmZGYA",
								label = "Oracle #4",
								metrics = {
									["Avg key"] = "+12.2",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-priest",
								usagePct = 3.1,
							},
							{
								importString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAbGzYWGzMmZMMDsMzMzAAAAYMzyMMzMzwMmZMgZKAmZBDhxsNAjBWMzMAYGz8AGDmBYmZAD",
								label = "Oracle #5",
								metrics = {
									["Avg key"] = "+11.5",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-priest",
								usagePct = 2.3,
							},
							{
								importString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAMzMmlxMjZGDzALzMzMAAAAGzsMDzMzM2mxMDgZKAmZBDhxsNAjBWMzMAYGz8AGDmBYmZAD",
								label = "Oracle #6",
								metrics = {
									["Avg key"] = "+11.6",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-priest",
								usagePct = 2.0,
							},
							{
								importString = "CEQAAAAAAAAAAAAAAAAAAAAAAADAAAAAAgxMmlZmZMzYYGYbmZmBAAAwYmlZwMzMMjZGDYmCgZWwQYMLDwYgFzMzCAzYmxYwMAzMDYA",
								label = "Oracle #7",
								metrics = {
									["Avg key"] = "+12.9",
									["Max key"] = "+15",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-priest",
								usagePct = 1.8,
							},
							{
								importString = "CEQAAAAAAAAAAAAAAAAAAAAAAwYAAAAAAAMzMmlxMjZGDzALzMzMAAAAGzsMDmZmhZMzYAzUAMzCGCjZbAGDsYmZAwMmZMGMDwMzAGA",
								label = "Oracle #8",
								metrics = {
									["Avg key"] = "+11.3",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/holy-priest",
								usagePct = 1.5,
							},
						},
					},
					name = "Oracle",
				},
			},
			name = "Holy",
		},
		[258] = {
			heroes = {
				[18] = {
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
								itemID = 242273,
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
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 41.8,
							},
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 24.6,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 22.0,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 52.7,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 22.7,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 17.7,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 44.1,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 34.8,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 16.8,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 97.2,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 2.6,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.1,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 91.8,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 7.8,
							},
							{
								itemID = 240157,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 52.8,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 32.5,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 14.5,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 74.8,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 11.0,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 9.4,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 19.6,
								},
								{
									itemID = 251190,
									usagePct = 12.8,
								},
								{
									itemID = 193763,
									usagePct = 10.8,
								},
								{
									itemID = 251132,
									usagePct = 10.2,
								},
								{
									itemID = 159288,
									usagePct = 7.9,
								},
								{
									itemID = 239661,
									usagePct = 5.0,
								},
								{
									itemID = 272225,
									usagePct = 3.7,
								},
								{
									itemID = 249370,
									usagePct = 3.3,
								},
							},
							CHEST = {
								{
									itemID = 250054,
									usagePct = 70.1,
								},
								{
									itemID = 271558,
									usagePct = 17.6,
								},
								{
									itemID = 268284,
									usagePct = 5.2,
								},
								{
									itemID = 273785,
									usagePct = 2.8,
								},
								{
									itemID = 251139,
									usagePct = 1.5,
								},
								{
									itemID = 239032,
									usagePct = 1.2,
								},
								{
									itemID = 272231,
									usagePct = 0.7,
								},
								{
									itemID = 268221,
									usagePct = 0.7,
								},
							},
							FEET = {
								{
									itemID = 268282,
									usagePct = 40.8,
								},
								{
									itemID = 250053,
									usagePct = 13.7,
								},
								{
									itemID = 251137,
									usagePct = 12.3,
								},
								{
									itemID = 251219,
									usagePct = 8.9,
								},
								{
									itemID = 159243,
									usagePct = 5.0,
								},
								{
									itemID = 159259,
									usagePct = 5.0,
								},
								{
									itemID = 272232,
									usagePct = 3.6,
								},
								{
									itemID = 268255,
									usagePct = 2.6,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 57.2,
								},
								{
									itemID = 251217,
									usagePct = 29.3,
								},
								{
									itemID = 251093,
									usagePct = 21.3,
								},
								{
									itemID = 252258,
									usagePct = 13.7,
								},
								{
									itemID = 251136,
									usagePct = 11.6,
								},
								{
									itemID = 249920,
									usagePct = 11.4,
								},
								{
									itemID = 273792,
									usagePct = 10.2,
								},
								{
									itemID = 272147,
									usagePct = 5.2,
								},
							},
							HANDS = {
								{
									itemID = 250052,
									usagePct = 46.8,
								},
								{
									itemID = 271556,
									usagePct = 14.3,
								},
								{
									itemID = 273773,
									usagePct = 7.0,
								},
								{
									itemID = 159247,
									usagePct = 6.9,
								},
								{
									itemID = 151300,
									usagePct = 4.8,
								},
								{
									itemID = 277793,
									usagePct = 4.5,
								},
								{
									itemID = 251129,
									usagePct = 3.7,
								},
								{
									itemID = 251172,
									usagePct = 3.7,
								},
							},
							HEAD = {
								{
									itemID = 250051,
									usagePct = 67.1,
								},
								{
									itemID = 271555,
									usagePct = 19.0,
								},
								{
									itemID = 272234,
									usagePct = 3.0,
								},
								{
									itemID = 251199,
									usagePct = 2.5,
								},
								{
									itemID = 271874,
									usagePct = 1.3,
								},
								{
									itemID = 251232,
									usagePct = 1.3,
								},
								{
									itemID = 239047,
									usagePct = 1.1,
								},
								{
									itemID = 251080,
									usagePct = 0.8,
								},
							},
							LEGS = {
								{
									itemID = 250050,
									usagePct = 71.6,
								},
								{
									itemID = 271554,
									usagePct = 18.8,
								},
								{
									itemID = 159234,
									usagePct = 2.8,
								},
								{
									itemID = 193750,
									usagePct = 2.4,
								},
								{
									itemID = 273786,
									usagePct = 2.0,
								},
								{
									itemID = 251160,
									usagePct = 1.2,
								},
								{
									itemID = 277791,
									usagePct = 0.4,
								},
								{
									itemID = 268236,
									usagePct = 0.4,
								},
							},
							MAINHAND = {
								{
									itemID = 273778,
									usagePct = 12.4,
								},
								{
									itemID = 245770,
									usagePct = 12.2,
								},
								{
									itemID = 251201,
									usagePct = 11.2,
								},
								{
									itemID = 251123,
									usagePct = 7.5,
								},
								{
									itemID = 193761,
									usagePct = 7.1,
								},
								{
									itemID = 251188,
									usagePct = 6.7,
								},
								{
									itemID = 159636,
									usagePct = 5.8,
								},
								{
									itemID = 251225,
									usagePct = 4.8,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 46.9,
								},
								{
									itemID = 249368,
									usagePct = 9.6,
								},
								{
									itemID = 251142,
									usagePct = 7.7,
								},
								{
									itemID = 251234,
									usagePct = 7.5,
								},
								{
									itemID = 251173,
									usagePct = 7.4,
								},
								{
									itemID = 273781,
									usagePct = 6.9,
								},
								{
									itemID = 240950,
									usagePct = 2.5,
								},
								{
									itemID = 265739,
									usagePct = 1.6,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 41.4,
								},
								{
									itemID = 249922,
									usagePct = 12.4,
								},
								{
									itemID = 251191,
									usagePct = 8.7,
								},
								{
									itemID = 271681,
									usagePct = 8.5,
								},
								{
									itemID = 273779,
									usagePct = 8.2,
								},
								{
									itemID = 193766,
									usagePct = 4.8,
								},
								{
									itemID = 268197,
									usagePct = 3.7,
								},
								{
									itemID = 159667,
									usagePct = 3.4,
								},
							},
							SHOULDER = {
								{
									itemID = 250049,
									usagePct = 68.7,
								},
								{
									itemID = 271553,
									usagePct = 15.7,
								},
								{
									itemID = 239045,
									usagePct = 5.8,
								},
								{
									itemID = 239031,
									usagePct = 2.4,
								},
								{
									itemID = 251227,
									usagePct = 1.7,
								},
								{
									itemID = 251213,
									usagePct = 1.2,
								},
								{
									itemID = 272236,
									usagePct = 0.9,
								},
								{
									itemID = 277790,
									usagePct = 0.8,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 73.2,
								},
								{
									itemID = 249346,
									usagePct = 37.1,
								},
								{
									itemID = 250215,
									usagePct = 18.8,
								},
								{
									itemID = 273796,
									usagePct = 15.2,
								},
								{
									itemID = 250144,
									usagePct = 9.6,
								},
								{
									itemID = 250214,
									usagePct = 7.4,
								},
								{
									itemID = 268292,
									usagePct = 4.1,
								},
								{
									itemID = 270167,
									usagePct = 3.7,
								},
							},
							WAIST = {
								{
									itemID = 239664,
									usagePct = 42.8,
								},
								{
									itemID = 251185,
									usagePct = 12.9,
								},
								{
									itemID = 193691,
									usagePct = 10.8,
								},
								{
									itemID = 239649,
									usagePct = 8.5,
								},
								{
									itemID = 251222,
									usagePct = 8.5,
								},
								{
									itemID = 250048,
									usagePct = 5.2,
								},
								{
									itemID = 249319,
									usagePct = 2.0,
								},
								{
									itemID = 159255,
									usagePct = 1.8,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 45.2,
								},
								{
									itemID = 249315,
									usagePct = 10.7,
								},
								{
									itemID = 251127,
									usagePct = 10.6,
								},
								{
									itemID = 251154,
									usagePct = 6.3,
								},
								{
									itemID = 239660,
									usagePct = 5.5,
								},
								{
									itemID = 277788,
									usagePct = 5.0,
								},
								{
									itemID = 250047,
									usagePct = 4.9,
								},
								{
									itemID = 159263,
									usagePct = 3.2,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 19.6,
							},
							{
								itemID = 240983,
								usagePct = 18.4,
							},
							{
								itemID = 240892,
								usagePct = 15.2,
							},
							{
								itemID = 240906,
								usagePct = 14.2,
							},
							{
								itemID = 240898,
								usagePct = 11.8,
							},
							{
								itemID = 240900,
								usagePct = 9.2,
							},
							{
								itemID = 240890,
								usagePct = 6.6,
							},
							{
								itemID = 240894,
								usagePct = 1.5,
							},
							{
								itemID = 240910,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 179924.6,
							metric = "dps",
							outOf = 40,
							rank = 12,
							sample = 300,
							top = 271518.9,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/shadow-priest",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/priest/shadow/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 26.8,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 13.7,
								stat = "MASTERY",
								weight = 0.894,
							},
							{
								share = 17.4,
								stat = "CRIT",
								weight = 0.577,
							},
							{
								share = 0.7,
								stat = "VERSATILITY",
								weight = 0.056,
							},
						},
						talentBuilds = {
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjZGAAAAAAAAAAAghZxMGbzMmZWmZYmx2MGzMzYDZGLmpBYmZGAIAz2stAmNGAYwYmZGz2YGMzgZwA",
								label = "Voidweaver #1",
								metrics = {
									["Avg dps"] = "181K",
									["Avg key"] = "+11.6",
									["Max dps"] = "220K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 6.1,
							},
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDAAAAAAAAAAAAmZxMmZbmxMzyMzYG2mZGzMzYDZGLmpBYmZGAIAz2stAmNGAYwYmZGzGzgZGMDGA",
								label = "Voidweaver #2",
								metrics = {
									["Avg dps"] = "180K",
									["Avg key"] = "+12.1",
									["Max dps"] = "282K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 5.3,
							},
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMjZMGAAAAAAAAAAAAjZZmxYZmxMz2MDjx2MzYmZGLIzw2MNAzMzAABY2mtNwsxAADGzMzY2GzgZGMDGA",
								label = "Voidweaver #3",
								metrics = {
									["Avg dps"] = "175K",
									["Avg key"] = "+12.1",
									["Max dps"] = "230K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 2.2,
							},
						},
					},
					name = "Voidweaver",
				},
				[19] = {
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
								itemID = 242273,
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
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 41.8,
							},
							{
								itemID = 244029,
								slot = "MAINHAND",
								usagePct = 24.6,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 22.0,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 52.7,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 22.7,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 17.7,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 44.1,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 34.8,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 16.8,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 97.2,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 2.6,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.1,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 91.8,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 7.8,
							},
							{
								itemID = 240157,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 52.8,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 32.5,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 14.5,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 74.8,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 11.0,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 9.4,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 19.6,
								},
								{
									itemID = 251190,
									usagePct = 12.8,
								},
								{
									itemID = 193763,
									usagePct = 10.8,
								},
								{
									itemID = 251132,
									usagePct = 10.2,
								},
								{
									itemID = 159288,
									usagePct = 7.9,
								},
								{
									itemID = 239661,
									usagePct = 5.0,
								},
								{
									itemID = 272225,
									usagePct = 3.7,
								},
								{
									itemID = 249370,
									usagePct = 3.3,
								},
							},
							CHEST = {
								{
									itemID = 250054,
									usagePct = 70.1,
								},
								{
									itemID = 271558,
									usagePct = 17.6,
								},
								{
									itemID = 268284,
									usagePct = 5.2,
								},
								{
									itemID = 273785,
									usagePct = 2.8,
								},
								{
									itemID = 251139,
									usagePct = 1.5,
								},
								{
									itemID = 239032,
									usagePct = 1.2,
								},
								{
									itemID = 272231,
									usagePct = 0.7,
								},
								{
									itemID = 268221,
									usagePct = 0.7,
								},
							},
							FEET = {
								{
									itemID = 268282,
									usagePct = 40.8,
								},
								{
									itemID = 250053,
									usagePct = 13.7,
								},
								{
									itemID = 251137,
									usagePct = 12.3,
								},
								{
									itemID = 251219,
									usagePct = 8.9,
								},
								{
									itemID = 159243,
									usagePct = 5.0,
								},
								{
									itemID = 159259,
									usagePct = 5.0,
								},
								{
									itemID = 272232,
									usagePct = 3.6,
								},
								{
									itemID = 268255,
									usagePct = 2.6,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 57.2,
								},
								{
									itemID = 251217,
									usagePct = 29.3,
								},
								{
									itemID = 251093,
									usagePct = 21.3,
								},
								{
									itemID = 252258,
									usagePct = 13.7,
								},
								{
									itemID = 251136,
									usagePct = 11.6,
								},
								{
									itemID = 249920,
									usagePct = 11.4,
								},
								{
									itemID = 273792,
									usagePct = 10.2,
								},
								{
									itemID = 272147,
									usagePct = 5.2,
								},
							},
							HANDS = {
								{
									itemID = 250052,
									usagePct = 46.8,
								},
								{
									itemID = 271556,
									usagePct = 14.3,
								},
								{
									itemID = 273773,
									usagePct = 7.0,
								},
								{
									itemID = 159247,
									usagePct = 6.9,
								},
								{
									itemID = 151300,
									usagePct = 4.8,
								},
								{
									itemID = 277793,
									usagePct = 4.5,
								},
								{
									itemID = 251129,
									usagePct = 3.7,
								},
								{
									itemID = 251172,
									usagePct = 3.7,
								},
							},
							HEAD = {
								{
									itemID = 250051,
									usagePct = 67.1,
								},
								{
									itemID = 271555,
									usagePct = 19.0,
								},
								{
									itemID = 272234,
									usagePct = 3.0,
								},
								{
									itemID = 251199,
									usagePct = 2.5,
								},
								{
									itemID = 271874,
									usagePct = 1.3,
								},
								{
									itemID = 251232,
									usagePct = 1.3,
								},
								{
									itemID = 239047,
									usagePct = 1.1,
								},
								{
									itemID = 251080,
									usagePct = 0.8,
								},
							},
							LEGS = {
								{
									itemID = 250050,
									usagePct = 71.6,
								},
								{
									itemID = 271554,
									usagePct = 18.8,
								},
								{
									itemID = 159234,
									usagePct = 2.8,
								},
								{
									itemID = 193750,
									usagePct = 2.4,
								},
								{
									itemID = 273786,
									usagePct = 2.0,
								},
								{
									itemID = 251160,
									usagePct = 1.2,
								},
								{
									itemID = 277791,
									usagePct = 0.4,
								},
								{
									itemID = 268236,
									usagePct = 0.4,
								},
							},
							MAINHAND = {
								{
									itemID = 273778,
									usagePct = 12.4,
								},
								{
									itemID = 245770,
									usagePct = 12.2,
								},
								{
									itemID = 251201,
									usagePct = 11.2,
								},
								{
									itemID = 251123,
									usagePct = 7.5,
								},
								{
									itemID = 193761,
									usagePct = 7.1,
								},
								{
									itemID = 251188,
									usagePct = 6.7,
								},
								{
									itemID = 159636,
									usagePct = 5.8,
								},
								{
									itemID = 251225,
									usagePct = 4.8,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 46.9,
								},
								{
									itemID = 249368,
									usagePct = 9.6,
								},
								{
									itemID = 251142,
									usagePct = 7.7,
								},
								{
									itemID = 251234,
									usagePct = 7.5,
								},
								{
									itemID = 251173,
									usagePct = 7.4,
								},
								{
									itemID = 273781,
									usagePct = 6.9,
								},
								{
									itemID = 240950,
									usagePct = 2.5,
								},
								{
									itemID = 265739,
									usagePct = 1.6,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 41.4,
								},
								{
									itemID = 249922,
									usagePct = 12.4,
								},
								{
									itemID = 251191,
									usagePct = 8.7,
								},
								{
									itemID = 271681,
									usagePct = 8.5,
								},
								{
									itemID = 273779,
									usagePct = 8.2,
								},
								{
									itemID = 193766,
									usagePct = 4.8,
								},
								{
									itemID = 268197,
									usagePct = 3.7,
								},
								{
									itemID = 159667,
									usagePct = 3.4,
								},
							},
							SHOULDER = {
								{
									itemID = 250049,
									usagePct = 68.7,
								},
								{
									itemID = 271553,
									usagePct = 15.7,
								},
								{
									itemID = 239045,
									usagePct = 5.8,
								},
								{
									itemID = 239031,
									usagePct = 2.4,
								},
								{
									itemID = 251227,
									usagePct = 1.7,
								},
								{
									itemID = 251213,
									usagePct = 1.2,
								},
								{
									itemID = 272236,
									usagePct = 0.9,
								},
								{
									itemID = 277790,
									usagePct = 0.8,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 73.2,
								},
								{
									itemID = 249346,
									usagePct = 37.1,
								},
								{
									itemID = 250215,
									usagePct = 18.8,
								},
								{
									itemID = 273796,
									usagePct = 15.2,
								},
								{
									itemID = 250144,
									usagePct = 9.6,
								},
								{
									itemID = 250214,
									usagePct = 7.4,
								},
								{
									itemID = 268292,
									usagePct = 4.1,
								},
								{
									itemID = 270167,
									usagePct = 3.7,
								},
							},
							WAIST = {
								{
									itemID = 239664,
									usagePct = 42.8,
								},
								{
									itemID = 251185,
									usagePct = 12.9,
								},
								{
									itemID = 193691,
									usagePct = 10.8,
								},
								{
									itemID = 239649,
									usagePct = 8.5,
								},
								{
									itemID = 251222,
									usagePct = 8.5,
								},
								{
									itemID = 250048,
									usagePct = 5.2,
								},
								{
									itemID = 249319,
									usagePct = 2.0,
								},
								{
									itemID = 159255,
									usagePct = 1.8,
								},
							},
							WRIST = {
								{
									itemID = 239648,
									usagePct = 45.2,
								},
								{
									itemID = 249315,
									usagePct = 10.7,
								},
								{
									itemID = 251127,
									usagePct = 10.6,
								},
								{
									itemID = 251154,
									usagePct = 6.3,
								},
								{
									itemID = 239660,
									usagePct = 5.5,
								},
								{
									itemID = 277788,
									usagePct = 5.0,
								},
								{
									itemID = 250047,
									usagePct = 4.9,
								},
								{
									itemID = 159263,
									usagePct = 3.2,
								},
							},
						},
						gems = {
							{
								itemID = 240908,
								usagePct = 19.6,
							},
							{
								itemID = 240983,
								usagePct = 18.4,
							},
							{
								itemID = 240892,
								usagePct = 15.2,
							},
							{
								itemID = 240906,
								usagePct = 14.2,
							},
							{
								itemID = 240898,
								usagePct = 11.8,
							},
							{
								itemID = 240900,
								usagePct = 9.2,
							},
							{
								itemID = 240890,
								usagePct = 6.6,
							},
							{
								itemID = 240894,
								usagePct = 1.5,
							},
							{
								itemID = 240910,
								usagePct = 0.5,
							},
						},
						performance = {
							difficulty = "Mitica+",
							median = 179924.6,
							metric = "dps",
							outOf = 40,
							rank = 12,
							sample = 300,
							top = 271518.9,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/shadow-priest",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/priest/shadow/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 26.8,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 13.7,
								stat = "MASTERY",
								weight = 0.894,
							},
							{
								share = 17.4,
								stat = "CRIT",
								weight = 0.577,
							},
							{
								share = 0.7,
								stat = "VERSATILITY",
								weight = 0.056,
							},
						},
						talentBuilds = {
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjZGAAAAAAAAAAAghZxMGbzMmZWmZYmx2MGzMzYDZGLmpBYGgZ2MDzmBgMGLAYGgxMzMmtxMbLDwMYA",
								label = "Archon #1",
								metrics = {
									["Avg dps"] = "179K",
									["Avg key"] = "+11.7",
									["Max dps"] = "220K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 7.4,
							},
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDAAAAAAAAAAAAmZxMmZbmxMzyMGzw2MzYmZGbIzYxMNAzAMzmZY2MAkxYBAzMgxMzMmNmZbZAmBDA",
								label = "Archon #2",
								metrics = {
									["Avg dps"] = "179K",
									["Avg key"] = "+11.7",
									["Max dps"] = "230K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 6.2,
							},
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDAAAAAAAAAAAAmZxMmZbmxMzyMGD2mZGzMzYDZGLbz0AMDwMbmhZzAQGjFAMzAGzMzY2YmtlBYGMA",
								label = "Archon #3",
								metrics = {
									["Avg dps"] = "189K",
									["Avg key"] = "+11.7",
									["Max dps"] = "224K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 5.2,
							},
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDzAAAAAAAAAAAAwMLmxMbzMmZWmxYG2mZGzMzYDZGLmpBYGgZ2MDzmBgMGLAYGgxMzMmNmZbZAmBDA",
								label = "Archon #4",
								metrics = {
									["Avg dps"] = "196K",
									["Avg key"] = "+11.8",
									["Max dps"] = "256K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 2.6,
							},
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDAAAAAAAAAAAAmZxMmZbmxMzyMGjx2MzYmZGbIzYxMNAzAMzmZY2MAkxYBAzMgxMzMmNmZbZAmBDA",
								label = "Archon #5",
								metrics = {
									["Avg dps"] = "186K",
									["Avg key"] = "+11.8",
									["Max dps"] = "230K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 2.1,
							},
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjZGAAAAAAAAAAAghZxMGbzMmZWmZYmx2MGzMzYDZG2mpBYGgZ2MDzmBgMGLAYGgxMzMmtxMbLDwMYA",
								label = "Archon #6",
								metrics = {
									["Avg dps"] = "198K",
									["Avg key"] = "+12.0",
									["Max dps"] = "223K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 1.8,
							},
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMjZGAAAAAAAAAAAghZxMGLzMmZWmZYmx2MGzMzYDZGLmpBYGgZ2MDzmBgMGLAYGgxMzMmtxMbLDwMYA",
								label = "Archon #7",
								metrics = {
									["Avg dps"] = "163K",
									["Avg key"] = "+11.5",
									["Max dps"] = "180K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/shadow-priest",
								usagePct = 1.6,
							},
						},
					},
					name = "Archon",
					raid = {
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
								itemID = 242273,
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
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 100.0,
							},
							{
								itemID = 243981,
								slot = "HEAD",
								usagePct = 50.0,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 50.0,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 50.0,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 50.0,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 100.0,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 100.0,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 100.0,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 100.0,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 66.7,
								},
							},
							CHEST = {
								{
									itemID = 271558,
									usagePct = 100.0,
								},
							},
							FINGER1 = {
								{
									itemID = 251136,
									usagePct = 100.0,
								},
								{
									itemID = 162544,
									usagePct = 66.7,
								},
							},
							HEAD = {
								{
									itemID = 271555,
									usagePct = 100.0,
								},
							},
							LEGS = {
								{
									itemID = 271554,
									usagePct = 100.0,
								},
							},
							MAINHAND = {
								{
									itemID = 273778,
									usagePct = 66.7,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 100.0,
								},
							},
							SHOULDER = {
								{
									itemID = 271553,
									usagePct = 66.7,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 66.7,
								},
								{
									itemID = 273796,
									usagePct = 66.7,
								},
							},
							WAIST = {
								{
									itemID = 193691,
									usagePct = 66.7,
								},
							},
						},
						gems = {
							{
								itemID = 240892,
								usagePct = 38.5,
							},
							{
								itemID = 240898,
								usagePct = 23.1,
							},
							{
								itemID = 240983,
								usagePct = 23.1,
							},
							{
								itemID = 240908,
								usagePct = 15.4,
							},
						},
						performance = {
							difficulty = "Heroico",
							median = 158115.9,
							metric = "dps",
							outOf = 40,
							rank = 6,
							sample = 300,
							top = 186238.5,
							zone = "The Venomous Abyss",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/raid/spec/shadow-priest",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/priest/shadow/enchants-gems-pve-dps",
							},
						},
						talentBuilds = {
							{
								importString = "CIQAAAAAAAAAAAAAAAAAAAAAAMMDDAAAAAAAAAAAAmZxMmZbmxMz2MGzw2MzYmZGbIzYxMNAzAMzmZY2MAkxYBAzMgxMzMmNmZbZAmBD",
								label = "Archon #1",
								metrics = {
									["Avg dps"] = "156K",
									["Max dps"] = "171K",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/raid/spec/shadow-priest",
								usagePct = 100.0,
							},
						},
					},
				},
			},
			name = "Shadow",
		},
	},
})

-- GENERATED FILE -- do not edit by hand.
-- Regenerar con: python -m scraper build
local ADDON_NAME, ns = ...

ns.RegisterClassData("EVOKER", {
	specs = {
		[1467] = {
			heroes = {
				[36] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241326,
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
								usagePct = 91.2,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 3.8,
							},
							{
								itemID = 243971,
								slot = "MAINHAND",
								usagePct = 3.6,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 79.9,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 12.6,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 3.7,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 86.2,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 10.0,
							},
							{
								itemID = 243989,
								slot = "SHOULDER",
								usagePct = 1.6,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 98.5,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 1.3,
							},
							{
								itemID = 244002,
								slot = "CHEST",
								usagePct = 0.1,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 95.5,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 2.5,
							},
							{
								itemID = 240094,
								slot = "LEGS",
								usagePct = 0.8,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 82.1,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 12.3,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 5.6,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 56.7,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 26.6,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 8.3,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 40.4,
								},
								{
									itemID = 251190,
									usagePct = 12.1,
								},
								{
									itemID = 251132,
									usagePct = 10.4,
								},
								{
									itemID = 193763,
									usagePct = 8.6,
								},
								{
									itemID = 272227,
									usagePct = 4.6,
								},
								{
									itemID = 159288,
									usagePct = 4.4,
								},
								{
									itemID = 272225,
									usagePct = 3.4,
								},
								{
									itemID = 272230,
									usagePct = 2.6,
								},
							},
							CHEST = {
								{
									itemID = 250000,
									usagePct = 64.6,
								},
								{
									itemID = 271504,
									usagePct = 16.8,
								},
								{
									itemID = 239046,
									usagePct = 4.6,
								},
								{
									itemID = 251233,
									usagePct = 4.0,
								},
								{
									itemID = 273789,
									usagePct = 2.9,
								},
								{
									itemID = 239034,
									usagePct = 2.4,
								},
								{
									itemID = 277779,
									usagePct = 1.6,
								},
								{
									itemID = 272247,
									usagePct = 1.6,
								},
							},
							FEET = {
								{
									itemID = 249999,
									usagePct = 52.8,
								},
								{
									itemID = 251125,
									usagePct = 9.1,
								},
								{
									itemID = 159388,
									usagePct = 6.9,
								},
								{
									itemID = 251145,
									usagePct = 5.9,
								},
								{
									itemID = 272248,
									usagePct = 5.5,
								},
								{
									itemID = 268287,
									usagePct = 5.4,
								},
								{
									itemID = 159371,
									usagePct = 4.0,
								},
								{
									itemID = 268258,
									usagePct = 3.0,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 53.2,
								},
								{
									itemID = 49812,
									usagePct = 19.9,
								},
								{
									itemID = 251136,
									usagePct = 16.0,
								},
								{
									itemID = 251217,
									usagePct = 14.9,
								},
								{
									itemID = 273792,
									usagePct = 13.0,
								},
								{
									itemID = 158366,
									usagePct = 11.5,
								},
								{
									itemID = 252258,
									usagePct = 11.4,
								},
								{
									itemID = 249920,
									usagePct = 9.8,
								},
							},
							HANDS = {
								{
									itemID = 249998,
									usagePct = 55.9,
								},
								{
									itemID = 271502,
									usagePct = 15.8,
								},
								{
									itemID = 193752,
									usagePct = 11.5,
								},
								{
									itemID = 251152,
									usagePct = 5.5,
								},
								{
									itemID = 160213,
									usagePct = 3.3,
								},
								{
									itemID = 251165,
									usagePct = 2.4,
								},
								{
									itemID = 272249,
									usagePct = 1.5,
								},
								{
									itemID = 277777,
									usagePct = 1.1,
								},
							},
							HEAD = {
								{
									itemID = 249997,
									usagePct = 37.0,
								},
								{
									itemID = 271501,
									usagePct = 15.3,
								},
								{
									itemID = 249914,
									usagePct = 10.0,
								},
								{
									itemID = 251220,
									usagePct = 6.5,
								},
								{
									itemID = 249317,
									usagePct = 5.4,
								},
								{
									itemID = 239035,
									usagePct = 4.9,
								},
								{
									itemID = 49824,
									usagePct = 4.8,
								},
								{
									itemID = 193765,
									usagePct = 4.8,
								},
							},
							LEGS = {
								{
									itemID = 249996,
									usagePct = 74.1,
								},
								{
									itemID = 271500,
									usagePct = 13.6,
								},
								{
									itemID = 159375,
									usagePct = 3.9,
								},
								{
									itemID = 268288,
									usagePct = 3.5,
								},
								{
									itemID = 193759,
									usagePct = 1.4,
								},
								{
									itemID = 251141,
									usagePct = 1.4,
								},
								{
									itemID = 277775,
									usagePct = 0.8,
								},
								{
									itemID = 272251,
									usagePct = 0.8,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 11.0,
								},
								{
									itemID = 251178,
									usagePct = 9.0,
								},
								{
									itemID = 273778,
									usagePct = 8.4,
								},
								{
									itemID = 251123,
									usagePct = 8.3,
								},
								{
									itemID = 193761,
									usagePct = 8.1,
								},
								{
									itemID = 273780,
									usagePct = 7.8,
								},
								{
									itemID = 160216,
									usagePct = 4.9,
								},
								{
									itemID = 251225,
									usagePct = 3.9,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 19.8,
								},
								{
									itemID = 249337,
									usagePct = 18.0,
								},
								{
									itemID = 273781,
									usagePct = 12.9,
								},
								{
									itemID = 251234,
									usagePct = 8.5,
								},
								{
									itemID = 251173,
									usagePct = 8.1,
								},
								{
									itemID = 50228,
									usagePct = 7.8,
								},
								{
									itemID = 251142,
									usagePct = 6.8,
								},
								{
									itemID = 265739,
									usagePct = 5.5,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 38.8,
								},
								{
									itemID = 249276,
									usagePct = 26.0,
								},
								{
									itemID = 271681,
									usagePct = 6.8,
								},
								{
									itemID = 251191,
									usagePct = 5.4,
								},
								{
									itemID = 273779,
									usagePct = 4.7,
								},
								{
									itemID = 249922,
									usagePct = 4.1,
								},
								{
									itemID = 193766,
									usagePct = 2.9,
								},
								{
									itemID = 193709,
									usagePct = 2.7,
								},
							},
							SHOULDER = {
								{
									itemID = 249995,
									usagePct = 65.1,
								},
								{
									itemID = 271499,
									usagePct = 14.4,
								},
								{
									itemID = 251131,
									usagePct = 5.8,
								},
								{
									itemID = 251184,
									usagePct = 5.0,
								},
								{
									itemID = 239049,
									usagePct = 3.4,
								},
								{
									itemID = 277774,
									usagePct = 2.5,
								},
								{
									itemID = 272252,
									usagePct = 2.5,
								},
								{
									itemID = 50233,
									usagePct = 0.8,
								},
							},
							TRINKET1 = {
								{
									itemID = 249346,
									usagePct = 44.6,
								},
								{
									itemID = 249343,
									usagePct = 36.9,
								},
								{
									itemID = 250256,
									usagePct = 14.6,
								},
								{
									itemID = 273796,
									usagePct = 11.6,
								},
								{
									itemID = 249810,
									usagePct = 11.5,
								},
								{
									itemID = 250215,
									usagePct = 8.5,
								},
								{
									itemID = 250223,
									usagePct = 7.5,
								},
								{
									itemID = 264507,
									usagePct = 6.5,
								},
							},
							WAIST = {
								{
									itemID = 49810,
									usagePct = 27.2,
								},
								{
									itemID = 251228,
									usagePct = 11.3,
								},
								{
									itemID = 277773,
									usagePct = 9.8,
								},
								{
									itemID = 244581,
									usagePct = 8.5,
								},
								{
									itemID = 260375,
									usagePct = 7.9,
								},
								{
									itemID = 251155,
									usagePct = 6.6,
								},
								{
									itemID = 159369,
									usagePct = 5.4,
								},
								{
									itemID = 272253,
									usagePct = 4.9,
								},
							},
							WRIST = {
								{
									itemID = 244584,
									usagePct = 73.5,
								},
								{
									itemID = 251200,
									usagePct = 5.9,
								},
								{
									itemID = 159380,
									usagePct = 5.9,
								},
								{
									itemID = 273775,
									usagePct = 4.6,
								},
								{
									itemID = 277772,
									usagePct = 3.0,
								},
								{
									itemID = 272254,
									usagePct = 2.0,
								},
								{
									itemID = 249304,
									usagePct = 1.5,
								},
								{
									itemID = 251079,
									usagePct = 1.1,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 50.2,
							},
							{
								itemID = 240983,
								usagePct = 17.2,
							},
							{
								itemID = 240890,
								usagePct = 9.3,
							},
							{
								itemID = 240908,
								usagePct = 8.4,
							},
							{
								itemID = 240898,
								usagePct = 8.1,
							},
							{
								itemID = 240900,
								usagePct = 1.6,
							},
							{
								itemID = 240967,
								usagePct = 1.1,
							},
							{
								itemID = 240892,
								usagePct = 0.9,
							},
							{
								itemID = 240910,
								usagePct = 0.6,
							},
						},
						performance = {
							difficulty = "Mythic+",
							median = 164027.3,
							metric = "dps",
							outOf = 40,
							rank = 21,
							sample = 300,
							top = 298248.2,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/devastation-evoker",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/evoker/devastation/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 26.5,
								stat = "CRIT",
								weight = 1.0,
							},
							{
								share = 19.9,
								stat = "HASTE",
								weight = 0.888,
							},
							{
								share = 30.8,
								stat = "MASTERY",
								weight = 0.541,
							},
							{
								share = 1.1,
								stat = "VERSATILITY",
								weight = 0.088,
							},
						},
						talentBuilds = {
							{
								importString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZAPgZGmBGGjZaMzMNjx2MmZmZmZmZGwMzMGzMLzMDMwYwGsMGN2GAzAwGmBzMYYA",
								label = "Scalecommander #1",
								metrics = {
									["Avg dps"] = "179K",
									["Avg key"] = "+11.6",
									["Max dps"] = "248K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/devastation-evoker",
								usagePct = 13.1,
							},
							{
								importString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMDgZGmBGGjZaMzMNjx2MmZmZmZmZGwMzMGzMLzMDMwYwGsMGN2GAzAwGmBzMYYA",
								label = "Scalecommander #2",
								metrics = {
									["Avg dps"] = "198K",
									["Avg key"] = "+11.4",
									["Max dps"] = "263K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/devastation-evoker",
								usagePct = 4.9,
							},
							{
								importString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMDgZGmBGYMTjZmpZM2mxMzMzMzMzAmZmZGzMLzMDMwYwGsMGN2GAzAwGmBzMYYA",
								label = "Scalecommander #3",
								metrics = {
									["Avg dps"] = "195K",
									["Avg key"] = "+11.4",
									["Max dps"] = "220K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/devastation-evoker",
								usagePct = 3.4,
							},
							{
								importString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjZAPgZGmBGGjZaMzMNjx2MmZmZmZmZGwMzMGzMbzMDMwYwGsMGN2GAzAwGmBzMYYA",
								label = "Scalecommander #4",
								metrics = {
									["Avg dps"] = "179K",
									["Avg key"] = "+11.8",
									["Max dps"] = "203K",
									["Max key"] = "+14",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/devastation-evoker",
								usagePct = 3.0,
							},
							{
								importString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMDgZGMwwYMTjZmpZM2mxMzMzMzMzAmZmxYmZZmZgBGD2glxox2AYGA2wMYmBzYA",
								label = "Scalecommander #5",
								metrics = {
									["Avg dps"] = "191K",
									["Avg key"] = "+11.5",
									["Max dps"] = "211K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/devastation-evoker",
								usagePct = 2.9,
							},
							{
								importString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMDgZGmBmHAjZaMzMNDz2MmZmZmZmZGwMzMzYmZZmZgBGD2glxox2AYGA2wAzMYYA",
								label = "Scalecommander #6",
								metrics = {
									["Avg dps"] = "170K",
									["Avg key"] = "+12.0",
									["Max dps"] = "208K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/devastation-evoker",
								usagePct = 1.9,
							},
							{
								importString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMDgZGMwwYMTjZmpZM2mxMzMzMzMzAmZmxYmZbmZgBGD2glxox2AYGA2wMYmBzYA",
								label = "Scalecommander #7",
								metrics = {
									["Avg dps"] = "177K",
									["Avg key"] = "+11.3",
									["Max dps"] = "186K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/devastation-evoker",
								usagePct = 1.1,
							},
							{
								importString = "CsbBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAzMDgZGmBGzYMTjZmpZM2mxMzMzMzMzAMzMGzMLzMDMwYwGsMGN2GAzAwGmBzMYYA",
								label = "Scalecommander #8",
								metrics = {
									["Avg dps"] = "189K",
									["Avg key"] = "+11.4",
									["Max dps"] = "244K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/devastation-evoker",
								usagePct = 1.1,
							},
						},
					},
					name = "Scalecommander",
				},
			},
			name = "Devastation",
		},
		[1468] = {
			heroes = {
				[37] = {
					mplus = {
						consumables = {
							{
								category = "FLASK",
								itemID = 241322,
								primary = true,
							},
							{
								category = "POTION",
								itemID = 241300,
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
								usagePct = 78.8,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 17.3,
							},
							{
								itemID = 273072,
								slot = "MAINHAND",
								usagePct = 1.3,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 63.6,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 27.2,
							},
							{
								itemID = 243949,
								slot = "HEAD",
								usagePct = 5.3,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 64.8,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 31.0,
							},
							{
								itemID = 244019,
								slot = "SHOULDER",
								usagePct = 1.6,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 75.2,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 24.4,
							},
							{
								itemID = 244002,
								slot = "CHEST",
								usagePct = 0.3,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 56.2,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 43.4,
							},
							{
								itemID = 240157,
								slot = "LEGS",
								usagePct = 0.3,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 63.2,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 35.7,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 0.9,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 47.7,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 20.4,
							},
							{
								itemID = 244015,
								slot = "FINGER1",
								usagePct = 14.3,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 27.3,
								},
								{
									itemID = 251132,
									usagePct = 13.7,
								},
								{
									itemID = 249992,
									usagePct = 10.7,
								},
								{
									itemID = 251190,
									usagePct = 9.6,
								},
								{
									itemID = 193763,
									usagePct = 7.0,
								},
								{
									itemID = 159288,
									usagePct = 5.7,
								},
								{
									itemID = 239674,
									usagePct = 2.7,
								},
								{
									itemID = 260312,
									usagePct = 2.3,
								},
							},
							CHEST = {
								{
									itemID = 250000,
									usagePct = 62.9,
								},
								{
									itemID = 271504,
									usagePct = 14.0,
								},
								{
									itemID = 273789,
									usagePct = 6.4,
								},
								{
									itemID = 251233,
									usagePct = 4.0,
								},
								{
									itemID = 272247,
									usagePct = 3.6,
								},
								{
									itemID = 239046,
									usagePct = 3.3,
								},
								{
									itemID = 239034,
									usagePct = 2.3,
								},
								{
									itemID = 277779,
									usagePct = 1.3,
								},
							},
							FEET = {
								{
									itemID = 268287,
									usagePct = 27.0,
								},
								{
									itemID = 249999,
									usagePct = 22.4,
								},
								{
									itemID = 159388,
									usagePct = 9.0,
								},
								{
									itemID = 251145,
									usagePct = 7.7,
								},
								{
									itemID = 159371,
									usagePct = 6.9,
								},
								{
									itemID = 244610,
									usagePct = 4.6,
								},
								{
									itemID = 251125,
									usagePct = 4.0,
								},
								{
									itemID = 272248,
									usagePct = 3.7,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 50.4,
								},
								{
									itemID = 251136,
									usagePct = 17.7,
								},
								{
									itemID = 273792,
									usagePct = 13.0,
								},
								{
									itemID = 251217,
									usagePct = 12.1,
								},
								{
									itemID = 251093,
									usagePct = 9.0,
								},
								{
									itemID = 158366,
									usagePct = 8.7,
								},
								{
									itemID = 49812,
									usagePct = 7.9,
								},
								{
									itemID = 252258,
									usagePct = 7.9,
								},
							},
							HANDS = {
								{
									itemID = 249998,
									usagePct = 49.7,
								},
								{
									itemID = 271502,
									usagePct = 17.7,
								},
								{
									itemID = 193752,
									usagePct = 10.9,
								},
								{
									itemID = 160213,
									usagePct = 4.0,
								},
								{
									itemID = 251165,
									usagePct = 3.9,
								},
								{
									itemID = 244583,
									usagePct = 3.7,
								},
								{
									itemID = 249325,
									usagePct = 2.9,
								},
								{
									itemID = 272249,
									usagePct = 2.1,
								},
							},
							HEAD = {
								{
									itemID = 249997,
									usagePct = 50.1,
								},
								{
									itemID = 271501,
									usagePct = 16.3,
								},
								{
									itemID = 251220,
									usagePct = 7.4,
								},
								{
									itemID = 239035,
									usagePct = 6.9,
								},
								{
									itemID = 49824,
									usagePct = 3.6,
								},
								{
									itemID = 193765,
									usagePct = 3.4,
								},
								{
									itemID = 277776,
									usagePct = 3.4,
								},
								{
									itemID = 249914,
									usagePct = 2.9,
								},
							},
							LEGS = {
								{
									itemID = 249996,
									usagePct = 70.6,
								},
								{
									itemID = 271500,
									usagePct = 11.1,
								},
								{
									itemID = 268288,
									usagePct = 6.0,
								},
								{
									itemID = 159375,
									usagePct = 3.4,
								},
								{
									itemID = 251141,
									usagePct = 3.1,
								},
								{
									itemID = 277775,
									usagePct = 1.3,
								},
								{
									itemID = 272251,
									usagePct = 1.1,
								},
								{
									itemID = 193759,
									usagePct = 1.1,
								},
							},
							MAINHAND = {
								{
									itemID = 245770,
									usagePct = 11.0,
								},
								{
									itemID = 273778,
									usagePct = 7.6,
								},
								{
									itemID = 193761,
									usagePct = 6.0,
								},
								{
									itemID = 251123,
									usagePct = 5.7,
								},
								{
									itemID = 251225,
									usagePct = 5.1,
								},
								{
									itemID = 251201,
									usagePct = 4.9,
								},
								{
									itemID = 273780,
									usagePct = 4.9,
								},
								{
									itemID = 193707,
									usagePct = 4.4,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 42.3,
								},
								{
									itemID = 273781,
									usagePct = 11.4,
								},
								{
									itemID = 251234,
									usagePct = 7.9,
								},
								{
									itemID = 251173,
									usagePct = 7.6,
								},
								{
									itemID = 251142,
									usagePct = 7.4,
								},
								{
									itemID = 50228,
									usagePct = 6.1,
								},
								{
									itemID = 249337,
									usagePct = 3.6,
								},
								{
									itemID = 240950,
									usagePct = 2.4,
								},
							},
							OFFHAND = {
								{
									itemID = 245769,
									usagePct = 37.5,
								},
								{
									itemID = 273779,
									usagePct = 11.3,
								},
								{
									itemID = 249276,
									usagePct = 10.7,
								},
								{
									itemID = 249922,
									usagePct = 6.7,
								},
								{
									itemID = 159667,
									usagePct = 6.7,
								},
								{
									itemID = 193766,
									usagePct = 5.8,
								},
								{
									itemID = 271681,
									usagePct = 5.5,
								},
								{
									itemID = 251191,
									usagePct = 5.2,
								},
							},
							SHOULDER = {
								{
									itemID = 249995,
									usagePct = 70.0,
								},
								{
									itemID = 271499,
									usagePct = 13.6,
								},
								{
									itemID = 251184,
									usagePct = 4.1,
								},
								{
									itemID = 239049,
									usagePct = 3.4,
								},
								{
									itemID = 251131,
									usagePct = 2.6,
								},
								{
									itemID = 272252,
									usagePct = 1.6,
								},
								{
									itemID = 277774,
									usagePct = 1.6,
								},
								{
									itemID = 268231,
									usagePct = 1.3,
								},
							},
							TRINKET1 = {
								{
									itemID = 249343,
									usagePct = 39.3,
								},
								{
									itemID = 268292,
									usagePct = 32.0,
								},
								{
									itemID = 264507,
									usagePct = 19.4,
								},
								{
									itemID = 249809,
									usagePct = 15.4,
								},
								{
									itemID = 250256,
									usagePct = 9.7,
								},
								{
									itemID = 249808,
									usagePct = 8.1,
								},
								{
									itemID = 273796,
									usagePct = 7.4,
								},
								{
									itemID = 270162,
									usagePct = 6.4,
								},
							},
							WAIST = {
								{
									itemID = 249994,
									usagePct = 13.9,
								},
								{
									itemID = 244581,
									usagePct = 12.6,
								},
								{
									itemID = 251228,
									usagePct = 12.1,
								},
								{
									itemID = 251155,
									usagePct = 9.9,
								},
								{
									itemID = 159369,
									usagePct = 9.0,
								},
								{
									itemID = 244611,
									usagePct = 7.6,
								},
								{
									itemID = 249371,
									usagePct = 7.1,
								},
								{
									itemID = 49810,
									usagePct = 5.4,
								},
							},
							WRIST = {
								{
									itemID = 244584,
									usagePct = 35.9,
								},
								{
									itemID = 159380,
									usagePct = 10.0,
								},
								{
									itemID = 273775,
									usagePct = 8.6,
								},
								{
									itemID = 251200,
									usagePct = 8.0,
								},
								{
									itemID = 249304,
									usagePct = 7.4,
								},
								{
									itemID = 251079,
									usagePct = 6.9,
								},
								{
									itemID = 277772,
									usagePct = 5.9,
								},
								{
									itemID = 272254,
									usagePct = 4.1,
								},
							},
						},
						gems = {
							{
								itemID = 240898,
								usagePct = 29.0,
							},
							{
								itemID = 240983,
								usagePct = 18.8,
							},
							{
								itemID = 240906,
								usagePct = 15.0,
							},
							{
								itemID = 240900,
								usagePct = 11.2,
							},
							{
								itemID = 240890,
								usagePct = 7.7,
							},
							{
								itemID = 240908,
								usagePct = 7.3,
							},
							{
								itemID = 240892,
								usagePct = 3.2,
							},
							{
								itemID = 240894,
								usagePct = 1.1,
							},
							{
								itemID = 240969,
								usagePct = 0.9,
							},
						},
						performance = {
							difficulty = "Mythic+",
							median = 39082.9,
							metric = "dps",
							outOf = 40,
							rank = 35,
							sample = 300,
							top = 100049.5,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/preservation-evoker",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/evoker/preservation/enchants-gems-pve-healer",
							},
						},
						statPriority = {
							{
								share = 52.6,
								stat = "MASTERY",
								weight = 1.0,
							},
							{
								share = 21.0,
								stat = "CRIT",
								weight = 0.802,
							},
							{
								share = 16.3,
								stat = "HASTE",
								weight = 0.781,
							},
							{
								share = 2.3,
								stat = "VERSATILITY",
								weight = 0.158,
							},
						},
						talentBuilds = {
							{
								importString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WmZGDjxsZGw2wAAAzYmZmZMMTMmBAAAMzMTGzMzMGzAAjZgFwGYGmAbM2MMDwMDD",
								label = "Flameshaper #1",
								metrics = {
									["Avg key"] = "+11.2",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/preservation-evoker",
								usagePct = 21.1,
							},
							{
								importString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WGzYYmxsZGw2wAAAzYGzMjhZiZmBAAAMzMTGzMjxMzAAjZgFwCYGmAbM2MMAmZGD",
								label = "Flameshaper #2",
								metrics = {
									["Avg key"] = "+11.6",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/preservation-evoker",
								usagePct = 2.6,
							},
							{
								importString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WmZGDjxsZGw2wAAAzYGzMjhZixMAAAgZmZaGzMzMGzAAjZgFwGYGmAbM2MMDwMDD",
								label = "Flameshaper #3",
								metrics = {
									["Avg key"] = "+11.3",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/preservation-evoker",
								usagePct = 2.1,
							},
							{
								importString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WmZGDjxsZGw2wAAAzYGzMjhZixMAAAgZmZyYmZmZZMDAMmBWAbgZYCsxYzwMAzMMA",
								label = "Flameshaper #4",
								metrics = {
									["Avg key"] = "+11.1",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/preservation-evoker",
								usagePct = 2.0,
							},
							{
								importString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WGYYmZmNzA2GAAAzYGzghZaMzMAAAgZmZaGmZmZbMDAMmBWAbgZYCsZGbGmBYmhB",
								label = "Flameshaper #5",
								metrics = {
									["Avg key"] = "+11.5",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/preservation-evoker",
								usagePct = 1.6,
							},
							{
								importString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WmZGDjxsZGw2wAAAzYmZGjhZixMAAAgZmZyYmZmZZMDAMmBWAbgZYCsxYzwMAzMMA",
								label = "Flameshaper #6",
								metrics = {
									["Avg key"] = "+11.1",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/preservation-evoker",
								usagePct = 1.6,
							},
							{
								importString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WmZGDjxsZGw2wAAAzYGzMjhZiZmBAAAMzMTGzMjxMzAAjZgFwGYGmAbM2MMAmZGD",
								label = "Flameshaper #7",
								metrics = {
									["Avg key"] = "+11.1",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/preservation-evoker",
								usagePct = 1.4,
							},
							{
								importString = "CwbBAAAAAAAAAAAAAAAAAAAAAAAAAAAmZmZ2WmZGDjxsZGw2wAAAzYGzMjhZixMAAAgZmZaGzMzDMLjZAgxMwCYDMDTgNGbGmBYmhB",
								label = "Flameshaper #8",
								metrics = {
									["Avg key"] = "+11.4",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/preservation-evoker",
								usagePct = 1.1,
							},
						},
					},
					name = "Flameshaper",
				},
			},
			name = "Preservation",
		},
		[1473] = {
			heroes = {
				[36] = {
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
								itemID = 266985,
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
								usagePct = 71.9,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 24.1,
							},
							{
								itemID = 244030,
								slot = "MAINHAND",
								usagePct = 1.8,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 81.4,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 10.0,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 3.4,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 82.9,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 9.4,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 2.8,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 95.9,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 3.0,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.8,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 91.8,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 7.4,
							},
							{
								itemID = 240094,
								slot = "LEGS",
								usagePct = 0.5,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 79.6,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 11.8,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 8.0,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 34.2,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 33.2,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 21.5,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 46.7,
								},
								{
									itemID = 251190,
									usagePct = 10.7,
								},
								{
									itemID = 193763,
									usagePct = 8.6,
								},
								{
									itemID = 272225,
									usagePct = 4.1,
								},
								{
									itemID = 251132,
									usagePct = 4.1,
								},
								{
									itemID = 159288,
									usagePct = 3.7,
								},
								{
									itemID = 272226,
									usagePct = 3.0,
								},
								{
									itemID = 260312,
									usagePct = 2.5,
								},
							},
							CHEST = {
								{
									itemID = 250000,
									usagePct = 75.1,
								},
								{
									itemID = 271504,
									usagePct = 12.0,
								},
								{
									itemID = 251233,
									usagePct = 2.4,
								},
								{
									itemID = 239046,
									usagePct = 2.1,
								},
								{
									itemID = 273789,
									usagePct = 1.8,
								},
								{
									itemID = 239034,
									usagePct = 1.6,
								},
								{
									itemID = 277779,
									usagePct = 1.6,
								},
								{
									itemID = 272247,
									usagePct = 1.2,
								},
							},
							FEET = {
								{
									itemID = 249999,
									usagePct = 55.5,
								},
								{
									itemID = 159388,
									usagePct = 9.5,
								},
								{
									itemID = 251125,
									usagePct = 6.5,
								},
								{
									itemID = 268287,
									usagePct = 5.5,
								},
								{
									itemID = 272248,
									usagePct = 4.0,
								},
								{
									itemID = 251145,
									usagePct = 3.7,
								},
								{
									itemID = 268233,
									usagePct = 3.1,
								},
								{
									itemID = 277778,
									usagePct = 2.2,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 53.8,
								},
								{
									itemID = 49812,
									usagePct = 23.5,
								},
								{
									itemID = 251136,
									usagePct = 19.1,
								},
								{
									itemID = 158366,
									usagePct = 12.7,
								},
								{
									itemID = 251217,
									usagePct = 12.1,
								},
								{
									itemID = 249920,
									usagePct = 8.0,
								},
								{
									itemID = 252258,
									usagePct = 7.5,
								},
								{
									itemID = 251093,
									usagePct = 5.6,
								},
							},
							HANDS = {
								{
									itemID = 249998,
									usagePct = 62.0,
								},
								{
									itemID = 271502,
									usagePct = 13.8,
								},
								{
									itemID = 193752,
									usagePct = 11.4,
								},
								{
									itemID = 160213,
									usagePct = 2.4,
								},
								{
									itemID = 277777,
									usagePct = 1.9,
								},
								{
									itemID = 251152,
									usagePct = 1.9,
								},
								{
									itemID = 249325,
									usagePct = 1.2,
								},
								{
									itemID = 244583,
									usagePct = 1.2,
								},
							},
							HEAD = {
								{
									itemID = 249997,
									usagePct = 31.5,
								},
								{
									itemID = 271501,
									usagePct = 13.2,
								},
								{
									itemID = 249317,
									usagePct = 10.4,
								},
								{
									itemID = 249914,
									usagePct = 8.1,
								},
								{
									itemID = 239035,
									usagePct = 8.0,
								},
								{
									itemID = 251220,
									usagePct = 8.0,
								},
								{
									itemID = 49824,
									usagePct = 8.0,
								},
								{
									itemID = 193765,
									usagePct = 4.9,
								},
							},
							LEGS = {
								{
									itemID = 249996,
									usagePct = 79.9,
								},
								{
									itemID = 271500,
									usagePct = 9.0,
								},
								{
									itemID = 268288,
									usagePct = 2.5,
								},
								{
									itemID = 159375,
									usagePct = 1.9,
								},
								{
									itemID = 193759,
									usagePct = 1.8,
								},
								{
									itemID = 277775,
									usagePct = 1.6,
								},
								{
									itemID = 251141,
									usagePct = 1.6,
								},
								{
									itemID = 258932,
									usagePct = 0.6,
								},
							},
							MAINHAND = {
								{
									itemID = 251178,
									usagePct = 17.6,
								},
								{
									itemID = 245770,
									usagePct = 8.3,
								},
								{
									itemID = 273778,
									usagePct = 8.0,
								},
								{
									itemID = 251123,
									usagePct = 7.7,
								},
								{
									itemID = 193761,
									usagePct = 5.9,
								},
								{
									itemID = 258050,
									usagePct = 5.2,
								},
								{
									itemID = 251111,
									usagePct = 4.3,
								},
								{
									itemID = 273780,
									usagePct = 3.8,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 26.5,
								},
								{
									itemID = 50228,
									usagePct = 16.4,
								},
								{
									itemID = 251234,
									usagePct = 12.0,
								},
								{
									itemID = 249337,
									usagePct = 10.8,
								},
								{
									itemID = 251142,
									usagePct = 7.7,
								},
								{
									itemID = 251173,
									usagePct = 5.8,
								},
								{
									itemID = 273781,
									usagePct = 5.5,
								},
								{
									itemID = 268251,
									usagePct = 3.0,
								},
							},
							OFFHAND = {
								{
									itemID = 249276,
									usagePct = 26.7,
								},
								{
									itemID = 245769,
									usagePct = 25.8,
								},
								{
									itemID = 193709,
									usagePct = 10.1,
								},
								{
									itemID = 249922,
									usagePct = 6.7,
								},
								{
									itemID = 271681,
									usagePct = 6.5,
								},
								{
									itemID = 273779,
									usagePct = 5.8,
								},
								{
									itemID = 251191,
									usagePct = 4.3,
								},
								{
									itemID = 193766,
									usagePct = 3.4,
								},
							},
							SHOULDER = {
								{
									itemID = 249995,
									usagePct = 74.7,
								},
								{
									itemID = 271499,
									usagePct = 10.8,
								},
								{
									itemID = 251184,
									usagePct = 2.8,
								},
								{
									itemID = 251131,
									usagePct = 2.5,
								},
								{
									itemID = 239049,
									usagePct = 2.5,
								},
								{
									itemID = 277774,
									usagePct = 2.4,
								},
								{
									itemID = 268231,
									usagePct = 1.3,
								},
								{
									itemID = 50233,
									usagePct = 1.2,
								},
							},
							TRINKET1 = {
								{
									itemID = 250256,
									usagePct = 28.7,
								},
								{
									itemID = 249810,
									usagePct = 24.7,
								},
								{
									itemID = 250223,
									usagePct = 23.8,
								},
								{
									itemID = 249346,
									usagePct = 13.2,
								},
								{
									itemID = 249343,
									usagePct = 12.1,
								},
								{
									itemID = 250224,
									usagePct = 11.2,
								},
								{
									itemID = 250215,
									usagePct = 9.0,
								},
								{
									itemID = 264507,
									usagePct = 7.2,
								},
							},
							WAIST = {
								{
									itemID = 49810,
									usagePct = 28.6,
								},
								{
									itemID = 244581,
									usagePct = 10.8,
								},
								{
									itemID = 251228,
									usagePct = 10.2,
								},
								{
									itemID = 249994,
									usagePct = 6.4,
								},
								{
									itemID = 251155,
									usagePct = 6.4,
								},
								{
									itemID = 260375,
									usagePct = 5.9,
								},
								{
									itemID = 277773,
									usagePct = 5.8,
								},
								{
									itemID = 272253,
									usagePct = 5.2,
								},
							},
							WRIST = {
								{
									itemID = 244584,
									usagePct = 65.1,
								},
								{
									itemID = 159380,
									usagePct = 6.1,
								},
								{
									itemID = 251200,
									usagePct = 6.1,
								},
								{
									itemID = 251079,
									usagePct = 4.3,
								},
								{
									itemID = 277772,
									usagePct = 3.6,
								},
								{
									itemID = 272254,
									usagePct = 3.3,
								},
								{
									itemID = 273775,
									usagePct = 2.7,
								},
								{
									itemID = 276642,
									usagePct = 1.8,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 38.6,
							},
							{
								itemID = 240898,
								usagePct = 22.6,
							},
							{
								itemID = 240983,
								usagePct = 17.5,
							},
							{
								itemID = 240890,
								usagePct = 8.6,
							},
							{
								itemID = 240900,
								usagePct = 3.7,
							},
							{
								itemID = 240908,
								usagePct = 3.2,
							},
							{
								itemID = 240892,
								usagePct = 1.0,
							},
							{
								itemID = 240904,
								usagePct = 0.9,
							},
							{
								itemID = 240897,
								usagePct = 0.8,
							},
						},
						performance = {
							difficulty = "Mythic+",
							median = 135773.1,
							metric = "dps",
							outOf = 40,
							rank = 27,
							sample = 300,
							top = 217718.4,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/augmentation-evoker",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/evoker/augmentation/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 21.5,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 23.9,
								stat = "CRIT",
								weight = 0.914,
							},
							{
								share = 5.1,
								stat = "MASTERY",
								weight = 0.556,
							},
							{
								share = 1.1,
								stat = "VERSATILITY",
								weight = 0.096,
							},
						},
						talentBuilds = {
							{
								importString = "CEcBAAAAAAAAAAAAAAAAAAAAAMMzMbjZGMDzMLzYmZMzGAAAAAAAAmhZGYM1YmZGAAAAMzMjxMzyYmBmZzYwCsMGGbDgZQshxMYmBwA",
								label = "Scalecommander #1",
								metrics = {
									["Avg dps"] = "144K",
									["Avg key"] = "+11.1",
									["Max dps"] = "193K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/augmentation-evoker",
								usagePct = 17.3,
							},
							{
								importString = "CEcBAAAAAAAAAAAAAAAAAAAAAMMzMbjZGMDzMLzYmZMzGAAAAAAAAmhZGYM1YmZGAAAAYmZmxMz2YmBmZzYwCsMGGLDgZQshxMYmBwA",
								label = "Scalecommander #2",
								metrics = {
									["Avg dps"] = "184K",
									["Avg key"] = "+11.0",
									["Max dps"] = "191K",
									["Max key"] = "+11",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/augmentation-evoker",
								usagePct = 1.8,
							},
							{
								importString = "CEcBAAAAAAAAAAAAAAAAAAAAAMMzMbjZGMDzMLzYmZMzGAAAAAAAAmhxYGjpGzMzAAAAgZmZMmZMmZgZ2MGsALjhx2AYGEbYMDmZAM",
								label = "Scalecommander #3",
								metrics = {
									["Avg dps"] = "168K",
									["Avg key"] = "+11.6",
									["Max dps"] = "182K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/augmentation-evoker",
								usagePct = 1.2,
							},
							{
								importString = "CEcBAAAAAAAAAAAAAAAAAAAAAMMzMbjZGMDzMLzYmZMzGAAAAAAAAmhHwMYM1YmZGAAAAMzMjxMzyYmBmZzYwCsMGGbDgZQshxMYmBwA",
								label = "Scalecommander #4",
								metrics = {
									["Avg dps"] = "158K",
									["Avg key"] = "+11.3",
									["Max dps"] = "158K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/augmentation-evoker",
								usagePct = 1.2,
							},
							{
								importString = "CEcBAAAAAAAAAAAAAAAAAAAAAMMzMbjZGMDzMLzYmZMzGAAAAAAAAmhZGYM1YmZGAAAAMzMjxMz2YmBmZzYwCsMGGbDgZQshxMYmBwA",
								label = "Scalecommander #5",
								metrics = {
									["Avg dps"] = "133K",
									["Avg key"] = "+11.0",
									["Max dps"] = "155K",
									["Max key"] = "+11",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/augmentation-evoker",
								usagePct = 1.2,
							},
						},
					},
					name = "Scalecommander",
				},
				[38] = {
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
								itemID = 266985,
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
								usagePct = 71.9,
							},
							{
								itemID = 244031,
								slot = "MAINHAND",
								usagePct = 24.1,
							},
							{
								itemID = 244030,
								slot = "MAINHAND",
								usagePct = 1.8,
							},
							{
								itemID = 244007,
								slot = "HEAD",
								usagePct = 81.4,
							},
							{
								itemID = 243951,
								slot = "HEAD",
								usagePct = 10.0,
							},
							{
								itemID = 244005,
								slot = "HEAD",
								usagePct = 3.4,
							},
							{
								itemID = 243991,
								slot = "SHOULDER",
								usagePct = 82.9,
							},
							{
								itemID = 244021,
								slot = "SHOULDER",
								usagePct = 9.4,
							},
							{
								itemID = 243963,
								slot = "SHOULDER",
								usagePct = 2.8,
							},
							{
								itemID = 243977,
								slot = "CHEST",
								usagePct = 95.9,
							},
							{
								itemID = 244003,
								slot = "CHEST",
								usagePct = 3.0,
							},
							{
								itemID = 243976,
								slot = "CHEST",
								usagePct = 0.8,
							},
							{
								itemID = 240133,
								slot = "LEGS",
								usagePct = 91.8,
							},
							{
								itemID = 240155,
								slot = "LEGS",
								usagePct = 7.4,
							},
							{
								itemID = 240094,
								slot = "LEGS",
								usagePct = 0.5,
							},
							{
								itemID = 243953,
								slot = "FEET",
								usagePct = 79.6,
							},
							{
								itemID = 243983,
								slot = "FEET",
								usagePct = 11.8,
							},
							{
								itemID = 244009,
								slot = "FEET",
								usagePct = 8.0,
							},
							{
								itemID = 243987,
								slot = "FINGER1",
								usagePct = 34.2,
							},
							{
								itemID = 243959,
								slot = "FINGER1",
								usagePct = 33.2,
							},
							{
								itemID = 243957,
								slot = "FINGER1",
								usagePct = 21.5,
							},
						},
						gear = {
							BACK = {
								{
									itemID = 239656,
									usagePct = 46.7,
								},
								{
									itemID = 251190,
									usagePct = 10.7,
								},
								{
									itemID = 193763,
									usagePct = 8.6,
								},
								{
									itemID = 272225,
									usagePct = 4.1,
								},
								{
									itemID = 251132,
									usagePct = 4.1,
								},
								{
									itemID = 159288,
									usagePct = 3.7,
								},
								{
									itemID = 272226,
									usagePct = 3.0,
								},
								{
									itemID = 260312,
									usagePct = 2.5,
								},
							},
							CHEST = {
								{
									itemID = 250000,
									usagePct = 75.1,
								},
								{
									itemID = 271504,
									usagePct = 12.0,
								},
								{
									itemID = 251233,
									usagePct = 2.4,
								},
								{
									itemID = 239046,
									usagePct = 2.1,
								},
								{
									itemID = 273789,
									usagePct = 1.8,
								},
								{
									itemID = 239034,
									usagePct = 1.6,
								},
								{
									itemID = 277779,
									usagePct = 1.6,
								},
								{
									itemID = 272247,
									usagePct = 1.2,
								},
							},
							FEET = {
								{
									itemID = 249999,
									usagePct = 55.5,
								},
								{
									itemID = 159388,
									usagePct = 9.5,
								},
								{
									itemID = 251125,
									usagePct = 6.5,
								},
								{
									itemID = 268287,
									usagePct = 5.5,
								},
								{
									itemID = 272248,
									usagePct = 4.0,
								},
								{
									itemID = 251145,
									usagePct = 3.7,
								},
								{
									itemID = 268233,
									usagePct = 3.1,
								},
								{
									itemID = 277778,
									usagePct = 2.2,
								},
							},
							FINGER1 = {
								{
									itemID = 268290,
									usagePct = 53.8,
								},
								{
									itemID = 49812,
									usagePct = 23.5,
								},
								{
									itemID = 251136,
									usagePct = 19.1,
								},
								{
									itemID = 158366,
									usagePct = 12.7,
								},
								{
									itemID = 251217,
									usagePct = 12.1,
								},
								{
									itemID = 249920,
									usagePct = 8.0,
								},
								{
									itemID = 252258,
									usagePct = 7.5,
								},
								{
									itemID = 251093,
									usagePct = 5.6,
								},
							},
							HANDS = {
								{
									itemID = 249998,
									usagePct = 62.0,
								},
								{
									itemID = 271502,
									usagePct = 13.8,
								},
								{
									itemID = 193752,
									usagePct = 11.4,
								},
								{
									itemID = 160213,
									usagePct = 2.4,
								},
								{
									itemID = 277777,
									usagePct = 1.9,
								},
								{
									itemID = 251152,
									usagePct = 1.9,
								},
								{
									itemID = 249325,
									usagePct = 1.2,
								},
								{
									itemID = 244583,
									usagePct = 1.2,
								},
							},
							HEAD = {
								{
									itemID = 249997,
									usagePct = 31.5,
								},
								{
									itemID = 271501,
									usagePct = 13.2,
								},
								{
									itemID = 249317,
									usagePct = 10.4,
								},
								{
									itemID = 249914,
									usagePct = 8.1,
								},
								{
									itemID = 239035,
									usagePct = 8.0,
								},
								{
									itemID = 251220,
									usagePct = 8.0,
								},
								{
									itemID = 49824,
									usagePct = 8.0,
								},
								{
									itemID = 193765,
									usagePct = 4.9,
								},
							},
							LEGS = {
								{
									itemID = 249996,
									usagePct = 79.9,
								},
								{
									itemID = 271500,
									usagePct = 9.0,
								},
								{
									itemID = 268288,
									usagePct = 2.5,
								},
								{
									itemID = 159375,
									usagePct = 1.9,
								},
								{
									itemID = 193759,
									usagePct = 1.8,
								},
								{
									itemID = 277775,
									usagePct = 1.6,
								},
								{
									itemID = 251141,
									usagePct = 1.6,
								},
								{
									itemID = 258932,
									usagePct = 0.6,
								},
							},
							MAINHAND = {
								{
									itemID = 251178,
									usagePct = 17.6,
								},
								{
									itemID = 245770,
									usagePct = 8.3,
								},
								{
									itemID = 273778,
									usagePct = 8.0,
								},
								{
									itemID = 251123,
									usagePct = 7.7,
								},
								{
									itemID = 193761,
									usagePct = 5.9,
								},
								{
									itemID = 258050,
									usagePct = 5.2,
								},
								{
									itemID = 251111,
									usagePct = 4.3,
								},
								{
									itemID = 273780,
									usagePct = 3.8,
								},
							},
							NECK = {
								{
									itemID = 268291,
									usagePct = 26.5,
								},
								{
									itemID = 50228,
									usagePct = 16.4,
								},
								{
									itemID = 251234,
									usagePct = 12.0,
								},
								{
									itemID = 249337,
									usagePct = 10.8,
								},
								{
									itemID = 251142,
									usagePct = 7.7,
								},
								{
									itemID = 251173,
									usagePct = 5.8,
								},
								{
									itemID = 273781,
									usagePct = 5.5,
								},
								{
									itemID = 268251,
									usagePct = 3.0,
								},
							},
							OFFHAND = {
								{
									itemID = 249276,
									usagePct = 26.7,
								},
								{
									itemID = 245769,
									usagePct = 25.8,
								},
								{
									itemID = 193709,
									usagePct = 10.1,
								},
								{
									itemID = 249922,
									usagePct = 6.7,
								},
								{
									itemID = 271681,
									usagePct = 6.5,
								},
								{
									itemID = 273779,
									usagePct = 5.8,
								},
								{
									itemID = 251191,
									usagePct = 4.3,
								},
								{
									itemID = 193766,
									usagePct = 3.4,
								},
							},
							SHOULDER = {
								{
									itemID = 249995,
									usagePct = 74.7,
								},
								{
									itemID = 271499,
									usagePct = 10.8,
								},
								{
									itemID = 251184,
									usagePct = 2.8,
								},
								{
									itemID = 251131,
									usagePct = 2.5,
								},
								{
									itemID = 239049,
									usagePct = 2.5,
								},
								{
									itemID = 277774,
									usagePct = 2.4,
								},
								{
									itemID = 268231,
									usagePct = 1.3,
								},
								{
									itemID = 50233,
									usagePct = 1.2,
								},
							},
							TRINKET1 = {
								{
									itemID = 250256,
									usagePct = 28.7,
								},
								{
									itemID = 249810,
									usagePct = 24.7,
								},
								{
									itemID = 250223,
									usagePct = 23.8,
								},
								{
									itemID = 249346,
									usagePct = 13.2,
								},
								{
									itemID = 249343,
									usagePct = 12.1,
								},
								{
									itemID = 250224,
									usagePct = 11.2,
								},
								{
									itemID = 250215,
									usagePct = 9.0,
								},
								{
									itemID = 264507,
									usagePct = 7.2,
								},
							},
							WAIST = {
								{
									itemID = 49810,
									usagePct = 28.6,
								},
								{
									itemID = 244581,
									usagePct = 10.8,
								},
								{
									itemID = 251228,
									usagePct = 10.2,
								},
								{
									itemID = 249994,
									usagePct = 6.4,
								},
								{
									itemID = 251155,
									usagePct = 6.4,
								},
								{
									itemID = 260375,
									usagePct = 5.9,
								},
								{
									itemID = 277773,
									usagePct = 5.8,
								},
								{
									itemID = 272253,
									usagePct = 5.2,
								},
							},
							WRIST = {
								{
									itemID = 244584,
									usagePct = 65.1,
								},
								{
									itemID = 159380,
									usagePct = 6.1,
								},
								{
									itemID = 251200,
									usagePct = 6.1,
								},
								{
									itemID = 251079,
									usagePct = 4.3,
								},
								{
									itemID = 277772,
									usagePct = 3.6,
								},
								{
									itemID = 272254,
									usagePct = 3.3,
								},
								{
									itemID = 273775,
									usagePct = 2.7,
								},
								{
									itemID = 276642,
									usagePct = 1.8,
								},
							},
						},
						gems = {
							{
								itemID = 240906,
								usagePct = 38.6,
							},
							{
								itemID = 240898,
								usagePct = 22.6,
							},
							{
								itemID = 240983,
								usagePct = 17.5,
							},
							{
								itemID = 240890,
								usagePct = 8.6,
							},
							{
								itemID = 240900,
								usagePct = 3.7,
							},
							{
								itemID = 240908,
								usagePct = 3.2,
							},
							{
								itemID = 240892,
								usagePct = 1.0,
							},
							{
								itemID = 240904,
								usagePct = 0.9,
							},
							{
								itemID = 240897,
								usagePct = 0.8,
							},
						},
						performance = {
							difficulty = "Mythic+",
							median = 135773.1,
							metric = "dps",
							outOf = 40,
							rank = 27,
							sample = 300,
							top = 217718.4,
							zone = "Mythic+ Season 2",
						},
						provenance = {
							mythicstats = {
								fetchedAt = "2026-08-21",
								url = "https://mythicstats.com/spec/augmentation-evoker",
							},
							wowhead = {
								fetchedAt = "2026-08-21",
								url = "https://www.wowhead.com/guide/classes/evoker/augmentation/enchants-gems-pve-dps",
							},
						},
						statPriority = {
							{
								share = 21.5,
								stat = "HASTE",
								weight = 1.0,
							},
							{
								share = 23.9,
								stat = "CRIT",
								weight = 0.914,
							},
							{
								share = 5.1,
								stat = "MASTERY",
								weight = 0.556,
							},
							{
								share = 1.1,
								stat = "VERSATILITY",
								weight = 0.096,
							},
						},
						talentBuilds = {
							{
								importString = "CEcBAAAAAAAAAAAAAAAAAAAAAMMzMbzMzgZYmZZGzMjZ2AAAAAAAAwMMzAjpGzMzAAAAgZmZMmZWGzMwMMwYGLsADMDDNwCGzMzAAD",
								label = "Chronowarden #1",
								metrics = {
									["Avg dps"] = "139K",
									["Avg key"] = "+11.3",
									["Max dps"] = "206K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/augmentation-evoker",
								usagePct = 7.4,
							},
							{
								importString = "CEcBAAAAAAAAAAAAAAAAAAAAAMMzMbzMzgZYmZZGzMjZ2AAAAAAAAYmhZGYM1YmZGAAAAMjZMmZ2GzMwMMwYGLsADMDDNwCGzMzAAD",
								label = "Chronowarden #2",
								metrics = {
									["Avg dps"] = "143K",
									["Avg key"] = "+11.4",
									["Max dps"] = "183K",
									["Max key"] = "+13",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/augmentation-evoker",
								usagePct = 2.4,
							},
							{
								importString = "CEcBAAAAAAAAAAAAAAAAAAAAAMMzMbzMzgZYmZZGzMjZ2AAAAAAAAYmhxMYM1YmZGAAAAMjZMmZ2GzMwMMwYGLsADMDDNwCGjZGAYA",
								label = "Chronowarden #3",
								metrics = {
									["Avg dps"] = "109K",
									["Avg key"] = "+11.3",
									["Max dps"] = "110K",
									["Max key"] = "+12",
								},
								source = "mythicstats",
								url = "https://mythicstats.com/spec/augmentation-evoker",
								usagePct = 1.0,
							},
						},
					},
					name = "Chronowarden",
				},
			},
			name = "Augmentation",
		},
	},
})

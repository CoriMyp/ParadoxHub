local woods = {
	types = {
		["Elm"] = "Generic",
		["Oak"] = "Oak",
		["Cherry"] = "Cherry",
		["Walnut"] = "Walnut",
		["Birch"] = "Birch",
		["Fir"] = "Fir",
		["Pine"] = "Pine",
		["Koa"] = "Koa",
		["Lava"] = "Volcano",
		["Zombie"] = "GreenSwampy",
		["Gold"] = "GoldSwampy",
		["Frost"] = "Frost",
		["Cavecrawler"] = "CaveCrawler",
		["Palm"] = "Palm",
		["Snowglow"] = "SnowGlow",
		["Phantom"] = "LoneCave"
	},
	names = {
		"Elm",
		"Oak",
		"Cherry",
		"Walnut",
		"Birch",
		"Fir",
		"Pine",
		"Koa",
		"Lava",
		"Zombie",
		"Gold",
		"Frost",
		"Cavecrawler",
		"Palm",
		"Snowglow",
		"Phantom"
	}
}

local axes = {
	damage = {
		["ManyAxe"] = {10.2},
		["EndTimesAxe"] = {1.58, 10000000},
		["AxeSwamp"] = {0.8, 7, 5.35},
		["FireAxe"] = {0.4, 8.12},
		["GingerbreadAxe"] = {1.2, 11, 8.5},
		["CaveAxe"] = {0.4, 7.2},
		["IceAxe"] = {0.36, 6},
		["AxeTwitter"] = {1.55, 2.5, 3.9},

		["RustyAxe"] = {0.55},
		["CandyCornAxe"] = {1.75},
		["AxeBetaTesters"] = {1.5},
		["CandyCaneAxe"] = {0},
		["AxeAmber"] = {3.73},
		["Beesaxe"] = {0.95},
		["AxeAlphaTesters"] = {1.45},
		["AxeChicken"] = {0.75},
		["Rukiryaxe"] = {1.68},

		["BasicHatchet"] = {0.2},
		["Axe1"] = {0.55},
		["Axe2"] = {0.93},
		["Axe3"] = {1.45},
		["SilverAxe"] = {1.6}
	},
	names = {
		"ManyAxe",
		"EndTimesAxe",
		"AxeSwamp",
		"FireAxe",
		"GingerbreadAxe",
		"CaveAxe",
		"IceAxe",
		"AxeTwitter",

		"RustyAxe",
		"CandyCornAxe",
		"AxeBetaTesters",
		"CandyCaneAxe",
		"AxeAmber",
		"Beesaxe",
		"AxeAlphaTesters",
		"AxeChicken",
		"Rukiryaxe",

		"BasicHatchet",
		"Axe1",
		"Axe2",
		"Axe3",
		"SilverAxe"
	}
}

local waypoints = {
	cframes_waypoints = {
		["Spawn"] = CFrame.new(155.39859, 2.99999928, 45, -0.00238823146, 7.26640721e-08, -0.999997139, 9.90877935e-10, 1, 7.2661912e-08, 0.999997139, -8.17341583e-10, -0.00238823146),
		["The Cabin"] = Cframe.new(1245.80164, 63.6000061, 2306.6687, -0.999994457, 2.30877539e-08, 0.00333487266, 2.29657235e-08, 1, -3.66304285e-08, -0.00333487266, -3.65536401e-08, -0.999994457),
		["The Den"] = CFrame.new(322.789185, 41.7998581, 1929.37329, 0.967896044, -1.55256377e-08, 0.251350939, 2.0462247e-08, 1, -1.70267533e-08, -0.251350939, 2.16233325e-08, 0.967896044),
		["Bridge"] = CFrame.new(114.750282, 3.20052576, -619.192139, 0.999763966, 6.0992285e-08, 0.0217249449, -6.26803782e-08, 1, 7.70222428e-08, -0.0217249449, -7.83657939e-08, 0.999763966),
		["Wood Dropoff"] = CFrame.new(323.406006, -2.79999995, 134.733994, 1, 1.57772053e-08, 1.89326551e-14, -1.57772053e-08, 1, 7.01471023e-08, -1.78259303e-14, -7.01471023e-08, 1),
		["Shrine Of Sight"] = CFrame.new(-1618.75452, 195.400955, 937.720764, -0.704792976, 3.81700325e-08, 0.709413052, 2.48745238e-08, 1, -2.9092563e-08, -0.709413052, -2.85792168e-09, -0.704792976),
		["Lighthouse"] = CFrame.new(1705.30347, 355.249725, 3335.77441, -0.384453595, -1.48196797e-08, 0.923144341, -8.58298232e-09, 1, 1.24790036e-08, -0.923144341, -3.12573367e-09, -0.384453595),
		["Bird Cave"] = CFrame.new(4844.0376, 30.6988144, -914.853516, 0.84641701, 1.58451421e-08, 0.532520652, 2.76443561e-08, 1, -7.36944088e-08, -0.532520652, 7.70973898e-08, 0.84641701),
		["Green Box"] = CFrame.new(-1676.56555, 349.601837, 1476.34583, 0.0805106014, -2.44051606e-08, -0.996753752, 2.57841286e-08, 1, -2.2401986e-08, 0.996753752, -2.38968294e-08, 0.0805106014),
		["Dock"] = CFrame.new(1127.85278, -1.20001495, -203.657211, 0.327101022, 8.02293201e-08, -0.944989383, -5.3001834e-08, 1, 6.65535183e-08, 0.944989383, 2.83164479e-08, 0.327101022),
		["Strange Man"] = CFrame.new(1065.01453, 16.7995968, 1133.58081, 0.508478463, -9.83305029e-08, 0.861074686, 5.23026351e-08, 1, 8.33095442e-08, -0.861074686, 2.67536859e-09, 0.508478463),
		["Cave"] = CFrame.new(5081.93701, 2.80059361, 375.302734, -0.830541551, -1.4588788e-08, -0.556956649, -7.66060069e-08, 1, 8.80421922e-08, 0.556956649, 1.15788922e-07, -0.830541551),
	},
	cframes_shops = {
		["Wood R Us"] = CFrame.new(246.908722, 2.99999928, 57.7252769, 0.0335310809, 2.90618978e-08, -0.99943769, -6.91318718e-08, 1, 2.67588778e-08, 0.99943769, 6.81957388e-08, 0.0335310809),
		["Land Store"] = CFrame.new(239.86702, 2.99999928, -98.8214493, 0.0226884559, 2.61397357e-08, -0.999742568, -6.42508935e-09, 1, 2.60006523e-08, 0.999742568, 5.83352078e-09, 0.0226884559),
		["Fancy Furnishings"] = CFrame.new(491.614014, 2.99999928, -1698.97925, 0.999895275, -5.119443e-08, 0.014472899, 5.18970289e-08, 1, -4.81703211e-08, -0.014472899, 4.89163732e-08, 0.999895275),
		["Boxed Cars"] = CFrame.new(509.018311, 2.99999928, -1480.63684, -0.998897076, -1.85827815e-08, -0.0469540656, -1.98113845e-08, 1, 2.5700686e-08, 0.0469540656, 2.66025655e-08, -0.998897076),
		["Bob's Shack"] = CFrame.new(247.771103, 8.40083504, -2539.38599, 0.267942786, -9.13307758e-08, -0.963434815, 6.39657642e-08, 1, -7.70073996e-08, 0.963434815, -4.09932639e-08, 0.267942786),
		["Link's Logic"] = CFrame.new(4609.22412, 7.0008235, -764.510376, 0.999983609, -5.71945939e-08, -0.00572906202, 5.71175178e-08, 1, -1.36168632e-08, 0.00572906202, 1.32894096e-08, 0.999983609),
		["Fine Art Shop"] = CFrame.new(5205.52539, -166.200012, 722.322998, 0.0140098082, -6.40426094e-08, -0.999901831, 6.72074307e-08, 1, -6.31072439e-08, 0.999901831, -6.63167157e-08, 0.0140098082),
	},
	cframes_regions = {
		["Cherry Meadow"] = CFrame.new(199.709732, 59.800087, 1283.07385, 0.4252159, 1.06573907e-07, -0.905091941, -9.27596222e-09, 1, 1.1339138e-07, 0.905091941, -3.98202182e-08, 0.4252159),
		["Volcano"] = CFrame.new(-1602.41284, 622.999878, 1087.91113, 0.897844255, -3.28124017e-08, 0.44031322, 5.46554766e-08, 1, -3.69275845e-08, -0.44031322, 5.7220749e-08, 0.897844255),
		["Swamp"] = CFrame.new(-1078.22034, 131.600891, -959.258972, -0.566804528, 2.70311151e-08, 0.823852301, 6.82621781e-09, 1, -2.81142416e-08, -0.823852301, -1.03114841e-08, -0.566804528),
		["Safari"] = CFrame.new(-319.792114, 6.82639551, -1865.2334, 0.969549477, -1.60032076e-08, 0.244895488, 1.40580383e-08, 1, 9.69084279e-09, -0.244895488, -5.95300209e-09, 0.969549477),
		["Cavecrawler Cave"] = CFrame.new(3325.8269, -225.800171, 431.980316, 0.106477916, -1.88909333e-08, -0.994315088, 4.96884622e-09, 1, -1.84668441e-08, 0.994315088, -2.97428748e-09, 0.106477916),
		["Phantom Cave"] = CFrame.new(113, -212.995941, -951, 1, 1.3982123e-08, 6.58815069e-15, -1.3982123e-08, 1, 2.25377708e-08, -6.27302479e-15, -2.25377708e-08, 1),
		["Palm Island 1"] = CFrame.new(2587.36133, -5.89998674, -14.1784801, 0.107949018, 1.93002734e-08, -0.99415642, -1.04437191e-07, 1, 8.0735596e-09, 0.99415642, 1.02955376e-07, 0.107949018),
		["Palm Island 2"] = CFrame.new(1964.50085, -5.90000296, -1490.44556, -0.628792286, 1.25118076e-08, 0.777573347, 1.0328141e-08, 1, -7.73888686e-09, -0.777573347, 3.16473492e-09, -0.628792286),
		["Palm Island 3"] = CFrame.new(4355.37451, -5.90000296, -1841.46411, -0.877712488, 1.98674033e-09, 0.479187608, 8.1568059e-09, 1, 1.07944995e-08, -0.479187608, 1.3383108e-08, -0.877712488),
		["Tiaga Peak"] = CFram.new(1463.31409, 412.365753, 3260.34521, 0.643380165, 2.03723935e-08, 0.765546858, -1.86274551e-08, 1, -1.09566898e-08, -0.765546858, -7.2108719e-09, 0.643380165),
		["T"] = CFrame.new(-1125.76978, 1.10021734, -944.411133, -0.0475114435, -6.27310683e-08, 0.998870671, -1.97669081e-08, 1, 6.18617761e-08, -0.998870671, -1.68054441e-08, -0.0475114435)
	},
	places = {
		"Spawn",
		"The Cabin",
		"The Den",
		"Bridge",
		"Wood Dropoff",
		"Shrine Of Sight",
		"Lighthouse",
		"Bird Cave",
		"Green Box",
		"Dock",
		"Strange Man",
		"Cave"
	},
	shops = {
		"Wood R Us",
		"Land Store",
		"Fancy Furnishings",
		"Boxed Cars",
		"Bob's Shack",
		"Link's Logic",
		"Fine Art Shop"
	},
	wood_regions = {
		"Cherry Meadow",
		"Volcano",
		"Swamp",
		"Safari",
		"Cavecrawler Cave",
		"Phantom Cave",
		"Palm Island 1",
		"Palm Island 2",
		"Palm Island 3",
		"Tiaga Peak",
		"T Monument"
	}
}



return {woods, axes, waypoints}

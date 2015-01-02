// Title card thingy
[
	[
		[localize "A3G_str_missionName",
			"align = 'center',
			shadow = '1',
			size = '1',
			font = 'PuristaBold'"
		],
		["","<br/>"],
		[localize "A3G_str_author",
			"align = 'center',
			shadow = '1',
			size = '0.5'"
		]
	]
] spawn BIS_fnc_typeText2;

[] execVM "config\briefing\briefing.sqf";
[] execVM "config\general\clientSide.sqf";


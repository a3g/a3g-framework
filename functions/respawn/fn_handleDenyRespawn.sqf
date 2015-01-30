if (!alive player && count (playableUnits + switchableUnits) == 0) then {
	[["Loser", false], "bis_fnc_endMission", true, true] call BIS_fnc_MP;
};

_this call compile preprocessFile "a3g-spectatorcam\scripts\initCam.sqf";
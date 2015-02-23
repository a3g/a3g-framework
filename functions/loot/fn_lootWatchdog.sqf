private ["_allAi"];

while { true } do {
  _allAi = allUnits - ( playableUnits + switchableUnits );
  {
    if( isNil { _x getVariable "A3G_Template_Loot_RemoveLootEH" }) then {
      _x addEventHandler ["Killed", { [_this select 0] call A3G_Template_fnc_removeLoot }];
      _x setVariable ["A3G_Template_Loot_RemoveLootEH", true];
    };
  } forEach _allAi;
  sleep 1;
};
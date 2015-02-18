while { true } do {
  _allAi = allUnits - ( playableUnits + switchableUnits );
  {
    if( isNil { _x getVariable "A3G_Template_LootEH" }) then {
      _x addEventHandler ["Killed", { [_this select 0, _mode] call A3G_Template_fnc_removeLoot }];
      _x setVariable ["A3G_Template_LootEH", true];
    };
  } forEach _allAi;
  sleep 1;
};

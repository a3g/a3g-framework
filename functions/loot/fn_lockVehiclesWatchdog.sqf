while { true } do {
  {
    if( isNil { _x getVariable "A3G_Template_Loot_LockVehiclesEH" }) then {
      if( count crew _x >= 1 && { isPlayer _x } count crew _x <= 0 ) then {
        _x setVehicleLock "LOCKEDPLAYER";
      };
      _x setVariable ["A3G_Template_Loot_LockVehiclesEH", true];
    };
  } forEach vehicles;
  sleep 1;
};
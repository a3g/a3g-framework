_projectile = _this select 6;

{
  if( _projectile distance getMarkerPos _x < (getMarkerSize _x) select 0) then {
    hint "You can not use weapons inside protection zones!";
    deleteVehicle _projectile;
  } else {
    [_projectile, _x] spawn {
      _prj = _this select 0;
      _mrk = _this select 1;
      waitUntil {
        if( _prj distance getMarkerPos _mrk < (getMarkerSize _mrk) select 0) then {
          hint "You can not fire weapons into a protection zone!";
          deleteVehicle _prj;
        };
        if( isNull( _prj )) exitWith { true };
        false
      };
    };
  };
} forEach A3G_Template_Safezone_Markers;
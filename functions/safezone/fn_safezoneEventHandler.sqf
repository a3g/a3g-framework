_projectile = _this select 6;
_deleted = false;

if( isNil "A3G_Template_Safezone_Markers" ) exitWith {};

{
  if( _projectile distance getMarkerPos _x < (getMarkerSize _x) select 0) then {
    hint "You can not use weapons inside protection zones!";
    deleteVehicle _projectile;
    _deleted = true;
  };
} forEach A3G_Template_Safezone_Markers;

if( !_deleted ) then {
  [_projectile] spawn {
    _prj = _this select 0;
    waitUntil {
      {
        if( _prj distance getMarkerPos _x < (getMarkerSize _x) select 0) then {
          hint "You can not fire weapons into a protection zone!";
          deleteVehicle _prj;
        };
      } forEach A3G_Template_Safezone_Markers;

      if( isNull( _prj )) exitWith { true };
      false
    };
  };
};
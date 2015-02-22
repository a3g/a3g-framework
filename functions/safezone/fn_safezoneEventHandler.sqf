private ["_projectile", "_deleted"];

_projectile = _this select 6;
_deleted = false;

{
  if( _projectile distance getMarkerPos _x < (getMarkerSize _x) select 0) then {
    hint "You can not use weapons inside protection zones!";
    deleteVehicle _projectile;
    _deleted = true;
  };
} forEach A3G_Template_Safezone_Markers;

if( !_deleted ) then {
  A3G_Template_Safezone_Projectiles pushBack _projectile;
};
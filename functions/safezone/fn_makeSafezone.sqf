/*
  Author: Cephei

  Description:
  Makes a safezone, in which guns cannot be shot and grenades cannot be thrown. Does also prevent people from firing or throwing things INTO the safezone. Does nothing on clients. Hides marker being used. Marker needs to be perfect circle, ovals and rectangles intentionally don't work. This is because intersection tests on circles are trivial, while intersection tests with rectangles and ovals are not, or simply: Performance reasons.

  Parameter(s):
  #0 STRING - Markername
  #1 (Optional) BOOL - true to show arrows to indicate the extent of the protection zone (default: false)

  Returns:
  BOOL - TRUE when done
*/

if( !isServer ) exitWith {};

_markerName = _this select 0;
_shown = if ( count _this > 1 ) then { _this select 1 } else { false };

if( isNil "A3G_Template_Safezone_Markers" ) then {
  A3G_Template_Safezone_Markers = [];
};

_markerRadiusX = getMarkerSize _markerName select 0;

if(_shown) then {
  for "_i" from 0 to (round _markerRadiusX) do {
    // Vector math yo
    _markerPosX = getMarkerPos _markerName select 0;
    _markerPosY = getMarkerPos _markerName select 1;

    _offsetX = _markerRadiusX;
    // _offsetX doesn't exist, as we start on relative 0, which cancels out half of the formula

    _angle = ( 360 / round ( _markerRadiusX + 1 )) * _i;

    _newPosX = _markerPosX + _offsetX * ( cos _angle );
    _newPosY = _markerPosY + _offsetX * ( sin _angle );

    "Sign_Arrow_F" createVehicle [_newPosX, _newPosY, 0];
  };
};

A3G_Template_Safezone_Markers pushBack _markerName;
_markerName setMarkerAlpha 0;

true
private ["_player"];

// Handle JIP / Parameter
_player = _this select 0;

A3G_Template_Parameters_JipTime = ["A3G_Template_JipTime", -1] call bis_fnc_getParamValue;

if(A3G_Template_Parameters_JipTime != -1 && A3G_Template_Parameters_JipTime < time) then {
  _player setDamage 1;
};


// Handle server side client side custom scripting
[_player] call A3G_Template_fnc_InitPlayerServer;
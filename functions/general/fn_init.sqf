// ------------------------------------------------------------------------------------------------
// ------------------------------------------ Server ----------------------------------------------
// ------------------------------------------------------------------------------------------------

if( isServer ) then {
  if( ["A3G_Template_RemoveLoot", 0] call bis_fnc_getParamValue >= 1 ) then {
    [] spawn A3G_Template_fnc_LootWatchdog;
  };

  if( ["A3G_Template_LockVehicles", 0] call bis_fnc_getParamValue >= 1) then {
    [] spawn A3G_Template_fnc_LockVehiclesWatchdog;
  };

  A3G_Template_Parameters_JipTime = ["A3G_Template_JipTime", -1] call bis_fnc_getParamValue;


  // Handle server side custom scripting
  [] call A3G_Template_fnc_InitServer;
};


// ------------------------------------------------------------------------------------------------
// ----------------------------------- Each client on server --------------------------------------
// ------------------------------------------------------------------------------------------------

if ( !isDedicated ) then {
  [[player], "A3G_Template_fnc_OnPlayerConnected", false, false, true] call bis_fnc_MP;
};


// ------------------------------------------------------------------------------------------------
// ------------------------------------------ Client ----------------------------------------------
// ------------------------------------------------------------------------------------------------

if ( !isDedicated ) then {
  if( !isNil "A3G_Template_Safezone_Markers" ) then {
    // Make an event for firing, this is needed for the protection zone
    player addEventHandler ["Fired", A3G_Template_fnc_SafeZoneEventHandler];
  };

  [] call A3G_Template_fnc_Diary;
  [] call A3G_Template_fnc_Briefing;

  // Fade into mission
  titleText ["", "BLACK FADED", 0];
  titleText ["", "BLACK IN", 3];

  // Title card
  [
    [
      [
        localize "A3G_Template_str_missionNameShort",
        "align = 'center',
        shadow = '1',
        size = '1',
        font = 'PuristaBold'"
      ],
      ["","<br/>"],
      [
        getText (missionConfigFile >> "author"),
        "align = 'center',
        shadow = '1',
        size = '0.5'"
      ]
    ]
  ] spawn BIS_fnc_typeText2;


  // Handle client side custom scripting
  [player] call A3G_Template_fnc_InitPlayerLocal;
};

// ------------------------------------------------------------------------------------------------
// ----------------------------------------- Everyone ---------------------------------------------
// ------------------------------------------------------------------------------------------------

[] call A3G_Template_fnc_Medical;
[] call A3G_Template_fnc_DefaultParameters;
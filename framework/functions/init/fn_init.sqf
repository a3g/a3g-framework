// ------------------------------------------------------------------------------------------------
// ------------------------------------------ Server ----------------------------------------------
// ------------------------------------------------------------------------------------------------

if( isServer ) then {
  if( ["A3G_Template_RemoveLoot", 0] call bis_fnc_getParamValue >= 1 ) then {
    A3G_Template_Loot_RemoveLootMode = ["A3G_Template_RemoveLoot", 1] call bis_fnc_getParamValue;
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

// Parameter override
[] call A3G_Template_fnc_OverrideParameters;

if( !isNil "AGM_Template_Parameters_OverrideBleedoutTime" ) then {
  AGM_Medical_MaxUnconsciousnessTime = AGM_Template_Parameters_OverrideBleedoutTime;
};

if( isServer ) then {
  if( !isNil "AGM_Template_Parameters_OverrideJipTime" ) then {
    A3G_Template_Parameters_JipTime = AGM_Template_Parameters_OverrideJipTime;
  };
  if( !isNil "AGM_Template_Parameters_OverrideLootMode" ) then {
    A3G_Template_Loot_RemoveLootMode = AGM_Template_Parameters_OverrideLootMode;
    [] spawn A3G_Template_fnc_LootWatchdog;
  };
  if( !isNil "AGM_Template_Parameters_OverrideVehicleLock" ) then {
    [] spawn A3G_Template_fnc_LockVehiclesWatchdog;
  };
};

[] call A3G_Template_fnc_LogMedicalSettings;
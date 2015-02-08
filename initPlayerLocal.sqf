// ------------------------------------------------------------------------------------------------
// ----------------------------------- DO NOT EDIT THIS FILE --------------------------------------
// ------------------------------------------------------------------------------------------------

// Handle briefing
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
_this call A3G_Template_fnc_InitPlayerLocal;
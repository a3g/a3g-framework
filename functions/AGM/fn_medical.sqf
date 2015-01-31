// Set new default settings for AGM medical, when the user didn't place a medical module
if( isNil "AGM_Medical_Module" ) then {
	AGM_Medical_CoefNonMedic = 4;
	AGM_Medical_AllowNonMedics = 1;
	AGM_Medical_RequireDiagnosis = 1;
	AGM_Medical_PreventInstaDeath = 1;
	AGM_Medical_PreventDeathWhileUnconscious = 1;
	AGM_Medical_SingleBandage = 1;
	AGM_Medical_EnableOverdosing = 0;
	AGM_Medical_DisableScreams = 1;
};

// This one is _always_ set, because it's a parameter
AGM_Medical_MaxUnconsciousnessTime = "A3G_Template_BleedoutTime" call bis_fnc_getParamValue;

// Write down medical settings to A3G Template Diary
_string = format [
"CoefDamage: %1<br/>
CoefBleeding: %2<br/>
CoefPain: %3<br/>
CoefNonMedic: %4<br/>
<br/>
MaxUnconsciousnessTime: %5<br/>
AllowNonMedics: %6<br/>
RequireDiagnosis: %7<br/>
PreventInstaDeath: %8<br/>
PreventDeathWhileUnconscious: %9<br/>
SingleBandage: %10<br/>
AllowChatWhileUnconscious: %11<br/>
EnableOverdosing: %12<br/>
RequireMEDEVAC: %13<br/>
AutomaticWakeup: %14<br/>
DisableScreams: %15<br/>",
	AGM_Medical_CoefDamage,
	AGM_Medical_CoefBleeding,
	AGM_Medical_CoefPain,
	AGM_Medical_CoefNonMedic,
	AGM_Medical_MaxUnconsciousnessTime,
	AGM_Medical_AllowNonMedics,
	AGM_Medical_RequireDiagnosis,
	AGM_Medical_PreventInstaDeath,
	AGM_Medical_PreventDeathWhileUnconscious,
	AGM_Medical_SingleBandage,
	AGM_Medical_AllowChatWhileUnconscious,
	AGM_Medical_EnableOverdosing,
	AGM_Medical_RequireMEDEVAC,
	AGM_Medical_AutomaticWakeup,
	AGM_Medical_DisableScreams
];

player createDiaryRecord["A3G_Template", ["AGM Medical", _string]];
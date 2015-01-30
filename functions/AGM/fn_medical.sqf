// Set new default settings for AGM medical, when the user didn't place a medical module
if( isNil "AGM_Medical_Module" ) then {
	AGM_Medical_CoefNonMedic = 4;
	AGM_Medical_MaxUnconsciousnessTime = "A3G_Template_BleedoutTime" call bis_fnc_getParamValue;
	AGM_Medical_AllowNonMedics = 1;
	AGM_Medical_RequireDiagnosis = 1;
	AGM_Medical_PreventInstaDeath = 1;
	AGM_Medical_PreventDeathWhileUnconscious = 1;
	AGM_Medical_SingleBandage = 1;
	AGM_Medical_EnableOverdosing = 0;
	AGM_Medical_DisableScreams = 1;
};
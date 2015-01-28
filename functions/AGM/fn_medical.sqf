_center = createCenter sideLogic;
_group = createGroup _center;

sleep 2;	// Can't stay like this

_module = _group createUnit["AGM_ModuleMedical", [0,0,0], [], 0, "NONE"];
_module setVariable["CoefNonMedic", 4];
_module setVariable["MaxUnconsciousnessTime", 60];
_module setVariable["AllowNonmedics", true];
_module setVariable["RequireDiagnosis", true];
_module setVariable["PreventInstaDeath", true];
_module setVariable["PreventDeathWhileUnconscious", true];
_module setVariable["SingleBandage", true];
_module setVariable["EnableOverdosing", false];

asd = _module;		// Needs to be removed
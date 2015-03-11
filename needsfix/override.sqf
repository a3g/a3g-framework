// File to override specific parameters.
// Make sure you comment out the parameter(s) inside custom.hpp and templates.hpp in this folder, so they don't conflict with each other. Enabling things in here will try and override the values from the parameters, wether they actually exist or not. Settings in this file will have priority over the parameters.
// To clarify, this file is useful when you want a specific parameter value or setting to be used, ideally with no way to change it ( comment or delete the parameter in question to avoid confusion ).
// Be advised that all template parameters default to whatever the default value is in their values, even if you don't uncomment anything below and even if the parameter is disabled entirely by commenting or deleting it from templates.hpp.
// Uncomment to use.

// Overrides AGM parameter settings
// AGM_Template_Parameters_OverrideBleedoutTime = 600;

// Overrides JIP time. Value in seconds. -1 to disable
// AGM_Template_Parameters_OverrideJipTime = -1;

// Overrides removal of loot. 1 = Weapons only, 2 = Everything. 0 exists, but makes no sense, if you don't want to use it, don't uncomment this line in the first place.
// AGM_Template_Parameters_OverrideLootMode = 1;

// Overrides locking of AI vehicles
// AGM_Template_Parameters_OverrideVehicleLock = 1;

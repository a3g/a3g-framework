// File to force specific parameter values on the server. Uncomment to use.
// Make sure you comment out the parameter(s) inside custom.hpp and templates.hpp in this folder, so they don't conflict with each other.
// To clarify, this file is useful when you want a SPECIFIC parameter value or setting to be used, with no ability to change it.


// Forces AGM bleedout time
// AGM_Medical_MaxUnconsciousnessTime = -1;

// Forces JIP time
// if ( isServer ) then { A3G_Template_Parameters_JipTime = -1; };

// Forces removal of loot
// if ( isServer ) then { [] spawn A3G_Template_fnc_LootWatchdog; };

// Forces locking of AI vehicles
// if ( isServer ) then { [] spawn A3G_Template_fnc_LockVehiclesWatchdog; };
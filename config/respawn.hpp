// Respawn type selection. Decides how and if players can respawn.
// Can be one of: NONE, INSTANT, BASE, GROUP or SIDE.
// Unless you're very sure what you want to do, leave this at BASE.
// This setting is perfect for 99% of missions, including TvT.

respawn = "BASE";


// Respawn template selection. This decides for example whether or not people can respawn at all, or if they can only JIP.
// Again, unless you're very sure you want to change these, don't touch them.
// These settings are perfect for 99% of missions.

respawnTemplates[] = {"A3G_SpectatorCam", "Base"};


// For TvT, or other missions where you want an actual respawn, you might want to use these settings instead:

// respawnTemplates[] = {"Base", "Counter", "MenuPosition"};


// Check out all options here: https://community.bistudio.com/wiki/Arma_3_Respawn#Respawn_Templates
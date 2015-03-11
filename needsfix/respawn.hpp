// Respawn type selection. Decides how and if players can respawn.
// Can be one of: NONE, INSTANT, BASE, GROUP or SIDE.
// Unless you're very sure what you want to do, leave this at BASE.
// This setting is perfect for 99.99% of missions, including TvT and including missions with or without respawn.

respawn = "BASE";


// Respawn template selection. This decides for example whether or not people can respawn at all, or if they can only JIP.
// Again, unless you're very sure you want to change these, don't touch them.
// These settings are perfect for 99% of missions:

respawnTemplates[] = {"A3G_Respawn_DenyRespawn", "Base"};         // Does not allow respawn, ie. "permadeath".


// For missions where you want an actual respawn, you might want to use these settings instead:

// respawnTemplates[] = {"A3G_Respawn_AllowRespawn", "Base", "Counter"};  // Allows respawn, but shows a spectator camera


// For TvT with respawn, this might be a good idea:

// respawnTemplates[] = {"Base", "Counter"};                // Allows respawn, but no spectator camera


// Check out all options here: https://community.bistudio.com/wiki/Arma_3_Respawn#Respawn_Templates

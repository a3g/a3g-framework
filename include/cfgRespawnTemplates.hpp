class A3G_Respawn_AllowRespawn {
	onPlayerKilled = "A3G_Template_fnc_HandleAllowRespawn";
};
class A3G_Respawn_DenyRespawn {
	onPlayerKilled = "A3G_Template_fnc_HandleDenyRespawn";
	respawnDelay = 1e10;
};
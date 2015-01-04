class Header {
	// Can be one of:
	// Coop, DM, TDM, CTF, SC, CTI, RPG, Sandbox, Seize, Defend, ZDM, ZCTF, ZCoop, ZSC, ZCTI, ZTDM, ZRPG, ZGM, ZvZ, ZvP
	gameType = Coop;

	// Should be self explanatory, set minimum and maximum players here.
	minPlayers = 1;
	maxPlayers = 64;
};

// Unfortunately authors do not work via localize, so you'll have to set it here manually.
author = "Mission author";
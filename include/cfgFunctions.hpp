class A3G_Template {
  class AGM {
    file = "functions\agm";
    class LogMedicalSettings {};
    class Medical {};
  };

  class General {
    file = "functions\general";
    class Diary {};
    class Init {
      postInit = 1;
    };
    class OnPlayerConnected {};
  };

  class Loot {
    file = "functions\loot";
    class RemoveLoot {};
    class LootWatchdog {};
    class LockVehiclesWatchdog {};
  };

  class Respawn {
    file = "functions\respawn";
    class HandleAllowRespawn {};
    class HandleDenyRespawn {};
  }

  class Safezone {
    file = "functions\safezone";
    class MakeSafeZone {};
    class SafezoneEventHandler {};
  };  

  class Config {
    class InitPlayerLocal {
      file = "config\init\initPlayerLocal.sqf";
    };
    class InitPlayerServer {
      file = "config\init\initPlayerServer.sqf";
    };
    class InitServer {
      file = "config\init\initServer.sqf";
    }
    class Briefing {
      file = "config\general\briefing.sqf";
    };
    class OverrideParameters {
      file = "config\parameters\override.sqf";
    };
  };
};
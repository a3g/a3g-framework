class A3G_Template {

  class AGM {
    file = "functions\agm";
    class Medical {
      postInit = 1;
    };
  };

  class General {
    file = "functions\general";
    class Diary {
      postInit = 1;
    };
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
      postInit = 1;
    };
    class DefaultParameters {
      file = "config\parameters\defaults.sqf";
      postInit = 1;
    };
  };

};
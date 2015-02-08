class A3G_Template {
  class Generic {
    file = "functions\generic";
    class Diary {
      postInit = 1;
    };
  };

  class AGM {
    file = "functions\agm";
    class Medical {
      postInit = 1;
    };
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

  class Custom {
    class InitPlayerLocal {
      file = "config\generic\initPlayerLocal.sqf";
    };
    class InitPlayerServer {
      file = "config\generic\initPlayerServer.sqf";
    };
    class InitServer {
      file = "config\generic\initServer.sqf";
    }
    class Briefing {
      file = "config\briefing.sqf";
    };
  };
};
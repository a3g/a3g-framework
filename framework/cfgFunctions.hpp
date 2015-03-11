class A3G_Framework {
  class Init {
    file = "framework\functions\init";
    class Init { 
      postInit = 1;
    };
    class OnPlayerConnected {};
    class InitPlayerLocal {
      file = "mission\init\initPlayerLocal.sqf";
    };
    class InitPlayerServer {
      file = "mission\init\initPlayerServer.sqf";
    };
    class InitServer {
      file = "mission\init\initServer.sqf";
    };
  };

  class General {
    file = "includes\functions\general";
    class Diary {};
  };

  class Respawn {
    file = "includes\functions\respawn";
    class HandleAllowRespawn {};
    class HandleDenyRespawn {};
  }
};

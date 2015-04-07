class A3GFramework {
  class Init {
    file = "framework\functions\init";
    class OnMissionStart { 
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
	class Init {
	  file = "mission\init\init.sqf";
	};
  };
  
  class Log {
    file = "framework\functions\log";
    class LogCredits {
      postInit = 1;
    };
    class LogModules {
      postInit = 1;
    };
  };
};

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
	class Briefing {
	  file = "mission\briefing.sqf";
	  postInit = 1;
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

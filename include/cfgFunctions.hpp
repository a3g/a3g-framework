class A3G_Template {
	class Generic {
		class PreInit {
			file = "functions\fn_preInit.sqf";
			preInit = 1;
		};
		class PostInit {
			file = "functions\fn_postInit.sqf";
			postInit = 1;
		};

		file = "functions\generic";
		class TitleCard {
			postInit = 1;
		};
		class Fade {
			postInit = 1;
		};
		class Briefing {
			postInit = 1;
		};
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
};
class A3G_Template {
	class Generic {
		file = "functions";
		class PreInit {
			preInit = 1;
		};
		class PostInit {
			postInit = 1;
		};
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
		file = "functions\AGM";
		class Medical {
			postInit = 1;
		};
	};

	class HC {
		file = "functions\HC";
		class Convert {
			postInit = 1;
		};
	};
};
class End1 {
  title = "Mission Success";
  subtitle = "You won";
  pictureBackground = "mission\logo.paa";
  picture = "mil_circle";
  pictureColor[] = {"(profilenamespace getvariable ['Map_BLUFOR_R',0])","(profilenamespace getvariable ['Map_BLUFOR_G',1])","(profilenamespace getvariable ['Map_BLUFOR_B',1])","(profilenamespace getvariable ['Map_BLUFOR_A',0.8])"};
};

class Loser {
  title = "Mission Failed";
  subtitle = "Everyone died";
  pictureBackground = "mission\logo.paa";
  picture = "KIA";
  pictureColor[] = {"(profilenamespace getvariable ['Map_OPFOR_R',0])","(profilenamespace getvariable ['Map_OPFOR_G',1])","(profilenamespace getvariable ['Map_OPFOR_B',1])","(profilenamespace getvariable ['Map_OPFOR_A',0.8])"};
};
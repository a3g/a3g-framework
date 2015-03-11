class A3G_Template {
  class AGM {
    file = "includes\functions\agm";
    class LogMedicalSettings {};
    class Medical {};
  };

  class General {
    file = "includes\functions\general";
    class Diary {};
    class Init {
      postInit = 1;
    };
    class OnPlayerConnected {};
  };

  class Respawn {
    file = "includes\functions\respawn";
    class HandleAllowRespawn {};
    class HandleDenyRespawn {};
  }

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

class A3G_AntiLoot {
  class Functions {
    file = "includes\modules\a3g-anti-loot\functions";
    class LootLoop {};
    class RemoveLoot {};
    class SpawnLoops {
      postInit = 1;
    };    
    class VehicleLoop {};
  };
};

class A3G_Loadout {
  class Arsenal {
    file = "includes\modules\a3g-loadout\functions\arsenal";
    class ReplaceLinkedItems {};
    class ReplaceWeapons {};
  };

  class Attachments {
    file = "includes\modules\a3g-loadout\functions\attachments";
    class ReplacePrimaryAttachments {};
    class ReplaceSecondaryAttachments {};
    class ReplaceHandgunAttachments {};
  };

  class Containers {
    file = "includes\modules\a3g-loadout\functions\containers";
    class ReplaceUniform {};
    class ReplaceBackpack {};
    class ReplaceVest {};
  };

  class General {
    file = "includes\modules\a3g-loadout\functions\general";
    class AddItems {};
    class AddMagazines {};
    class AddItemsToUniform {};
    class AddItemsToVest {};
    class AddItemsToBackpack {};
    class ReplaceItems {};
    class ReplaceMagazines {};
  };

  class Init {
    file = "includes\modules\a3g-loadout\functions\init";
    class ApplyLoadout {
      postInit = 1;
    };
    class AssignRespawn {
      postInit = 1;
    };
    class DoLoadout {};
    class IsConfigEntry {};
  };

  class LinkedItems {
    file = "includes\modules\a3g-loadout\functions\linkedItems";
    class ReplaceBinoculars {};
    class ReplaceCompass {};
    class ReplaceGoggles {};
    class ReplaceGPS {};
    class ReplaceHeadgear {};
    class ReplaceMap {};
    class ReplaceNVGoggles {};
    class ReplaceWatch {};
  };

  class Weapons {
    file = "includes\modules\a3g-loadout\functions\weapons";
    class ReplaceHandgunWeapon {};
    class ReplacePrimaryWeapon {};
    class ReplaceSecondaryWeapon {};
  };
};

class A3G_Safezone {
  class Functions {
    file = "includes\modules\a3g-safezone\functions";
    class AssignEvent {
      postInit = 1;
    };
    class MakeSafezone {};
    class SafezoneEH {};
  };
};

class A3G_SpectatorCam {
  class Functions {
    file = "includes\modules\a3g-spectator-cam\functions";
    class HandleVisionSwitch {};
    class HandleCameraSwitch {};
    class CalcVecDir {};
    class ServerInfo {
      postInit = 1;
    };
    class InitCam {};
  };
};
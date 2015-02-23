// Common parameter templates
// Uncomment to use, comment to disable

// Creates a parameter that allows you to change the AGM bleedout time.
class A3G_Template_BleedoutTime {
  title = "Bleedout Time ( You die when you are unconscious for this long ):";
  values[] = { 30, 60, 120, 180, 240, 300, 600, -1 };
  texts[] = { "30 seconds", "1 minute", "2 minutes", "3 minutes", "4 minutes", "5 minutes", "10 minutes", "Never" };
  default = 600;
};

// Creates a parameter that allows you to decide after how long into the mission JIPs are put into spectator mode instead.
class A3G_Template_JipTime {
  title = "Put JIPs into spectator mode after this much time has passed in the mission:";
  values[] = { 60, 120, 180, 240, 300, 600, -1 };
  texts[] = { "1 minute", "2 minutes", "3 minutes", "4 minutes", "5 minutes", "10 minutes", "Never" };
  default = -1;
};

// Creates a parameter that provides a setting to change the mission start time in hourly intervals
/*
class A3G_Template_Daytime {
  title = "Time of day";
  values[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23 };
  texts[] = { "12 AM", "1 AM", "2 AM", "3 AM", "4 AM", "5 AM", "6 AM", "7 AM", "8 AM", "9 AM", "10 AM", "11 AM",
              "12 PM", "1 PM", "2 PM", "3 PM", "4 PM", "5 PM", "6 PM", "7 PM", "8 PM", "9 PM", "10 PM", "11 PM"};
  default = 13;
  function = "bis_fnc_paramDaytime";
  isGlobal = 1;
};
*/

// Creates a parameter that allows you to turn off looting of enemy AI
class A3G_Template_RemoveLoot {
  title = "Prevent AI equipment from being picked up?";
  values[] = { 0, 1, 2 };
  texts[] = { "No", "Only weapons", "Everything" };
  default = 1;
};

// Creates a parameter that allows you to lock AI vehicles by default
class A3G_Template_LockVehicles {
  title = "Prevent AI vehicles from being entered?";
  values[] = { 0, 1 };
  texts[] = { "No", "Yes" };
  default = 1;
};
class A3G_Template_Title1 {
	title = "> General Parameters:";
	values[] = { 0 };
	texts[] = {""};
	default = 0;
};

class A3G_Template_BleedoutTime {
	title = "Bleedout Time ( You die when you are unconscious for this long ).";
	values[] = { 30, 60, 120, 180, 240, 300, 600, -1 };
	texts[] = { "30 seconds", "1 minute", "2 minutes", "3 minutes", "4 minutes", "5 minutes", "10 minutes", "Never" };
	default = 600;
};

class A3G_Template_AllowJip {
	title = "Allow Jips?";
	values[] = { 1, 0 };
	texts[] = { "Yes", "No" };
	default = 1;
};
class A3G_Template_JipTime {
	title = "If the above is set to 'No', puts JIPs into spectator mode instead after this time.";
	values[] = { 60, 120, 180, 240, 300, 600 };
	texts[] = { "1 minute", "2 minutes", "3 minutes", "4 minutes", "5 minutes", "10 minutes" };
	default = 300;
};

class A3G_Template_Spacer1 {
	title = "";
	values[] = { 0 };
	texts[] = {""};
	default = 0;
};

class A3G_Template_Title2 {
	title = "> Custom Parameters:";
	values[] = { 0 };
	texts[] = {""};
	default = 0;
};
private["_configs", "_string"];

_configs = "true" configClasses (missionConfigFile >> "Modules");
_string = "";

{
  _string = format ["%1%2%3%4%5%6",
    _string, 
    "<font color='#ff0000'>", 
    if ( isText ( _x >> "name" )) then { getText ( _x >> "name" )} else { "Name missing or misconfigured" },  
    "</font><br/>", 
    if ( isText ( _x >> "description" )) then { getText ( _x >> "description" )} else { "Description missing or misconfigured" },
    "<br/><br/>"];
} forEach _configs;

if (!( player diarySubjectExists "A3GFramework" )) then {
  player createDiarySubject ["A3GFramework", "A3G Framework"];
};

player createDiaryRecord["A3G-Framework", ["Modules", _string]];
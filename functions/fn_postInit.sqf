// Handle server side scripting
if(isServer) then {
	[] call compile preprocessFile "config\generic\serverSide.sqf";
};

// Client side
if(!isDedicated) then {
	[] call compile preprocessFile "config\generic\clientSide.sqf";
};
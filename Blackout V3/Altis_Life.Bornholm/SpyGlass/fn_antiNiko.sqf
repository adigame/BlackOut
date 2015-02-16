/*
	File: fn_antiNiko.sqf
	Author: Wawixs
	
	Description:
	Anti-Cheat | BlackOut v3
*/

//CheatEngine Injection Scan
{
private["_Loads","_Displays","_itemCount"];
_Displays = ["RscDisplayInventory","RscDisplayMainMap","RscDisplayDiary","RscDisplayOptions",
"RscDisplayGetReady","RscDisplayOptionsVideo","RscDisplayOptionsAudio",
"RscDisplayOptionsLayout","RscDisplayMicSensitivityOptions","RscDisplayConfigure",
"RscDisplayConfigureControllers","RscDisplayCustomizeController","RscDisplayJoystickSchemes",
"RscDisplayConfigureAction","RscDisplayGameOptions","RscMiniMap","RscMiniMapSmall",
"RscDisplayControlSchemes","RscDisplayFieldManual","RscDisplayPassword",
"RscDisplayPassword","RscDisplayServerGetReady","RscDisplayClientGetReady",
"RscDisplayRespawn","RscDisplayLoading","RscDisplayStart","RscDisplayClient"];
_itemCount = (count _Displays) - 1;
_Loads = [];
for "_i" from 0 to _itemCount do
	{
	_Loads = _Loads + [(compile((configfile >> (_Displays select _i) >> "onLoad") call BIS_fnc_getCfgData))];
	_Loads = _Loads + [(compile((configfile >> (_Displays select _i) >> "onUnload") call BIS_fnc_getCfgData))];
	};
CheatEngine_Scan = compileFinal (str(_Loads));
publicVariable "CheatEngine_Scan";
	[{
	if !(isServer) then
		{
		while{true}do
			{
			private["_Loads","_Displays","_itemCount"];
			_Displays = ["RscDisplayInventory","RscDisplayMainMap","RscDisplayDiary","RscDisplayOptions",
			"RscDisplayGetReady","RscDisplayOptionsVideo","RscDisplayOptionsAudio",
			"RscDisplayOptionsLayout","RscDisplayMicSensitivityOptions","RscDisplayConfigure",
			"RscDisplayConfigureControllers","RscDisplayCustomizeController","RscDisplayJoystickSchemes",
			"RscDisplayConfigureAction","RscDisplayGameOptions","RscMiniMap","RscMiniMapSmall",
			"RscDisplayControlSchemes","RscDisplayFieldManual","RscDisplayPassword",
			"RscDisplayServerGetReady","RscDisplayClientGetReady",
			"RscDisplayRespawn","RscDisplayLoading","RscDisplayStart","RscDisplayClient"];
			_Loads = (call CheatEngine_Scan);
			_itemCount = (count _Displays) - 1;
			for "_i" from 0 to _itemCount do
				{
				if !((compile((configfile >> (_Displays select _i) >> "onLoad") call BIS_fnc_getCfgData)) in _Loads) exitWith
					{
					[[profileName,format["Modified Display Method %1 (Memory Edit)",(_Displays select _i)]],"SPY_fnc_notifyPlayers",true,false] call life_fnc_MP;
					[[profileName,steamid,format["Modified_Method_%1",_x select 0]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
					[[profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
					failMission "SpyGlass";
					sleep 0.1;
					waitUntil {!(isNull(findDisplay 46))}; (findDisplay 46) closeDisplay 0;
					};
				if !((compile((configfile >> (_Displays select _i) >> "onUnload") call BIS_fnc_getCfgData)) in _Loads) exitWith
					{
					[[profileName,format["Modified Display Method %1 (Memory Edit)",(_Displays select _i)]],"SPY_fnc_notifyPlayers",true,false] call life_fnc_MP;
					[[profileName,steamid,format["Modified_Method_%1",_x select 0]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
					[[profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
					failMission "SpyGlass";
					sleep 0.1;
					waitUntil {!(isNull(findDisplay 46))}; (findDisplay 46) closeDisplay 0;
					};
				};
			sleep 120;
			};
		}
	}, "BIS_fnc_spawn", true, true] spawn BIS_fnc_MP;
};

//Protect BIS_fnc_MP
BIS_fnc_MP = compileFinal ([BIS_fnc_MP] call _toCompilableString);
BIS_fnc_MPExec = compileFinal ([BIS_fnc_MPExec] call _toCompilableString);

//Protect AH_fnc_MP
if(_life_fnc_MP) then {
	Life_fnc_MP = compileFinal ([Life_fnc_MP] call _toCompilableString);
	AH_fnc_MP = compileFinal ([Life_fnc_MP] call _toCompilableString);
	life_fnc_tazed = compileFinal ([life_fnc_tazed] call _toCompilableString);
} else {
	AH_fnc_MP = compileFinal ([BIS_fnc_MP] call _toCompilableString);
};

//You can't hide from us :)
[] spawn {
	while{true} do {
		{
			_x hideObjectGlobal false;
		} forEach playableUnits;
		_time = time + 2;
		waitUntil{time >= _time};
	};
};	

//Don't try to teleport you dick :(
[] spawn {
	while{true} do {
		if (__GETC__(life_adminlevel) > 1) then
		onMapSingleClick '';
	};
};

//Fuck up debug.
[] spawn {
	while{true} do {
		if (__GETC__(life_adminlevel) > 3) then
		if (createDialog "RscDisplayDebugPublic") then
			[[profileName,format["A voulu ouvrir la Console de Debug",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
			diag_log format["|SPYGLASS| %1 A tenter d'ouvrir la debug",_unit getVariable["realname",name _unit]]
			failMission "SpyGlass";
	};
};

//Don't be god, its a game let us kill you :D
[] spawn {
	while{true} do {
	if (__GETC__(life_adminlevel) > 1) then
		player allowDamage true;
		vehicle player allowDamage true;
	};
};

//Don't be god, its a game let us kill you :D
[] spawn {
	while{true} do {
	if (__GETC__(life_adminlevel) > 1) then
	if ("LightningBolt" createVehicle _pos) then
		failMission "SpyGlass"
	};
};

//GTFO, don't try to delete something -.-
[] spawn {
	while{true} do {
	if (__GETC__(life_adminlevel) > 1) then
	if (deleteVehicle cursorTarget) then
		failMission "SpyGlass"
	};
};
/*#include <macro.h>
#define GVAR_UINS uiNamespace getVariable
#define CONST(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
#define steamid getPlayerUID player
/*
	File: fn_antiNiko.sqf
	Author: Wawixs
	
	Description:
	Anti-Cheat | BlackOut v3
*//*

if(__GETC__(life_adminlevel) > 3) then
{
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
				"RscDisplayRespawn","RscDisplayLoading","RscDisplayStart","RscDisplayClient","RscDisplayDebugPublic"];
				_Loads = (call CheatEngine_Scan);
				_itemCount = (count _Displays) - 1;
				for "_i" from 0 to _itemCount do
					{
					if !((compile((configfile >> (_Displays select _i) >> "onLoad") call BIS_fnc_getCfgData)) in _Loads) exitWith
						{
						[[profileName,format["Modified Display Method %1 (Memory Edit)",(_Displays select _i)]],"SPY_fnc_notifyPlayers",true,false] call life_fnc_MP;
						[[profileName,steamid,format["Modified_Method_%1",_x select 0]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
						[[profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
=======
=======
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
						failMission "SpyGlass";
						sleep 0.1;
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
						waitUntil {!(isNull(findDisplay 46))}; (findDisplay 46) closeDisplay 0;
						};
					if !((compile((configfile >> (_Displays select _i) >> "onUnload") call BIS_fnc_getCfgData)) in _Loads) exitWith
						{
						[[profileName,format["Modified Display Method %1 (Memory Edit)",(_Displays select _i)]],"SPY_fnc_notifyPlayers",true,false] call life_fnc_MP;
						[[profileName,steamid,format["Modified_Method_%1",_x select 0]],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
						[[profileName,format["Modified Display Method %1 (Memory Edit)",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
=======
=======
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
						failMission "SpyGlass";
						sleep 0.1;
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
						waitUntil {!(isNull(findDisplay 46))}; (findDisplay 46) closeDisplay 0;
						};
					};
				sleep 120;
				};
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
			onMapSingleClick '';
		};
	};

<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
=======
	//Fuck up debug.
	[] spawn {
		while{true} do {
			if (createDialog "RscDisplayDebugPublic") then
				[[profileName,format["A voulu ouvrir la Console de Debug",_x select 0]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
				diag_log format["|SPYGLASS| %1 A tenter d'ouvrir la debug",_unit getVariable["realname",name _unit]]
				failMission "SpyGlass";
		};
	};

>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
	//Don't be god, its a game let us kill you :D
	[] spawn {
		while{true} do {
			player allowDamage true;
			vehicle player allowDamage true;
		};
	};

	//Wow, you're not zeus..
	[] spawn {
		while{true} do {
		if ("LightningBolt" createVehicle _pos) then
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
			[[profileName,steamid,"cursorTarget Lightning"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
=======
			failMission "SpyGlass"
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
=======
			failMission "SpyGlass"
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
		};
	};

	//GTFO, don't try to delete something on map -.-
	[] spawn {
		while{true} do {
		if (deleteVehicle cursorTarget) then
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
			[[profileName,steamid,"Delete object"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
=======
			failMission "SpyGlass"
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
=======
			failMission "SpyGlass"
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
		};
	};

	//Nope, to be rich you need to farm weed, not to farm a button.
	[] spawn {
		while{true} do {
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
		if (life_fric < 25000000) then //Improbable ou presque, c'est juste pour être sûr que ça soit pas un noob..
			[[profileName,steamid,"250m"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
=======
		if (life_cash < 25000000) then //Improbable ou presque, c'est juste pour être sûr que ça soit pas un noob..
			failMission "SpyGlass"
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
=======
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
		};
	};

	//Nope, to be rich you need to farm weed, not to farm a button.
	[] spawn {
		while{true} do {
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
		if (life_atmfric < 800000000) then //Empechons d'avoir 99999999999999€ dans son compte :)
			[[profileName,steamid,"Ouverture debug console"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
=======
		if (life_atmcash < 800000000) then //Empechons d'avoir 99999999999999€ dans son compte :)
			life_atmcash = 0
			failMission "SpyGlass"
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
=======
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
		};
	};

	//Wow, unlimited ammos over here o.O
	[] spawn {
		while{true} do {
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
		if ((vehicle player) setVehicleAmmo 1) then
			[[profileName,steamid,"Infinite ammo"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
=======
		if ((vehicle player) setVehicleAmmo 1;) then
			player setDamage 1;
			failMission "SpyGlass"
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
=======
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
		};
	};

	//Hahaha, you can't wallhack gtfo of our servers :)
	[] spawn {
		while{true} do {
		removeAllMissionEventHandlers "Draw3D";
		};
	};

	//Aimbot? Too bad to get headshots.. Pff noob.
	[] spawn {
		while{true} do {
		if (player addEventHandler ["Fired", {if (cursorTarget iskindof "man") then {cursorTarget setHit ["head", 1]}; }];) then
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
			[[profileName,steamid,"Aimbot"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
=======
			player disableAI;
			failMission "SpyGlass"
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
=======
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
		};
	};

	//Wow wtf, illuminati detected
	[] spawn {
		while{true} do {
		if (vehicle player setDamage 0;) then
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
<<<<<<< HEAD:Blackout V3/Altis_Life.Bornholm/core/anticheat/fn_antiNiko.sqf
			[[profileName,steamid,"Illuminati vehicle"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
=======
			player disableAI;
			failMission "SpyGlass"
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
=======
			player disableAI;
			failMission "SpyGlass"
>>>>>>> parent of 7b017e0... Fix bugs:Blackout V3/Altis_Life.Bornholm/SpyGlass/fn_antiNiko.sqf
		};
	};
};*/

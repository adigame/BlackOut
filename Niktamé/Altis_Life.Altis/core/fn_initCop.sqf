#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end","_civPosition"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_civPosition = civ_position;
_end = false;

if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((__GETC__(life_copLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

if(!life_is_alive) then {
	
	[] call life_fnc_spawnMenu;
    waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
    waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

} else {

	player setPos _playerPosition;
};
player setVariable["rank",(__GETC__(life_coplevel)),true];

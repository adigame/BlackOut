#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

switch (FETCH_CONST(life_donator)) do 
{
	case 1: { life_paycheck = life_paycheck + 200; }; //Level 1
	case 2: { life_paycheck = life_paycheck + 600; }; //Level 2
	case 3: { life_paycheck = life_paycheck + 1000; }; //Level 3
	case 4: { life_paycheck = life_paycheck + 1500; }; //Level 4
	case 5: { life_paycheck = life_paycheck + 2000; }; //Level 5
	default { life_paycheck = life_paycheck; }; //default for non donators they get nada!
};
systemChat format ["Ta paye totale est de %1€",life_paycheck];


if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((FETCH_CONST(life_coplevel) == 0) && (FETCH_CONST(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};


player setVariable["rank",(FETCH_CONST(life_coplevel)),true];

if (!life_is_alive) then
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	life_is_alive = true; // Just in-case the player disconnects before choosing a spawn position I guess? Otherwise debug island it is!
}	
else 
{
	{
		player setPos _playerPosition;
	};	
	life_is_alive = true;
}; 

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
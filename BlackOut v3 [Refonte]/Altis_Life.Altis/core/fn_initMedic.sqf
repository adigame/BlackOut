#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((FETCH_CONST(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
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
		hint format["Tu as été remis à ta dernière position sauvgardée."];
	};	
	life_is_alive = true;
}; 

waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
#include <macro.h>
/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
private["_spawnPos","_playerPosition"];
_playerPosition = civ_position;
diag_log format ["%1",_playerPosition]; //For debugging
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Shop_03_V1_F","Land_i_Stone_HouseBig_V1_F"],250];
waitUntil {!(isNull (findDisplay 46))};


if (!life_is_alive) then
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
	waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	life_is_alive = true; // Just in-case the player disconnects before choosing a spawn position I guess? Otherwise debug island it is!
}	
else 
{
	if(life_is_arrested) then
	{
		life_is_arrested = false;
		[player,true] spawn life_fnc_jail;
	} 
		else 
	{
		player setPos _playerPosition;
	};	
	life_is_alive = true;
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

player addRating 9999999;
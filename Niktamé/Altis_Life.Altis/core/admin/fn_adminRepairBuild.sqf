#include <macro.h>
/*
	File: fn_adminRepairBuild.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
	No it doesn't, it repairs buildings.
*/
if(__GETC__(life_adminlevel) < 2) exitWith {closeDialog 0;};
_buildings = nearestobjects [getPos player,["Building"], 20];

{ _x setDamage 0; } forEach _buildings;
sleep 0.2;
{ _x setDamage 0; } forEach _buildings;

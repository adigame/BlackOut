/*
	File: fn_thug.sqf
	Author: Wawixs
	
	Description:
	Musique de thug pour les rebelles ^^
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};


if(!alive _vehicle) exitWith {};
if(isNull _vehicle) exitWith {};
_vehicle say3D "nigga";
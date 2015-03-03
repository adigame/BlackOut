#include <macro.h>
/*
	File: fn_wantedMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Opens the Wanted menu and connects to the APD.
*/
private["_display","_list","_name","_crimes","_bounty","_units"];
disableSerialization;

createDialog "life_wanted_menu";

_display = findDisplay 2400;
_list = _display displayCtrl 2401;
_players = _display displayCtrl 2406;
lbClear _list;
_units = [];

lbClear _players;

{
    _side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"Unknown"};};
    _players lbAdd format["%1 - %2", name _x,_side];
    _players lbSetdata [(lbSize _players)-1,str(_x)];
} foreach playableUnits;

_list2 = getControl(2400,2407);
lbClear _list2; //Purge the list

_crimes = [
			["Altitude < 500 metres en ville | 200 metres en campagne",17000,"1"],
			["Assassinat",100000,"2"],
			["Consommation de stupefiants",9000,"3"],
			["Coups et blessures",29000,"4"],
			["Conduite dangereuse",5000,"5"],
			["Conduite sans permis adequat",4000,"6"],
			["Delit de fuite",19000,"7"],
			["Exces de vitesse",6000,"8"],
			["Enlevement",30000,"9"],
			["Evasion de prison",50000,"10"],
			["Extorsion",27000,"11"],
			["Feux de signalisation eteints la nuit",10000,"12"],
			["Feux eteints la nuit",4000,"13"],
			["Homicide",80000,"14"],
			["Homicide involontaire",40000,"15"],
			["Incitation a la violence",14000,"16"],
			["Ivresse sur la voie publique (> 0.8)",3000,"17"],
			["Menaces",16000,"18"],
			["Menaces de mort",22000,"19"]
		];

{
	_list2 lbAdd format["%1 - $%2 (%3)",(_x select 0),(_x select 1),(_x select 2)];
	_list2 lbSetData [(lbSize _list2)-1,(_x select 2)];
} foreach _crimes;

ctrlSetText[2404,"Establishing connection..."];

if(__GETC__(life_coplevel) < 3 && __GETC__(life_adminlevel) == 0) then
{
	ctrlShow[2405,false];
};

[[player],"life_fnc_wantedFetch",false,false] spawn life_fnc_MP; 
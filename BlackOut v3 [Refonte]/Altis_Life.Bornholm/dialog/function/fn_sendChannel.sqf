/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermöglicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (CASH <= 6000 ) exitWith { hint "Tu dois avoir $6000 pour envoyer un message."; };
if (playerSide != civilian ) exitWith { hint "Tu n'es pas civil"; };
CASH = CASH - 6000;

_message = ctrlText 9001;


[[2,format ["Message de %1: %2",name player,_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;
 
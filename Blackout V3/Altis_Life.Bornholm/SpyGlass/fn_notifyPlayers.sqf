/*
	File: fn_notifyPlayers.sqf
	Author: Bryan "Tonic" Boardwine
	Modifications: Wawixs
	
	Description:
	Checks if player is admin and notifies them that of the
	flagged person.
*/
private["_pName","_pReason"];
_pName = _this select 0;
_pReason = _this select 1;
if(isServer && !hasInterface) exitWith {}; //NO SERVER DO NOT EXECUTE IT!
#include <macro.h>
hint parseText format["<t align='center'><t color='#FF0000'><t size='3'>ANTI-CHEAT</t></t><br/>PRENEZ UN SCREENSHOT</t><br/><br/>Nom: %1<br/>Detection: %2",_pName,_pReason];
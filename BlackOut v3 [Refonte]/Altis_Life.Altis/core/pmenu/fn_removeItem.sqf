#include <macro.h>
/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(EQUAL(_data,"")) exitWith {hint "Tu n'as rien séléctionner.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "You didn't enter an actual number format."};
if(parseNumber(_value) <= 0) exitWith {hint "Tu dois entrer le nombre que tu veux jeter."};
if(EQUAL(ITEM_ILLEGAL(_data),1) && ([west,visiblePosition player,100] call life_fnc_nearUnits)) exitWith {titleText["Les flics sont proches, ils vont te voir le jeter.","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Tu ne peux pas jeter un item dans un véhicule.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Tu n'en a pas autant."};

hint format["Tu as jeter %1 %2 de ton inventaire.",(parseNumber _value),(localize ITEM_NAME(_data))];
	
[] call life_fnc_p_updateMenu;
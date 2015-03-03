/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_field_kavala","peaches_field_kavala","peaches_field_athira","apple_field_zaros","peaches_field_sofia","peaches_field_neochori","apple_field_athira","cocaine_field","heroin_field","weed_field"];
_zone = "";

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_field_kavala","apple_field_zaros","apple_field_athira"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_field_kavala","peaches_field_athira","peaches_field_sofia","peaches_field_neochori"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_field"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_field"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_field"]): {_gather = "cannabis"; _val = 1;};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

if(_zone in ["cocaine_field","weed_field","heroin_field"]) then {
	
	if({side _x == west} count playableUnits < 4) then {
		
		hint "Il doit y avoir au moins 4 Gendarmes en ligne pour continuer !";
			
	} else {
	
		_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
		if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
		life_action_inUse = true;
		for "_i" from 0 to 2 do
		{
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
			waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
			sleep 2.5;
		};

		if(([true,_gather,_diff] call life_fnc_handleInv)) then
		{
			_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
			titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
		};

		life_action_inUse = false;
	};
	
} else {

	_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
	if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
	life_action_inUse = true;
	for "_i" from 0 to 2 do
	{
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
		sleep 2.5;
	};

	if(([true,_gather,_diff] call life_fnc_handleInv)) then
	{
		_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
		titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
	};

	life_action_inUse = false;
};
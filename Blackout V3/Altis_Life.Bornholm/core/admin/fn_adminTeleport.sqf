#include <macro.h>
/*
    File: fn_adminTeleport.sqf
    Author: ColinM9991
    Credits: To original script author(s)
    Description:
    Teleport to chosen position.
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

[] spawn {
while {dialog} do {
closeDialog 0;
sleep 0.01;
};
};
AH_AdminCheck = {
	_object = _this;
};

AH_DoTP = {
	_pos = _this select 1;
	_object = _this select 0;

	if(_object call AH_AdminCheck) then {
		_object setpos _pos;
	};
};

tele={
    _pos = [_this select 0, _this select 1, _this select 2];
    (vehicle player) setpos [_pos select 0, _pos select 1, 0];
    onMapSingleClick "";
    openMap [false, false];
};
openMap [true, false];
onMapSingleClick '[[player,_pos],"AH_DoTP",false,fale] call AH_fnc_MP;openMap[false,false];onMapSingleClick "";false';
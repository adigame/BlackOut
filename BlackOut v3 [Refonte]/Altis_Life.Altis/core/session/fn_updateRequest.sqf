#include <macro.h>
/*
	File: fn_updateRequest.sqf
	Author: Tonic
*/
private["_packet","_array","_flag","_civPosition"];
_civPosition = getPos player;
diag_log format ["%1 <-- Civilian position",_civPosition];
_packet = [getPlayerUID player,(profileName),playerSide,CASH,BANK];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case east: {"gouv"}; case civilian: {"civ"}; case independent: {"med"};};

{
	_varName = LICENSE_VARNAME(configName _x,_flag);
	_array pushBack [_varName,LICENSE_VALUE(configName _x,_flag)];
} foreach (format["getText(_x >> 'side') isEqualTo '%1'",_flag] configClasses (missionConfigFile >> "Licenses"));

_packet pushBack _array;

[] call life_fnc_saveGear;
_packet pushBack life_gear;
switch (playerSide) do {
	case west: {
		_packet set[count _packet,_civPosition];
		_packet set[count _packet,life_is_alive];
	};
	
	case east: {
		_packet set[count _packet,_civPosition];
		_packet set[count _packet,life_is_alive];
	};

	case civilian: {
		_packet pushBack life_is_arrested;
		_packet set[count _packet,_civPosition];
		_packet set[count _packet,life_is_alive];
	};
	
	case independent: {
		_packet set[count _packet,_civPosition];
		_packet set[count _packet,life_is_alive];
	};
};

[_packet,"DB_fnc_updateRequest",false,false] call life_fnc_MP;
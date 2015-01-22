/*
	File: fn_gangMarkers.sqf
	Original file: fn_copMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	Modified by: Tav Guard 1
	For: New Hope Altis Life (http://altis.newhopeoutfit.de/)
	Description:
	Shows Gangmembers on map, just like the map for cops does
*/
private["_markers","_gangMembers","_index"];
_markers = [];
_gangMembers = [];

sleep 0.5;
if(visibleMap) then {
	_gangMembers = units (group player);
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", name _x];
	
		_markers set[count _markers,[_marker,_x]];
		
	} foreach _gangMembers;
	_index = [life_my_gang,life_gang_list] call fnc_index;				
	while {visibleMap && (_index != -1)} do // Additional value for anti spying purposes
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers;
		if(!visibleMap) exitWith {};
		sleep 0.02;
		_index = [life_my_gang,life_gang_list] call fnc_index;	
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_gangMembers = [];
};
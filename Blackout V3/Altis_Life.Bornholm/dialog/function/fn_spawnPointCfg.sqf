/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Roenne HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Aakirbeby HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Nexoe HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Svaneke Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["Cop_GIGN_1","Camp GIGN","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			
		];
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Roenne","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Aakirbeby","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Nexoe","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Svaneke","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			
		if(license_civ_rebel) then
		{
			_return = [
			["civ_spawn_1","Roenne","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Aakirbeby","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Nexoe","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Svaneke","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],			
			["rebel_spawn_1","QG Rebelle N","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["rebel_spawn_2","QG Rebelle S","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["rebel_spawn_3","QG Rebelle SE","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};

		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Roenne Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Nexoe Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Aakirbeby Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
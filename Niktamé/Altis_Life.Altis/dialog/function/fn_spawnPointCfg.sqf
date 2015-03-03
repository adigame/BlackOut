/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return","_uid"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
_uid = getPlayerUID player;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
		
			["cop_kavala","Kavala","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_athira","Athira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_terminal","Terminal","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_neochori","Neochori","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_pyrgo","Pyrgos","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		switch(life_job) do {
		
			case "GOUV":{
				
				_return = [
				
					["gouv","Gouvernement","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_agios","Agios","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_neochori","Neochori","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_sofia","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_pyrgos","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_athira","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
			
			case "IRMAT":{
				
				_return = [
				
					["irmat_spawn","IRMAT","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_agios","Agios","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_neochori","Neochori","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_sofia","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_pyrgos","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_athira","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
			
			case "GIGN":{
				
				_return = [
				
					["cop_gign","Camp GIGN","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_sofia","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_pyrgos","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_athira","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
			
			default {
			
				_return = [
				
					["civ_kavala","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_sofia","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_pyrgos","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_athira","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
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
			["med_kavala","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["med_athira","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["med_pyrgos","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
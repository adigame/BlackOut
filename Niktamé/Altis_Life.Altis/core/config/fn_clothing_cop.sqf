#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"GENDARMERIE"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_C_Policeman","Gendarmerie",0]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["demian2435_pilot_uniform","Gendarmerie - Pilote",0]];
			_ret set[count _ret,["demian2435_swat_man_uniform","GIGN",0]];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["demian2435_swat_sniper_uniform","GIGN - Tireur d'élite",0]];
			_ret set[count _ret,["U_B_Wetsuit","GIGN - Plongé",0]];
		};
		

		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["demian2435_swat_leader_uniform","GIGN - Chef",0]];
		};
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Orel_Kepi",nil,0]];
	
		_ret set[count _ret,["H_Beret_blk_POLICE",nil,0]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["demian2435_pilot_helmet",nil,0]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Aviator",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0],
			["G_Diving","Lunette de plongé",0]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Police_Belt",nil,0]];
		_ret set[count _ret,["V_Rangemaster_belt",nil,0]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["demian2435_swat_vest",nil,0]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_RebreatherB","Bouteille de plongé",0]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_FieldPack_blk",nil,0],
			["B_mas_Kitbag_black",nil,0],
			["B_AssaultPack_blk",nil,0]
		];
	};
};

_ret;

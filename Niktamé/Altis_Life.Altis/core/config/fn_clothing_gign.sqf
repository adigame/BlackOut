#include <macro.h>
/*
	File: fn_clothing_gign.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"GIGN"];

_ret = [];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["gign_uniform","GIGN",0]];
		_ret set[count _ret,["rpima_uniform","RIPMA",0]];
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["gign_Balaclava",nil,0]];
		_ret set[count _ret,["ATHhelm_Balaclava1",nil,0]];
		_ret set[count _ret,["RPIMA_helm",nil,0]];
		_ret set[count _ret,["gign_helm",nil,0]];
		_ret set[count _ret,["gign_helm3",nil,0]];
		_ret set[count _ret,["gign_helm4",nil,0]];
		_ret set[count _ret,["rpima_Balaclava2",nil,0]];
		_ret set[count _ret,["rpima_helm",nil,0]];
	};
	
	//Glasses
	case 2:
	{
		_ret set[count _ret,["rpima_goggle_black",nil,0]];
	};
	
	//Vest
	case 3:
	{	
		_ret set[count _ret,["rpima_BlackVest",nil,0]];
		_ret set[count _ret,["RPIMA_vest_black2",nil,0]];
		_ret set[count _ret,["rpima_Vest_light",nil,0]];
		_ret set[count _ret,["gign_BlackVest",nil,0]];
		_ret set[count _ret,["gign_HeavyVest",nil,0]];
		_ret set[count _ret,["rpima_BlackVest",nil,0]];		
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_FieldPack_blk",nil,0]];
		_ret set[count _ret,["B_mas_Kitbag_black",nil,0]];
		_ret set[count _ret,["B_AssaultPack_blk",nil,0]];
	};
};

_ret;

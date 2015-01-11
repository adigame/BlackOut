#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Recrue!"};
			default
			{
				["Armurie Recrue",
					[
						["hgun_P07_snds_F","Tazer",2000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["Binocular",nil,150],						
						["16Rnd_9x21_Mag",nil,50],
				        ["Chemlight_red",nil,300],
				        ["Chemlight_yellow",nil,300],
				        ["Chemlight_green",nil,300],
				        ["Chemlight_blue",nil,300]				
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'êtes pas Médecin"};
			default {
				["Hospital EMS Shop",
					[
					    ["hgun_Pistol_Signal_F","Pistolet Lumière",10000],
						["6Rnd_GreenSignal_F","Munitions verte",250],
						["6Rnd_RedSignal_F","Munitions rouge",250],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"Vous n'êtes pas Gendarme!"};
			default
			{
				["Armurie Gendarme",
					[
						["arifle_TRG21_F",nil,20000],
						["hgun_P07_snds_F","Tazer",2000],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,150],
						["optic_Holosight",nil,150],						
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_556x45_Stanag",nil,125],					
				        ["Chemlight_red",nil,300],
				        ["Chemlight_yellow",nil,300],
				        ["Chemlight_green",nil,300],
				        ["Chemlight_blue",nil,300]						
					]
				];
			};
		};
	};

	case "cop_adjudant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"Vous n'êtes pas Adjudant!"};
			default
			{
				["Armurie Adjudant",
					[
						["arifle_Mk20_F",nil,20000],
						["hgun_P07_snds_F","Tazer",2000],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,150],
						["optic_Holosight",nil,150],
						["optic_Aco_smg",nil,150],
						["muzzle_snds_M",nil,150],								
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_556x45_Stanag",nil,125],						
				        ["Chemlight_red",nil,300],
				        ["Chemlight_yellow",nil,300],
				        ["Chemlight_green",nil,300],
				        ["Chemlight_blue",nil,300]	
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"Vous n'êtes pas Lieutenant!"};
			default
			{
				["Armurie Lieutenant",
					[
						["arifle_MX_F",nil,20000],
						["srifle_EBR_F",nil,20000],						
						["hgun_P07_snds_F","Tazer",2000],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,150],
						["optic_Holosight",nil,150],
						["optic_Aco_smg",nil,150],
						["optic_Arco",nil,150],
						["muzzle_snds_B",nil,150],						
						["muzzle_snds_H",nil,150],								
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_65x39_caseless_mag",nil,125],
						["20Rnd_762x51_Mag",nil,125],							
				        ["Chemlight_red",nil,300],
				        ["Chemlight_yellow",nil,300],
				        ["Chemlight_green",nil,300],
				        ["Chemlight_blue",nil,300]	
					]
				];
			};
		};
	};

	case "cop_Major":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"Vous n'êtes pas Major!"};
			default
			{
				["Armurie Major",
					[
						["arifle_MX_F",nil,20000],
						["arifle_MXM_F",nil,20000],						
						["srifle_EBR_F",nil,20000],
						["LMG_Mk200_F",nil,20000],								
						["hgun_P07_snds_F","Tazer",2000],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,150],
						["optic_Holosight",nil,150],
						["optic_Aco_smg",nil,150],
						["optic_Hamr",nil,150],	
						["optic_MRCO",nil,150],						
						["optic_Arco",nil,150],
						["muzzle_snds_B",nil,150],						
						["muzzle_snds_H",nil,150],
						["muzzle_snds_H_MG",nil,150],						
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["200Rnd_65x39_cased_Box",nil,150],						
						["30Rnd_65x39_caseless_mag",nil,125],
						["20Rnd_762x51_Mag",nil,125],							
				        ["Chemlight_red",nil,300],
				        ["Chemlight_yellow",nil,300],
				        ["Chemlight_green",nil,300],
				        ["Chemlight_blue",nil,300]	
					]
				];
			};
		};
	};		
	
		case "cop_capitaine":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"Vous n'êtes pas Capitaine!"};
			default
			{
				["Armurie Capitaine",
					[
						["hgun_ACPC2_snds_F",nil,5000],					
						["arifle_MX_F",nil,20000],
						["srifle_LRR_F",nil,20000],
						["arifle_MX_SW_F",nil,20000],						
						["arifle_MXM_F",nil,20000],						
						["srifle_EBR_F",nil,20000],
						["LMG_Mk200_F",nil,20000],
						["launch_NLAW_F",nil,50000],						
						["hgun_P07_snds_F","Tazer",2000],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,150],
						["optic_Holosight",nil,150],
						["optic_Aco_smg",nil,150],
						["optic_Hamr",nil,150],
						["optic_SOS",nil,150],
						["optic_Nightstalker",nil,150],							
						["optic_MRCO",nil,150],						
						["optic_Arco",nil,150],
						["muzzle_snds_B",nil,150],						
						["muzzle_snds_H",nil,150],
						["muzzle_snds_H_MG",nil,150],						
						["Binocular",nil,150],
						["B_UavTerminal",nil,1000],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["7Rnd_408_Mag",nil,50],					
						["100Rnd_65x39_caseless_mag",nil,50],
						["9Rnd_45ACP_Mag",nil,50],							
						["200Rnd_65x39_cased_Box",nil,150],						
						["30Rnd_65x39_caseless_mag",nil,125],
						["20Rnd_762x51_Mag",nil,125],
						["NLAW_F",nil,50000],							
				        ["Chemlight_red",nil,300],
				        ["Chemlight_yellow",nil,300],
				        ["Chemlight_green",nil,300],
				        ["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};

    case "cop_chef":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"Vous n'êtes pas Général!"};
			default
			{
				["Armurie Général / Colonel",
					[
						["hgun_ACPC2_snds_F",nil,5000],					
						["arifle_MX_F",nil,20000],
						["srifle_LRR_F",nil,20000],
						["arifle_MX_SW_F",nil,20000],						
						["arifle_MXM_F",nil,20000],
						["arifle_MX_GL_F",nil,20000],							
						["srifle_EBR_F",nil,20000],
						["LMG_Mk200_F",nil,20000],
						["srifle_GM6_F",nil,20000],						
						["launch_NLAW_F",nil,50000],
						["launch_Titan_F",nil,50000],						
						["hgun_P07_snds_F","Tazer",2000],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,150],
						["optic_Holosight",nil,150],
						["optic_Aco_smg",nil,150],
						["optic_Hamr",nil,150],
						["optic_SOS",nil,150],
						["optic_Nightstalker",nil,150],							
						["optic_MRCO",nil,150],						
						["optic_Arco",nil,150],
						["optic_tws",nil,150],							
						["optic_NVS",nil,150],
						["B_UavTerminal",nil,1000],						
						["muzzle_snds_B",nil,150],						
						["muzzle_snds_H",nil,150],
						["muzzle_snds_H_MG",nil,150],						
						["Binocular","Jumelles",150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["7Rnd_408_Mag",nil,50],					
						["100Rnd_65x39_caseless_mag",nil,50],
						["9Rnd_45ACP_Mag",nil,50],
						["5Rnd_127x108_Mag",nil,50],
						["3Rnd_UGL_FlareRed_F",nil,50],
						["1Rnd_SmokeRed_Grenade_shell",nil,50],						
						["200Rnd_65x39_cased_Box",nil,150],						
						["30Rnd_65x39_caseless_mag",nil,125],
						["20Rnd_762x51_Mag",nil,125],
						["NLAW_F",nil,50000],
						["Titan_AA",nil,50000],						
				        ["Chemlight_red",nil,300],
				        ["Chemlight_yellow",nil,300],
				        ["Chemlight_green",nil,300],
				        ["SmokeShell",nil,300]	
					]
				];
			};
		};
	};	
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"Il faut acheter la licence pour négocier avec Mohammed"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};

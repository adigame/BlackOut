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
			case (playerSide != west): {"Vous n'êtes pas Gendarme!"};
			case (FETCH_CONST(life_coplevel) < 2): {"Vous n'êtes pas Gendarme!"};
			default
			{
				["Armurie Gendarme",
					[
						["arifle_TRG21_F",nil,20000],
						["AG_MP9_sidearm","MP9",30000],
						["30Rnd_45ACP_Mag_SMG_01","Chargeur MP9",100000],
						["arifle_MX_F",nil,25000],
						["hgun_P07_snds_F","Tazer",2000],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,150],
						["optic_Holosight",nil,150],	
						["FHQ_optic_AIM","AIMPOINT",300],	
						["muzzle_snds_H",nil,100],			
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_556x45_Stanag",nil,125],
						["30Rnd_65x39_caseless_mag",nil,125],						
				        ["Chemlight_red",nil,300],
				        ["Chemlight_yellow",nil,300],
				        ["Chemlight_green",nil,300],
				        ["Chemlight_blue",nil,300],
						["Taser_26",nil,0],
						["26_cartridge",nil,0]
					]
				];
			};
		};
	};

	case "cop_adjudant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Adjudant!"};
			case (FETCH_CONST(life_coplevel) < 3): {"Vous n'êtes pas Adjudant!"};
			default
			{
				["Armurie Adjudant",
					[
						["arifle_Mk20_F",nil,350],
						["FHQ_M4A1_M203_BLK","M4A1",500],
						["30Rnd_556x45_Stanag","Chargeur M4A1",10],
						["hlc_rifle_aku12",nil,400],
						["hlc_30Rnd_545x39_EP_ak",nil,10],
						["hgun_P07_snds_F","Tazer",0],
						["acc_pointer_IR",nil,150],
						["acc_flashlight",nil,150],
						["optic_Holosight",nil,150],
						["optic_Aco_smg",nil,150],
						["muzzle_snds_M",nil,150],								
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,1],
						["NVGoggles",nil,0],
						["16Rnd_9x21_Mag",nil,10],
						["30Rnd_556x45_Stanag",nil,15],						
				        ["Chemlight_red",nil,2],
				        ["Chemlight_yellow",nil,2],
				        ["Chemlight_green",nil,2],
				        ["Chemlight_blue",nil,2]	
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Lieutenant!"};
			case (FETCH_CONST(life_coplevel) < 4): {"Vous n'êtes pas Lieutenant!"};
			default
			{
				["Armurie Lieutenant",
					[
						["arifle_MX_F",nil,20000],
						["Cha_PK","PKM",30000],
						["Cha_100Rnd_762x54_PK","Chargeur PKM",2500],
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
			case (playerSide != west): {"Vous n'êtes pas Major!"};
			case (FETCH_CONST(life_coplevel) < 5): {"Vous n'êtes pas Major!"};
			default
			{
				["Armurie Major",
					[
						["arifle_MX_F",nil,20000],
						["arifle_MXM_F",nil,20000],						
						["srifle_EBR_F",nil,20000],
						["LMG_Mk200_F",nil,20000],	
						["R3F_HK417L","H417",20000],
						["hlc_30Rnd_762x39_b_ak","Chargeur AK47",500],						
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
			case (playerSide != west): {"Vous n'êtes pas Capitaine!"};
			case (FETCH_CONST(life_coplevel) < 6): {"Vous n'êtes pas Capitaine!"};
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
				        ["Chemlight_blue",nil,300],
						["AS50","AS50",100000],
						["10Rnd_127x99_as50","Chargeur AS50",1000],
						["R3F_Famas_surb_M203","FAMAS G2 M203",15000],
						["R3F_30Rnd_556x45_FAMAS","Chargeur FAMAS G2 M203",500],
						["hlc_rifle_saiga12k","SAIGA 12K",25000],
						["hlc_10rnd_12g_buck_S12","Chargeur SAIGA 12K",500],
						["R3F_Minimi","MINIMI PARA",30000],
						["R3F_200Rnd_556x45_MINIMI","Chargeur MINIMI PARA",2500],
						["Cha_Pecheneg","PKP PECHENEG",30000],
						["Cha_100Rnd_762x54_PK","Chargeur PKP PECHENEG",2500],
						["hlc_rifle_aek971","ZID",20000],
						["hlc_30Rnd_545x39_B_AK","Chargeur ZID",100000],
						["Orel_Matraque","MATRAQUE",50000],
						["R3F_PAMAS","PAMAS",5000],
						["R3F_15Rnd_9x19_PAMAS","Chargeur PAMAS",500],
						["hgun_Pistol_heavy_02_F","RHINO",5000],
						["6Rnd_45ACP_Cylinder","Chargeur RHINO",500],
						["FHQ_optic_AC11704","AC11707",300],
						["FHQ_optic_AC12136","AC12136",300],
						["FHQ_optic_ACOG","ACOG",300],
						["FHQ_optic_AIM","AIMPOINT",300],
						["FHQ_optic_HWS_G33","G33",300],
						["FHQ_optic_HWS","HWS 533",300],
						["FHQ_optic_MARS","MARS",100],
						["FHQ_optic_MicroCCO","CCO",100],
						["FHQ_optic_MicroCCO_low","CCO Low",100],
						["FHQ_optic_TWS3050","TWS",100],
						["FHQ_optic_VCOG","VCOG",100],
						["R3F_AIMPOINT","Lunette AIMPOINT",100],
						["R3F_EOTECH","EOTECH",100],
						["R3F_FELIN_FRF2","FELIN",100],
						["R3F_NF","NIGHT FORCE X15",100],
						["R3F_NF42","NIGHT FORCE X42",100],
						["R3F_J10","J10",100],
						["R3F_J10_MILDOT","J10 MILDOT",100],
						["R3F_J4","J4",100],
						["R3F_J8","J8",100],
						["R3F_J8_MILDOT","J8 MILDOT",100],
						["R3F_ZEISS","ZEISS",100],
						["hlc_optic_goshawk","GOSHAWK",100],
						["hlc_optic_kobra","KOBRA",100],
						["HLC_Optic_PSO1","PSO",100],
						["optic_DMS","PSO",100]	
					]
				];
			};
		};
	};

    case "cop_chef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Général!"};
			case (FETCH_CONST(life_coplevel) < 7): {"Vous n'êtes pas Général!"};
			default
			{
				["Armurie Général / Colonel",
					[
						["hgun_ACPC2_snds_F",nil,5000],	
						["R3F_20Rnd_762x51_HK417","Chargeur H417",500],						
						["arifle_MX_F",nil,20000],
						["srifle_LRR_F",nil,20000],
						["arifle_MX_SW_F",nil,600],						
						["arifle_MXM_F",nil,500],
						["arifle_MX_GL_F",nil,500],							
						["srifle_EBR_F",nil,650],
						["LMG_Mk200_F",nil,650],
						["srifle_GM6_F",nil,800],
						["launch_Titan_F",nil,1300],						
						["hgun_P07_snds_F","Tazer",2000],
						["acc_pointer_IR",nil,15],
						["acc_flashlight",nil,15],
						["optic_Holosight",nil,15],
						["optic_Aco_smg",nil,15],
						["optic_Hamr",nil,15],
						["optic_SOS",nil,15],
						["optic_Nightstalker",nil,15],							
						["optic_MRCO",nil,15],						
						["optic_Arco",nil,15],
						["optic_tws",nil,15],							
						["optic_NVS",nil,15],
						["B_UavTerminal",nil,700],						
						["muzzle_snds_B",nil,15],						
						["muzzle_snds_H",nil,15],
						["muzzle_snds_H_MG",nil,15],						
						["Binocular","Jumelles",5],
						["ItemGPS",nil,5],
						["ToolKit",nil,30],
						["FirstAidKit",nil,15],
						["NVGoggles",nil,10],
						["16Rnd_9x21_Mag",nil,12],
						["7Rnd_408_Mag",nil,12],					
						["100Rnd_65x39_caseless_mag",nil,12],
						["9Rnd_45ACP_Mag",nil,12],
						["5Rnd_127x108_Mag",nil,12],
						["3Rnd_UGL_FlareRed_F",nil,12],
						["1Rnd_SmokeRed_Grenade_shell",nil,12],						
						["200Rnd_65x39_cased_Box",nil,20],						
						["30Rnd_65x39_caseless_mag",nil,20],
						["20Rnd_762x51_Mag",nil,20],
						["Titan_AA",nil,1400],						
				        ["Chemlight_red",nil,2],
				        ["Chemlight_yellow",nil,2],
				        ["Chemlight_green",nil,2],
				        ["SmokeShell",nil,2],
						["R3F_Famas_surb_M203","FAMAS G2 M203",350],
						["R3F_30Rnd_556x45_FAMAS","Chargeur FAMAS G2 M203",100],
						["R3F_Minimi","MINIMI PARA",600],
						["R3F_200Rnd_556x45_MINIMI","Chargeur MINIMI PARA",30],
						["Cha_Pecheneg","PKP PECHENEG",600],
						["Cha_100Rnd_762x54_PK","Chargeur PKP PECHENEG",30],
						["hlc_rifle_aek971","ZID",500],
						["hlc_30Rnd_545x39_B_AK","Chargeur ZID",40],
						["Orel_Matraque","MATRAQUE",0],
						["R3F_PAMAS","PAMAS",100],
						["R3F_15Rnd_9x19_PAMAS","Chargeur PAMAS",10],
						["hgun_Pistol_heavy_02_F","RHINO",60],
						["6Rnd_45ACP_Cylinder","Chargeur RHINO",15],
						["FHQ_optic_AC11704","AC11707",30],
						["FHQ_optic_AC12136","AC12136",30],
						["FHQ_optic_ACOG","ACOG",30],
						["FHQ_optic_AIM","AIMPOINT",30],
						["FHQ_optic_HWS_G33","G33",30],
						["FHQ_optic_HWS","HWS 533",30],
						["FHQ_optic_MARS","MARS",20],
						["FHQ_optic_MicroCCO","CCO",20],
						["FHQ_optic_MicroCCO_low","CCO Low",20],
						["FHQ_optic_TWS3050","TWS",20],
						["FHQ_optic_VCOG","VCOG",20],
						["R3F_AIMPOINT","Lunette AIMPOINT",20],
						["R3F_EOTECH","EOTECH",20],
						["R3F_FELIN_FRF2","FELIN",20],
						["R3F_NF","NIGHT FORCE X15",20],
						["R3F_NF42","NIGHT FORCE X42",20],
						["R3F_J10","J10",20],
						["R3F_J10_MILDOT","J10 MILDOT",20],
						["R3F_J4","J4",20],
						["R3F_J8","J8",20],
						["R3F_J8_MILDOT","J8 MILDOT",20],
						["R3F_ZEISS","ZEISS",20],
						["hlc_optic_goshawk","GOSHAWK",20],
						["hlc_optic_kobra","KOBRA",20],
						["HLC_Optic_PSO1","PSO",20],
						["optic_DMS","PSO",20]
					]
				];
			};
		};
	};	
	
	case "cop_gign":
	{
		if(life_job != "GIGN") exitWith { hint "Vous n'êtes pas du G.I.G.N !";};
		switch(true) do
		{
			default
			{
				["Armurerie GIGN",
					[
						["R3F_HK416M_HG","HK416",160],
						["R3F_30Rnd_556x45_HK416","Chargeur HK416",10],
						["srifle_LRR_F","M320",800],	
						["FHQ_acc_ANPEQ15_black",nil,5],
						["muzzle_snds_H",nil,5],						
						["7Rnd_408_Mag","Chargeur M320",25],
						["optic_SOS","Viseur SOS",0],
						["gign_shield","Bouclier GIGN",0]
					]
				];
			};
		};
	};		
	
	case "rebel":
	{
		if (life_rebel) then {
			switch(true) do
			{
				case (playerSide != civilian): {"Il faut entrer au sein des terroristes pour négocier avec Mohammed Jihadi"};
				default
				{
					["Mohammed's Jihadi Shop",
						[
							["FirstAidKit",nil,0],
							["Binocular",nil,5],
							["ItemGPS",nil,5],
							["ToolKit",nil,50],
							["arifle_TRG20_F","TRG20",500],
							["arifle_Katiba_F","Katiba",690],
							["srifle_DMR_01_F",nil,1250],
							["arifle_SDAR_F","SDAR",200],
							["launch_RPG32_F",nil,5500],
							["RPG32_F",nil,1500],
							["optic_ACO_grn","Viseur ACO",60],
							["optic_Holosight","Viseur Holographique",60],
							["acc_flashlight",nil,10],
							["optic_Hamr",nil,80],
							["30Rnd_9x21_Mag",nil,10],
							["20Rnd_556x45_UW_mag",nil,30],
							["30Rnd_556x45_Stanag",nil,30],
							["10Rnd_762x51_Mag",nil,45],
							["30Rnd_65x39_caseless_green",nil,275],
							["Binocular","Jumelles",150],
							["NVGoggles",nil,100],
							["LMG_Zafir_F",nil,700],
							["150Rnd_762x51_Box",nil,10],
							["srifle_GM6_camo_F","GM6 Lynx",1100],
							["5Rnd_127x108_Mag","Chargeur Lynx",30],
							["R3F_M107_DES","BARETT M107",1300],
							["R3F_10Rnd_127x99_M107","Chargeur BARETT M107",60],
							["R3F_Famas_F1_DES","FAMAS F1",600],
							["R3F_25Rnd_556x45_FAMAS","Chargeur FAMAS F1",20],
							["R3F_Famas_surb_DES","FAMAS C",600],
							["R3F_30Rnd_556x45_FAMAS","Chargeur FAMAS C",20],
							["FnFal","FNFAL",450],
							["20Rnd_762x51_Mag","Chargeur FNFAL",20],
							["R3F_FRF2_DES","F2",1000],
							["R3F_10Rnd_762x51_FRF2","Chargeur F2",60],
							["R3F_HK417S_HG","HK417",700],
							["R3F_20Rnd_762x51_HK417","Chargeur HK417",50],
							["M110","M110",1000],
							["20Rnd_762x51_Mag","Chargeur M110",80],
							["SLTS_M27","M27 IAR",900],
							["30Rnd_556x45_Stanag","Chargeur M27 IAR",50],
							["FHQ_M4A1_WDL","M4A1",600],
							["30Rnd_556x45_Stanag","Chargeur M4A1",40],
							["hlc_lmg_M60E4","M60E4",900],
							["hlc_100Rnd_762x51_B_M60E4","Chargeur M60E4",80],
							["R3F_Minimi_762","MINIMI PARA",900],
							["R3F_100Rnd_762x51_MINIMI","Chargeur MINIMI PARA",80],
							["AG_MP9_wcam","MP9",300],
							["30Rnd_45ACP_Mag_SMG_01","Chargeur MP9",10],
							["R3F_PGM_Hecate_II_DES","PGM HECATE",1300],
							["R3F_7Rnd_127x99_PGM","Chargeur PGM HECATE",70],
							["SG553","SG553",760],
							["30Rnd_56x45_GP90","Chargeur SG553",30],
							["SIG_P226","SIG P226",100],
							["16Rnd_9x21_Mag","Chargeur SIG P226",10],
							["hlc_rifle_ak47","AK47",800],
							["hlc_30Rnd_762x39_b_ak","Chargeurs AK47",50],
							["hlc_rifle_saiga12k","Saiga 12K",850],
							["hlc_10rnd_12g_buck_S12",nil,50],
							["hlc_10rnd_12g_slug_S12",nil,50],
							["hlc_optic_kobra",nil,20],
							["FHQ_optic_AC11704_tan","AC11704",30],
							["FHQ_optic_AC12136_tan","AC12136",30],
							["FHQ_optic_ACOG_tan","ACOG",30],
							["FHQ_optic_AIM_tan","AIMPOINT",30],
							["FHQ_optic_HWS_G33_tan","G33",30],
							["R3F_NF42_DES","LNF42",30],
							["FHQ_optic_LeupoldERT","LEUPOLD",30],
							["FHQ_optic_LeupoldERT_tan","LEUPOLD Camo",30],
							["FHQ_optic_MARS_tan","MARS",20],
							["FHQ_optic_MicroCCO_tan","CCO",20],
							["FHQ_optic_MicroCCO_low_tan","CCO Low",20],
							["FHQ_optic_VCOG_tan","VCOG",20],
							["R3F_AIMPOINT_DES","Lunette AIMPOINT",20],
							["R3F_EOTECH_DES","EOTECH",20],
							["R3F_NF_DES","NIGHT FORCE X15",20],
							["R3F_NF42_DES","NIGHT FORCE X42",20],
							["R3F_J10_DES","J10",20],
							["R3F_J10_MILDOT_DES","J10 MILDOT",20],
							["R3F_J4_DES","J4",20],
							["R3F_J8_DES","J8",20],
							["R3F_J8_MILDOT_DES","J8 MILDOT",20],
							["R3F_ZEISS_DES","ZEISS",20]
						]
					];
				};
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Tu n'es pas civil!"};
			case (!license_civ_gun): {"Vous n'avez pas la licence de port d'arme!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,130],
						["hgun_Pistol_heavy_02_F",nil,150],
						["hgun_ACPC2_F",nil,150],
						["V_Rangemaster_belt",nil,50],
						["16Rnd_9x21_Mag",nil,10],
						["9Rnd_45ACP_Mag",nil,10],
						["6Rnd_45ACP_Cylinder",nil,10]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Tu n'es pas civil!"};
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
						["6Rnd_45ACP_Cylinder",nil,50]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,10],
				["ItemGPS",nil,100],
				["ToolKit",nil,60],
				["FirstAidKit",nil,15],
				["Chemlight_red",nil,2],
				["Chemlight_yellow",nil,2],
				["Chemlight_green",nil,2],
				["Chemlight_blue",nil,2]
			]
		];
	};	
		
	case "donateur":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Tu n'es pas civil !"};
			case (FETCH_CONST(life_donatorlevel) < 0): {"Vous n'êtes pas donateur !"};
			default
			{
				["Magasin Donateur",
					[
						["hgun_Rook40_F",nil,0],
						["hgun_PDW2000_F",nil,0],
						["hgun_pistol_heavy_01_F",nil,0],
						["arifle_Mk20C_plain_F",nil,0],
						["srifle_LRR_F",nil,0],
						["LMG_Mk200_F",nil,0],
						["srifle_EBR_F",nil,0],
						["arifle_Katiba_F",nil,0],
						["SMG_01_F",nil,0],
						["optic_ACO_grn_smg",nil,0],
						["optic_MRCO",nil,0],
						["optic_SOS",nil,0],
						["NVGoggles",nil,0],
						["ToolKit",nil,0],
						["ItemGPS",nil,0],
						["FirstAidKit",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["30Rnd_9x21_Mag",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["30Rnd_556x45_Stanag_Tracer_Red","Chargeur Mk20",0],
						["7Rnd_408_Mag","Chargeur M320",0],
						["200Rnd_65x39_cased_Box","Chargeur Mk200",0],
						["20Rnd_762x51_Mag","Chargeur Mk18",0],
						["30Rnd_65x39_caseless_green","Chargeur Katiba",0],
						["30Rnd_45ACP_Mag_SMG_01","Chargeur Vermin",0]
					]
				];
            };
		};
	};
};

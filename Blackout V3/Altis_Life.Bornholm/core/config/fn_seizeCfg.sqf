#include <macro.h>
/*
	File: fn_seizeCfg.sqf
	Author: Tabakhase
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)
	
	Description:
	Master configuration file for seize player everything.
	
	Parameters:
	0 = All
	1 = Weapons
	2 = Uniform
	3 = Backpack
	4 = Vest
	5 = Items
	
	ToDo:
	Adding list 0,2,3,4&5
*/
private["_mode"];
_mode = [_this,0,objNull,[""]] call BIS_fnc_param;

switch(_mode) do
{
	case 1: 
	{
		[
			// Weapons
			"hgun_ACPC2_snds_F",
			"arifle_MX_F",
			"srifle_LRR_F",
			"arifle_MX_SW_F",				
			"arifle_MXM_F",					
			"srifle_EBR_F",
			"LMG_Mk200_F",
			"launch_NLAW_F",						
			"hgun_P07_snds_F",
			"acc_pointer_IR",
			"acc_flashlight",
			"optic_Holosight",
			"optic_Aco_smg",
			"optic_Hamr",
			"optic_SOS",
			"optic_Nightstalker",						
			"optic_MRCO",						
			"optic_Arco",
			"muzzle_snds_B",					
			"muzzle_snds_H",
			"muzzle_snds_H_MG",
			"16Rnd_9x21_Mag",
			"7Rnd_408_Mag",				
			"100Rnd_65x39_caseless_mag",
			"9Rnd_45ACP_Mag",				
			"200Rnd_65x39_cased_Box",					
			"30Rnd_65x39_caseless_mag",
			"20Rnd_762x51_Mag",
			"NLAW_F",				
			"Chemlight_red",
			"Chemlight_yellow",
			"Chemlight_green",
			"Chemlight_blue",
			"AS50",
			"10Rnd_127x99_as50",
			"R3F_Famas_surb_M203",
			"R3F_30Rnd_556x45_FAMAS",
			"R3F_HK417L",
			"R3F_20Rnd_762x51_HK417",
			"hlc_rifle_ak47",
			"hlc_30Rnd_762x39_b_ak",
			"hlc_rifle_akmgl",
			"hlc_30Rnd_762x39_b_ak",
			"hlc_rifle_aks74_GL",
			"hlc_30Rnd_545x39_B_AK",
			"hlc_rifle_saiga12k",
			"hlc_10rnd_12g_buck_S12",
			"FHQ_M4A1_M203_BLK",
			"30Rnd_556x45_Stanag",
			"R3F_Minimi",
			"R3F_200Rnd_556x45_MINIMI",
			"C1987_MP7_nwu",
			"C1987_40Rnd_46x30_mp7",
			"Cha_PK",
			"Cha_100Rnd_762x54_PK",
			"Cha_Pecheneg",
			"Cha_100Rnd_762x54_PK",
			"SMG_02_F","SMG",
			"30Rnd_9x21_Mag",
			"hlc_rifle_aek971",
			"hlc_30Rnd_545x39_B_AK",
			"Orel_Matraque",
			"AG_MP9_sidearm",
			"30Rnd_45ACP_Mag_SMG_01",
			"R3F_PAMAS","PAMAS",
			"R3F_15Rnd_9x19_PAMAS",
			"hgun_Pistol_heavy_02_F",
			"6Rnd_45ACP_Cylinder",
			"FHQ_optic_AC11704",
			"FHQ_optic_AC12136",
			"FHQ_optic_ACOG",
			"FHQ_optic_AIM",
			"FHQ_optic_HWS_G33",
			"FHQ_optic_HWS",
			"FHQ_optic_MARS",,
			"FHQ_optic_MicroCCO",
			"FHQ_optic_MicroCCO_low",
			"FHQ_optic_TWS3050",
			"FHQ_optic_VCOG",
			"R3F_AIMPOINT",
			"R3F_EOTECH",
			"R3F_FELIN_FRF2",
			"R3F_NF",
			"R3F_NF42",
			"R3F_J10",
			"R3F_J10_MILDOT",
			"R3F_J4",,
			"R3F_J8",
			"R3F_J8_MILDOT",
			"R3F_ZEISS",
			"hlc_optic_goshawk",
			"hlc_optic_kobra",
			"HLC_Optic_PSO1",
			"optic_DMS",
			"arifle_TRG20_F",
			"arifle_Katiba_F",
			"srifle_DMR_01_F",
			"arifle_SDAR_F",
			"optic_ACO_grn",
			"optic_Holosight",
			"acc_flashlight",
			"optic_Hamr",
			"30Rnd_9x21_Mag",
			"20Rnd_556x45_UW_mag",
			"30Rnd_556x45_Stanag",
			"10Rnd_762x51_Mag",
			"30Rnd_65x39_caseless_green",
			"R3F_M107_DES",
			"R3F_10Rnd_127x99_M107",
			"R3F_Famas_F1_DES",
			"R3F_25Rnd_556x45_FAMAS",
			"R3F_Famas_surb_DES",
			"R3F_30Rnd_556x45_FAMAS",
			"FnFal",
			"20Rnd_762x51_Mag",
			"R3F_FRF2_DES",
			"R3F_10Rnd_762x51_FRF2",
			"R3F_HK416M_DES",
			"R3F_30Rnd_556x45_HK416",
			"M110",
			"20Rnd_762x51_Mag",
			"SLTS_M27",
			"30Rnd_556x45_Stanag",
			"FHQ_M4A1_WDL",
			"30Rnd_556x45_Stanag",
			"hlc_lmg_M60E4",
			"hlc_100Rnd_762x51_B_M60E4",
			"R3F_Minimi_762",
			"R3F_100Rnd_762x51_MINIMI",
			"R3F_MP5SD",
			"R3F_30Rnd_9x19_MP5",
			"AG_MP9_wcam",
			"30Rnd_45ACP_Mag_SMG_01",
			"R3F_PGM_Hecate_II_DES",
			"R3F_7Rnd_127x99_PGM",
			"SG553",
			"30Rnd_56x45_GP90",
			"SIG_P226",
			"16Rnd_9x21_Mag",
			"FHQ_optic_AC11704_tan",
			"FHQ_optic_AC12136_tan",
			"FHQ_optic_ACOG_tan",
			"FHQ_optic_AIM_tan",
			"FHQ_optic_HWS_G33_tan",
			"R3F_NF42_DES",
			"FHQ_optic_LeupoldERT",
			"FHQ_optic_MARS_tan",
			"FHQ_optic_MicroCCO_tan",
			"FHQ_optic_MicroCCO_low_tan",
			"FHQ_optic_VCOG_tan",
			"R3F_AIMPOINT_DES",
			"R3F_EOTECH_DES",
			"R3F_NF_DES",
			"R3F_NF42_DES",
			"R3F_J10_DES",
			"R3F_J10_MILDOT_DES",
			"R3F_J4_DES",
			"R3F_J8_DES",
			"R3F_J8_MILDOT_DES",
			"R3F_ZEISS_DES",			
			// Mags
			"30Rnd_556x45_Stanag",
			"20Rnd_556x45_UW_mag",
			"30Rnd_65x39_caseless_mag",
			"30Rnd_65x39_caseless_green",
			"20Rnd_762x51_Mag",
			"7Rnd_408_Mag",
			"5Rnd_127x108_Mag",
			"100Rnd_65x39_caseless_mag",
			"200Rnd_65x39_cased_Box",
			"30Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"RPG32_F",
			"RPG32_HE_F",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_SmokeGreen_Grenade_shell",
			"3Rnd_SmokeGreen_Grenade_shell",
			"HandGrenade_Stone",
			"SmokeShell",
			"SmokeShellGreen",
			"200Rnd_65x39_Belt",
			"ATMine_Range_Mag",
			"APERSMine_Range_Mag",
			"APERSBoundingMine_Range_Mag",
			"SLAMDirectionalMine_Wire_Mag",
			"APERSTripMine_Wire_Mag",
			"ClaymoreDirectionalMine_Remote_Mag",
			"SatchelCharge_Remote_Mag",
			"DemoCharge_Remote_Mag",
			"30Rnd_45ACP_Mag_SMG_01",
			"9Rnd_45ACP_Mag",
			"150Rnd_762x51_Box",
			"11Rnd_45ACP_Mag",
			"6Rnd_45ACP_Cylinder",
			"10Rnd_762x51_Mag",
			"5Rnd_127x108_APDS_Mag",
			"6Rnd_GreenSignal_F",
			"6Rnd_RedSignal_F"
		];
	};
	
	case 2: 
	{
		[
			//Vetement
			"U_IG_Guerilla1_1",
			"U_I_G_resistanceLeader_F",
			"U_IG_Guerilla3_1",
			"U_IG_Guerilla3_2",
			"U_IG_leader",
			"U_O_CombatUniform_oucamo",
			"U_O_SpecopsUniform_ocamo",
			"U_O_OfficerUniform_ocamo",
			"U_I_CombatUniform",
			"U_O_CombatUniform_oucamo",
			"U_I_OfficerUniform",
			"U_I_GhillieSuit",
			
			//Chapeau
			"H_Booniehat_dgtl",
			"H_Cap_brn_SPECOPS",
			"H_Cap_blk_Raven",
			"H_HelmetO_ocamo",
			"H_MilCap_ocamo",
			"H_HelmetO_oucamo",
			"H_Bandanna_camo",
			"H_Shemag_khk",
			"H_Shemag_tan",
			"H_Shemag_olive",
			"H_Shemag_olive_hs",
			"H_ShemagOpen_khk",
			"H_ShemagOpen_tan",
			"H_Watchcap_sgg",
			"H_Hat_camo",

			//Lunette
			"G_Combat",
			"G_Bandanna_aviator",
			"G_Bandanna_beast",
			"G_Bandanna_blkt",
			"G_Bandanna_oli",
			"G_Bandanna_shades",
			"G_Bandanna_sport"
			"G_Shades_Black",
			"G_Shades_Blue",
			"G_Sport_Blackred",
			"G_Sport_Checkered",
			"G_Sport_Blackyellow",
			"G_Sport_BlackWhite",
			"G_Squares",
			"G_Lowprofile"
		];
	};
	
	case 4: 
	{	
		[
			//Vest
			"V_Chestrig_khk",
			"V_Chestrig_rgr",
			"V_Chestrig_blk",
			"V_Chestrig_oli",
			"V_TacVest_khk",
			"V_TacVest_brn",
			"V_TacVest_oli",
			"V_HarnessO_brn",
			"V_HarnessO_gry",
			"V_PlateCarrierIA1_dgtl",
			"V_PlateCarrierIA2_dgtl",
			"V_HarnessOGL_gry"
			"V_BandollierB_cbr"
		];
	};
};
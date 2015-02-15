#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
_donateuruidlist = [""];
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000],
			["cl3_kart_aqua",22500],
			["cl3_kart_babyblue",22500],
			["cl3_kart_babypink",22500],
			["cl3_kart_black",22500],
			["cl3_kart_blue",22500],
			["cl3_kart_burgundy",22500],
			["cl3_kart_camo",22500],
			["cl3_kart_camo_urban",22500],
			["cl3_kart_cardinal",22500],
			["cl3_kart_cardinal",22500],
			["cl3_kart_dark_green",22500],
			["cl3_kart_gold",22500],
			["cl3_kart_green",22500],
			["cl3_kart_grey",22500],
			["cl3_kart_lavender",22500],
			["cl3_kart_light_blue",22500],
			["cl3_kart_light_yellow",22500],
			["cl3_kart_lime",22500],
			["cl3_kart_marina_blue",22500],
			["cl3_kart_navy_blue",22500],
			["cl3_kart_purple",22500],
			["cl3_kart_red",22500],
			["cl3_kart_sand",22500],
			["cl3_kart_silver",22500],
			["cl3_kart_violet",22500],
			["cl3_kart_white",22500],
			["cl3_kart_camo",22500],
			["cl3_kart_camo_urban",22500],
			["cl3_kart_yellow",22500]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000],
			["cl3_dodge_charger_emt",50000]	
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["cl3_458_2tone1",850000],
			["cl3_458_2tone2",850000],
			["cl3_458_2tone3",850000],
			["cl3_458_2tone4",850000],
			["cl3_458_2tone5",850000],
			["cl3_458_aqua",850000],
			["cl3_458_babyblue",850000],
			["cl3_458_babypink",850000],
			["cl3_458_black",850000],
			["cl3_458_blue",850000],
			["cl3_458_burgundy",850000],
			["cl3_458_cardinal",850000],
			["cl3_458_dark_green",850000],
			["cl3_458_flame",850000],
			["cl3_458_flame1",850000],
			["cl3_458_flame2",850000],
			["cl3_458_gold",850000],
			["cl3_458_green",850000],
			["cl3_458_grey",850000],
			["cl3_458_lavender",850000],
			["cl3_458_light_blue",850000],
			["cl3_458_light_yellow",850000],
			["cl3_458_lime",850000],
			["cl3_458_marina_blue",850000],
			["cl3_458_navy_blue",850000],
			["cl3_458_orange",850000],
			["cl3_458_purple",850000],
			["cl3_458_red",850000],
			["cl3_458_sand",850000],
			["cl3_458_silver",850000],
			["cl3_458_violet",850000],
			["cl3_458_white",850000],
			["cl3_458_yellow",850000],
			["cl3_arielatom_aqua",250000],
			["cl3_arielatom_babyblue",250000],
			["cl3_arielatom_babypink",250000],
			["cl3_arielatom_black",250000],
			["cl3_arielatom_blue",250000],
			["cl3_arielatom_burgundy",250000],
			["cl3_arielatom_cardinal",250000],
			["cl3_arielatom_dark_green",250000],
			["cl3_arielatom_gold",250000],
			["cl3_arielatom_green",250000],
			["cl3_arielatom_grey",250000],
			["cl3_arielatom_lavender",250000],
			["cl3_arielatom_light_blue",250000],
			["cl3_arielatom_light_yellow",250000],
			["cl3_arielatom_lime",250000],
			["cl3_arielatom_marina_blue",250000],
			["cl3_arielatom_navy_blue",250000],
			["cl3_arielatom_orange",250000],
			["cl3_arielatom_purple",250000],
			["cl3_arielatom_race_aqua",300000],
			["cl3_arielatom_race_babyblue",300000],
			["cl3_arielatom_race_babypink",300000],
			["cl3_arielatom_race_black",300000],
			["cl3_arielatom_race_blue",300000],
			["cl3_arielatom_race_dark_green",300000],
			["cl3_arielatom_race_gold",300000],
			["cl3_arielatom_race_green",300000],
			["cl3_arielatom_race_grey",300000],
			["cl3_arielatom_race_lavender",300000],
			["cl3_arielatom_race_light_blue",300000],
			["cl3_arielatom_race_light_yellow",300000],
			["cl3_arielatom_race_lime",300000],
			["cl3_arielatom_race_marina_blue",300000],
			["cl3_arielatom_race_navy_blue",300000],
			["cl3_arielatom_race_orange",300000],
			["cl3_arielatom_race_purple",300000],
			["cl3_arielatom_race_red",300000],
			["cl3_arielatom_race_sand",300000],
			["cl3_arielatom_race_silver",300000],
			["cl3_arielatom_race_violet",300000],
			["cl3_arielatom_race_white",300000],
			["cl3_arielatom_race_yellow",300000],
			["cl3_arielatom_red",250000],
			["cl3_arielatom_sand",250000],
			["cl3_arielatom_silver",250000],
			["cl3_arielatom_violet",250000],
			["cl3_arielatom_white",250000],
			["cl3_arielatom_yellow",250000],
			["cl3_carrera_gt_aqua",1200000],
			["cl3_carrera_gt_babyblue",1200000],
			["cl3_carrera_gt_babypink",1200000],
			["cl3_carrera_gt_black",1200000],
			["cl3_carrera_gt_blue",1200000],
			["cl3_carrera_gt_burgundy",1200000],
			["cl3_carrera_gt_cardinal",1200000],
			["cl3_carrera_gt_dark_green",1200000],
			["cl3_carrera_gt_gold",1200000],
			["cl3_carrera_gt_green",1200000],
			["cl3_carrera_gt_grey",1200000],
			["cl3_carrera_gt_lavender",1200000],
			["cl3_carrera_gt_light_blue",1200000],
			["cl3_carrera_gt_light_yellow",1200000],
			["cl3_carrera_gt_lime",1200000],
			["cl3_carrera_gt_marina_blue",1200000],
			["cl3_carrera_gt_navy_blue",1200000],
			["cl3_carrera_gt_orange",1200000],
			["cl3_carrera_gt_purple",1200000],
			["cl3_carrera_gt_red",1200000],
			["cl3_carrera_gt_sand",1200000],
			["cl3_carrera_gt_silver",1200000],
			["cl3_carrera_gt_violet",1200000],
			["cl3_carrera_gt_white",1200000],
			["cl3_carrera_gt_yellow",1200000],
			["cl3_civic_vti_aqua",30000],
			["cl3_civic_vti_babyblue",30000],
			["cl3_civic_vti_babypink",30000],
			["cl3_civic_vti_black",30000],
			["cl3_civic_vti_blue",30000],
			["cl3_civic_vti_burgundy",30000],
			["cl3_civic_vti_cardinal",30000],
			["cl3_civic_vti_dark_green",30000],
			["cl3_civic_vti_gold",30000],
			["cl3_civic_vti_green",30000],
			["cl3_civic_vti_grey",30000],
			["cl3_civic_vti_lavender",30000],
			["cl3_civic_vti_light_blue",30000],
			["cl3_civic_vti_light_yellow",30000],
			["cl3_civic_vti_lime",30000],
			["cl3_civic_vti_marina_blue",30000],
			["cl3_civic_vti_navy_blue",30000],
			["cl3_civic_vti_orange",30000],
			["cl3_civic_vti_purple",30000],
			["cl3_civic_vti_red",30000],
			["cl3_civic_vti_sand",30000],
			["cl3_civic_vti_silver",30000],
			["cl3_civic_vti_violet",30000],
			["cl3_civic_vti_white",30000],
			["cl3_civic_vti_yellow",30000],
			["cl3_dbs_volante_aqua",700000],
			["cl3_dbs_volante_babyblue",700000],
			["cl3_dbs_volante_babypink",700000],
			["cl3_dbs_volante_black",700000],
			["cl3_dbs_volante_blue",700000],
			["cl3_dbs_volante_cardinal",700000],
			["cl3_dbs_volante_dark_green",700000],
			["cl3_dbs_volante_flame",700000],
			["cl3_dbs_volante_flame1",700000],
			["cl3_dbs_volante_flame2",700000],
			["cl3_dbs_volante_gold",700000],
			["cl3_dbs_volante_green",700000],
			["cl3_dbs_volante_grey",700000],
			["cl3_dbs_volante_lavender",700000],
			["cl3_dbs_volante_lavender",700000],
			["cl3_dbs_volante_light_blue",700000],
			["cl3_dbs_volante_light_yellow",700000],
			["cl3_dbs_volante_lime",700000],
			["cl3_dbs_volante_marina_blue",700000],
			["cl3_dbs_volante_navy_blue",700000],
			["cl3_dbs_volante_orange",700000],
			["cl3_dbs_volante_purple",700000],
			["cl3_dbs_volante_red",700000],
			["cl3_dbs_volante_sand",700000],
			["cl3_dbs_volante_silver",700000],
			["cl3_dbs_volante_violet",700000],
			["cl3_dbs_volante_white",700000],
			["cl3_defender_1100_cammo",25000],
			["cl3_defender_1100_red",25000],
			["cl3_defender_1100_yellow",25000],
			["cl3_dodge_charger_f_black",125000],
			["cl3_dodge_charger_f_blue",125000],
			["cl3_dodge_charger_f_darkgreen",125000],
			["cl3_dodge_charger_f_darkred",125000],
			["cl3_dodge_charger_f_green",125000],
			["cl3_dodge_charger_f_grey",125000],
			["cl3_dodge_charger_f_lime",125000],
			["cl3_dodge_charger_f_orange",125000],
			["cl3_dodge_charger_f_pink",125000],
			["cl3_dodge_charger_f_purple",125000],
			["cl3_dodge_charger_f_red",125000],
			["cl3_dodge_charger_f_white",125000],
			["cl3_dodge_charger_f_yellow",125000],
			["cl3_e60_m5_aqua",750000],
			["cl3_e60_m5_babyblue",750000],
			["cl3_e60_m5_babypink",185000],
			["cl3_e60_m5_black",185000],
			["cl3_e60_m5_blue",185000],
			["cl3_e60_m5_burgundy",185000],
			["cl3_e60_m5_cardinal",185000],
			["cl3_e60_m5_gold",185000],
			["cl3_e60_m5_green",185000],
			["cl3_e60_m5_grey",185000],
			["cl3_e60_m5_lavender",185000],
			["cl3_e60_m5_light_blue",185000],
			["cl3_e60_m5_light_yellow",185000],
			["cl3_e60_m5_lime",185000],
			["cl3_e60_m5_marina_blue",185000],
			["cl3_e60_m5_navy_blue",185000],
			["cl3_e60_m5_orange",185000],
			["cl3_e60_m5_purple",185000],
			["cl3_e60_m5_red",185000],
			["cl3_e60_m5_sand",185000],
			["cl3_e60_m5_silver",185000],
			["cl3_e60_m5_violet",185000],
			["cl3_e60_m5_white",185000],
			["cl3_e60_m5_yellow",185000],
			["cl3_e63_amg_aqua",325000],
			["cl3_e63_amg_babyblue",325000],
			["cl3_e63_amg_babypink",325000],
			["cl3_e63_amg_black",325000],
			["cl3_e63_amg_blue",325000],
			["cl3_e63_amg_burgundy",325000],
			["cl3_e63_amg_cardinal",325000],
			["cl3_e63_amg_dark_green",325000],
			["cl3_e63_amg_gold",325000],
			["cl3_e63_amg_green",325000],
			["cl3_e63_amg_grey",325000],
			["cl3_e63_amg_lavender",325000],
			["cl3_e63_amg_light_blue",325000],
			["cl3_e63_amg_light_yellow",325000],
			["cl3_e63_amg_lime",325000],
			["cl3_e63_amg_marina_blue",325000],
			["cl3_e63_amg_navy_blue",325000],
			["cl3_e63_amg_orange",325000],
			["cl3_e63_amg_purple",325000],
			["cl3_e63_amg_red",325000],
			["cl3_e63_amg_sand",325000],
			["cl3_e63_amg_silver",325000],
			["cl3_e63_amg_violet",325000],
			["cl3_e63_amg_white",325000],
			["cl3_e63_amg_yellow",325000],
			["cl3_golf_mk2_aqua",17500],
			["cl3_golf_mk2_babyblue",17500],
			["cl3_golf_mk2_babypink",17500],
			["cl3_golf_mk2_black",17500],
			["cl3_golf_mk2_blue",17500],
			["cl3_golf_mk2_burgundy",17500],
			["cl3_golf_mk2_cardinal",17500],
			["cl3_golf_mk2_dark_green",17500],
			["cl3_golf_mk2_gold",17500],
			["cl3_golf_mk2_green",17500],
			["cl3_golf_mk2_grey",17500],
			["cl3_golf_mk2_lavender",17500],
			["cl3_golf_mk2_light_yellow",17500],
			["cl3_golf_mk2_lime",17500],
			["cl3_golf_mk2_marina_blue",17500],
			["cl3_golf_mk2_navy_blue",17500],
			["cl3_golf_mk2_orange",17500],
			["cl3_golf_mk2_purple",17500],
			["cl3_golf_mk2_red",17500],
			["cl3_golf_mk2_sand",17500],
			["cl3_golf_mk2_silver",17500],
			["cl3_golf_mk2_violet",17500],
			["cl3_golf_mk2_white",17500],
			["cl3_golf_mk2_yellow",17500],
			["cl3_insignia_aqua",35000],
			["cl3_insignia_babyblue",35000],
			["cl3_insignia_babypink",35000],
			["cl3_insignia_black",35000],
			["cl3_insignia_blue",35000],
			["cl3_insignia_burgundy",35000],
			["cl3_insignia_cardinal",35000],
			["cl3_insignia_dark_green",35000],
			["cl3_insignia_gold",35000],
			["cl3_insignia_green",35000],
			["cl3_insignia_grey",35000],
			["cl3_insignia_lavender",35000],
			["cl3_insignia_light_blue",35000],
			["cl3_insignia_light_blue",35000],
			["cl3_insignia_light_yellow",35000],
			["cl3_insignia_lime",35000],
			["cl3_insignia_marina_blue",35000],
			["cl3_insignia_navy_blue",35000],
			["cl3_insignia_orange",35000],
			["cl3_insignia_purple",35000],
			["cl3_insignia_red",35000],
			["cl3_insignia_sand",35000],
			["cl3_insignia_silver",35000],
			["cl3_insignia_violet",35000],
			["cl3_insignia_white",35000],
			["cl3_insignia_yellow",35000],
			["cl3_lada_red",16000],
			["cl3_lada_white",16000],
			["cl3_lamborghini_gt1_2tone1",900000],
			["cl3_lamborghini_gt1_2tone2",900000],
			["cl3_lamborghini_gt1_2tone3",900000],
			["cl3_lamborghini_gt1_2tone4",900000],
			["cl3_lamborghini_gt1_2tone5",900000],
			["cl3_lamborghini_gt1_aqua",900000],
			["cl3_lamborghini_gt1_babyblue",900000],
			["cl3_lamborghini_gt1_babypink",900000],
			["cl3_lamborghini_gt1_black",900000],
			["cl3_lamborghini_gt1_blue",900000],
			["cl3_lamborghini_gt1_burgundy",900000],
			["cl3_lamborghini_gt1_cardinal",900000],
			["cl3_lamborghini_gt1_dark_green",900000],
			["cl3_lamborghini_gt1_flame",900000],
			["cl3_lamborghini_gt1_flame1",900000],
			["cl3_lamborghini_gt1_flame2",900000],
			["cl3_lamborghini_gt1_gold",900000],
			["cl3_lamborghini_gt1_green",900000],
			["cl3_lamborghini_gt1_grey",900000],
			["cl3_lamborghini_gt1_lavender",900000],
			["cl3_lamborghini_gt1_light_blue",900000],
			["cl3_lamborghini_gt1_light_yellow",900000],
			["cl3_lamborghini_gt1_lime",900000],
			["cl3_lamborghini_gt1_marina_blue",900000],
			["cl3_lamborghini_gt1_navy_blue",900000],
			["cl3_lamborghini_gt1_orange",900000],
			["cl3_lamborghini_gt1_orange",900000],
			["cl3_lamborghini_gt1_purple",900000],
			["cl3_lamborghini_gt1_red",900000],
			["cl3_lamborghini_gt1_sand",900000],
			["cl3_lamborghini_gt1_silver",900000],
			["cl3_lamborghini_gt1_violet",900000],
			["cl3_lamborghini_gt1_white",900000],
			["cl3_lamborghini_gt1_yellow",900000],
			["cl3_murcielago_2tone1",1250000],
			["cl3_murcielago_2tone2",1250000],
			["cl3_murcielago_2tone3",1250000],
			["cl3_murcielago_2tone4",1250000],
			["cl3_murcielago_2tone5",1250000],
			["cl3_murcielago_aqua",1250000],
			["cl3_murcielago_babyblue",1250000],
			["cl3_murcielago_babypink",1250000],
			["cl3_murcielago_black",1250000],
			["cl3_murcielago_blue",1250000],
			["cl3_murcielago_burgundy",1250000],
			["cl3_murcielago_cardinal",1250000],
			["cl3_murcielago_dark_green",1250000],
			["cl3_murcielago_flame",1250000],
			["cl3_murcielago_flame1",1250000],
			["cl3_murcielago_flame2",1250000],
			["cl3_murcielago_gold",1250000],
			["cl3_murcielago_green",1250000],
			["cl3_murcielago_grey",1250000],
			["cl3_murcielago_light_blue",1250000],
			["cl3_murcielago_light_yellow",1250000],
			["cl3_murcielago_lime",1250000],
			["cl3_murcielago_marina_blue",1250000],
			["cl3_murcielago_navy_blue",1250000],
			["cl3_murcielago_purple",1250000],
			["cl3_murcielago_red",1250000],
			["cl3_murcielago_sand",1250000],
			["cl3_murcielago_silver",1250000],
			["cl3_murcielago_violet",1250000],
			["cl3_murcielago_white",1250000],
			["cl3_murcielago_yellow",1250000],
			["cl3_polo_gti_aqua",19000],
			["cl3_polo_gti_babyblue",19000],
			["cl3_polo_gti_babypink",19000],
			["cl3_polo_gti_black",19000],
			["cl3_polo_gti_blue",19000],
			["cl3_polo_gti_burgundy",19000],
			["cl3_polo_gti_cardinal",19000],
			["cl3_polo_gti_dark_green",19000],
			["cl3_polo_gti_gold",19000],
			["cl3_polo_gti_green",19000],
			["cl3_polo_gti_grey",19000],
			["cl3_polo_gti_lavender",19000],
			["cl3_polo_gti_light_blue",19000],
			["cl3_polo_gti_light_yellow",19000],
			["cl3_polo_gti_lime",19000],
			["cl3_polo_gti_marina_blue",19000],
			["cl3_polo_gti_navy_blue",19000],
			["cl3_polo_gti_orange",19000],
			["cl3_polo_gti_red",19000],
			["cl3_polo_gti_sand",19000],
			["cl3_polo_gti_silver",19000],
			["cl3_polo_gti_violet",19000],
			["cl3_polo_gti_white",19000],
			["cl3_polo_gti_yellow",19000],
			["cl3_r8_spyder_2tone1",700000],
			["cl3_r8_spyder_2tone2",700000],
			["cl3_r8_spyder_2tone3",700000],
			["cl3_r8_spyder_2tone4",700000],
			["cl3_r8_spyder_2tone5",700000],
			["cl3_r8_spyder_aqua",700000],
			["cl3_r8_spyder_babyblue",700000],
			["cl3_r8_spyder_babypink",700000],
			["cl3_r8_spyder_black",700000],
			["cl3_r8_spyder_blue",700000],
			["cl3_r8_spyder_burgundy",700000],
			["cl3_r8_spyder_cardinal",700000],
			["cl3_r8_spyder_dark_green",700000],
			["cl3_r8_spyder_dark_green",700000],
			["cl3_r8_spyder_flame",700000],
			["cl3_r8_spyder_flame1",700000],
			["cl3_r8_spyder_flame2",700000],
			["cl3_r8_spyder_gold",700000],
			["cl3_r8_spyder_green",700000],
			["cl3_r8_spyder_grey",700000],
			["cl3_r8_spyder_light_blue",700000],
			["cl3_r8_spyder_light_yellow",700000],
			["cl3_r8_spyder_lime",700000],
			["cl3_r8_spyder_marina_blue",700000],
			["cl3_r8_spyder_navy_blue",700000],
			["cl3_r8_spyder_orange",700000],
			["cl3_r8_spyder_purple",700000],
			["cl3_r8_spyder_red",700000],
			["cl3_r8_spyder_sand",700000],
			["cl3_r8_spyder_silver",700000],
			["cl3_r8_spyder_violet",700000],
			["cl3_r8_spyder_white",700000],
			["cl3_r8_spyder_yellow",700000],
			["cl3_range_rover_aqua",55000],
			["cl3_range_rover_babyblue",55000],
			["cl3_range_rover_babypink",55000],
			["cl3_range_rover_black",55000],
			["cl3_range_rover_blue",55000],
			["cl3_range_rover_burgundy",55000],
			["cl3_range_rover_cardinal",55000],
			["cl3_range_rover_dark_green",55000],
			["cl3_range_rover_green",55000],
			["cl3_range_rover_lavender",55000],
			["cl3_range_rover_light_blue",55000],
			["cl3_range_rover_light_yellow",55000],
			["cl3_range_rover_lime",55000],
			["cl3_range_rover_marina_blue",55000],
			["cl3_range_rover_navy_blue",55000],
			["cl3_range_rover_orange",55000],
			["cl3_range_rover_purple",55000],
			["cl3_range_rover_red",55000],
			["cl3_range_rover_sand",55000],
			["cl3_range_rover_silver",55000],
			["cl3_range_rover_violet",55000],
			["cl3_range_rover_white",55000],
			["cl3_range_rover_yellow",55000],
			["cl3_reventon_2tone1",1000000],
			["cl3_reventon_2tone2",1000000],
			["cl3_reventon_2tone3",1000000],
			["cl3_reventon_2tone4",1000000],
			["cl3_reventon_2tone5",1000000],
			["cl3_reventon_aqua",1000000],
			["cl3_reventon_babyblue",1000000],
			["cl3_reventon_babypink",1000000],
			["cl3_reventon_black",1000000],
			["cl3_reventon_blue",1000000],
			["cl3_reventon_cardinal",1000000],
			["cl3_reventon_dark_green",1000000],
			["cl3_reventon_flame",1000000],
			["cl3_reventon_flame1",1000000],
			["cl3_reventon_flame2",1000000],
			["cl3_reventon_gold",1000000],
			["cl3_reventon_green",1000000],
			["cl3_reventon_grey",1000000],
			["cl3_reventon_lavender",1000000],
			["cl3_reventon_light_blue",1000000],
			["cl3_reventon_light_yellow",1000000],
			["cl3_reventon_lime",1000000],
			["cl3_reventon_marina_blue",1000000],
			["cl3_reventon_navy_blue",1000000],
			["cl3_reventon_orange",1000000],
			["cl3_reventon_purple",1000000],
			["cl3_reventon_red",1000000],
			["cl3_reventon_sand",1000000],
			["cl3_reventon_silver",1000000],
			["cl3_reventon_violet",1000000],
			["cl3_reventon_white",1000000],
			["cl3_reventon_yellow",1000000],
			["cl3_taurus_aqua",125000],
			["cl3_taurus_babyblue",125000],
			["cl3_taurus_babypink",125000],
			["cl3_taurus_black",125000],
			["cl3_taurus_blue",125000],
			["cl3_taurus_burgundy",125000],
			["cl3_taurus_cardinal",125000],
			["cl3_taurus_dark_green",125000],
			["cl3_taurus_gold",125000],
			["cl3_taurus_green",125000],
			["cl3_taurus_grey",125000],
			["cl3_taurus_lavender",125000],
			["cl3_taurus_light_blue",125000],
			["cl3_taurus_light_yellow",125000],
			["cl3_taurus_lime",125000],
			["cl3_taurus_marina_blue",125000],
			["cl3_taurus_navy_blue",125000],
			["cl3_taurus_orange",125000],
			["cl3_taurus_purple",125000],
			["cl3_taurus_red",125000],
			["cl3_taurus_sand",125000],
			["cl3_taurus_silver",125000],
			["cl3_taurus_violet",125000],
			["cl3_taurus_white",125000],
			["cl3_taurus_yellow",125000],
			["cl3_veyron_black",1800000],
			["cl3_veyron_blk_wht",1800000],
			["cl3_veyron_brn_blk",1800000],
			["cl3_veyron_lblue_dblue",1800000],
			["cl3_veyron_lblue_lblue",1800000],
			["cl3_veyron_red_red",1800000],
			["cl3_veyron_wht_blu",1800000],
			["cl3_veyron_wht_lwht",1800000],
			["cl3_volha_black",7000],
			["cl3_volha_grey",7000],
			["cl3_z4_2008_babyblue",140000],
			["cl3_z4_2008_babypink",140000],
			["cl3_z4_2008_black",140000],
			["cl3_z4_2008_blue",140000],
			["cl3_z4_2008_burgundy",140000],
			["cl3_z4_2008_cardinal",140000],
			["cl3_z4_2008_dark_green",140000],
			["cl3_z4_2008_gold",140000],
			["cl3_z4_2008_green",140000],
			["cl3_z4_2008_grey",140000],
			["cl3_z4_2008_lavender",140000],
			["cl3_z4_2008_light_blue",140000],
			["cl3_z4_2008_light_yellow",140000],
			["cl3_z4_2008_lime",140000],
			["cl3_z4_2008_marina_blue",140000],
			["cl3_z4_2008_navy_blue",140000],
			["cl3_z4_2008_orange",140000],
			["cl3_z4_2008_purple",140000],
			["cl3_z4_2008_red",140000],
			["cl3_z4_2008_sand",140000],
			["cl3_z4_2008_silver",140000],
			["cl3_z4_2008_violet",140000],
			["cl3_z4_2008_white",140000],
			["cl3_z4_2008_yellow",140000],
			["DAR_TahoeCivBlack",200000],
			["DAR_TahoeCivBlue",200000],
			["DAR_TahoeCivRed",200000],
			["DAR_TahoeCivSilver",200000],
			["DAR_TahoeCiv",200000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",1000000],
			["O_MRAP_02_hmg_F",3500000],		
			["B_Heli_Light_01_F",325000],
			["O_Heli_Attack_02_F",9000000],
			["B_G_Offroad_01_armed_F",950000],
			["cl3_458_camo",1500000],
			["cl3_458_camo_urban",1500000],
			["cl3_arielatom_camo",250000],
			["cl3_arielatom_camo_urban",250000],
			["cl3_arielatom_race_camo",300000],
			["cl3_arielatom_race_camo_urban",300000],
			["cl3_carrera_gt_camo",1200000],
			["cl3_carrera_gt_camo_urban",1200000],
			["cl3_civic_vti_camo",69500],
			["cl3_civic_vti_camo_urban",69500],
			["cl3_dbs_volante_camo",700000],
			["cl3_dbs_volante_camo_urban",700000],
			["cl3_defender_110_cammo",25000],
			["cl3_dodge_charger_f_camo",125000],
			["cl3_dodge_charger_f_camourban",125000],
			["cl3_e60_m5_camo",185000],
			["cl3_e60_m5_camo_urban",185000],
			["cl3_e63_amg_camo",325000],
			["cl3_e63_amg_camo_urban",325000],
			["cl3_golf_mk2_camo",17500],
			["cl3_golf_mk2_camo_urban",17500],
			["cl3_insignia_camo",25000],
			["cl3_insignia_camo_urban",25000],
			["cl3_lamborghini_gt1_camo",900000],
			["cl3_lamborghini_gt1_camo_urban",900000],
			["cl3_lamborghini_gt1_camo_urban",900000],
			["cl3_murcielago_camo",125000],
			["cl3_polo_gti_camo",19000],	
			["cl3_polo_gti_camo_urban",19000],
			["cl3_r8_spyder_camo",700000],
			["cl3_r8_spyder_camo_urban",700000],
			["cl3_range_rover_camo",55000],
			["cl3_range_rover_camo_urban",55000],
			["cl3_reventon_camo",1000000],
			["cl3_reventon_camo_urban",1000000],
			["cl3_taurus_camo",125000],
			["cl3_taurus_camo_urban",125000],
			["cl3_z4_2008_camo",140000],
			["cl3_z4_2008_camo_urban",140000]
		];
		
		if(license_civ_rebel) then
		{
		};
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",5000];
		_return pushBack
		["C_SUV_01_F",4000];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["DAR_ExplorerPolice",7500]];
			_return set[count _return,
			["DAR_CVPIAux",5000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["DAR_TaurusPolice",35000]];
			_return set[count _return,
			["DAR_TahoePolice",35000]];
			_return set[count _return,
			["DAR_TahoePoliceDet",35000]];
			_return set[count _return,
			["DAR_TaurusPoliceState",35000]];
			_return set[count _return,
			["DAR_ChargerPolice",50000]];
			_return set[count _return,
			["DAR_ExplorerPoliceStealth",30000]];
			_return set[count _return,
			["DAR_ChargerPoliceState",50000]];
		};	
		if(__GETC__(life_coplevel) > 5) then
		{	
			_return set[count _return,
			["cl3_reventon_clpd",500000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",3500000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",300000];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack
			["I_Heli_light_03_F",2500000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",75000];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["B_MRAP_01_hmg_F",750000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
	
	case "donateur_vehicule":
	{
		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000],
			["C_Hatchback_01_sport_F",50000]
		];

		if(((getPlayerUID player) in _donateuruidlist)) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",150000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",300000]];
			_return set[count _return,["C_Kart_01_F",10000]];
			_return set[count _return,["O_Truck_03_covered_F",650000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",300000]];
			_return set[count _return,["O_Truck_03_covered_F",650000]];
		};
	};
};

_return;

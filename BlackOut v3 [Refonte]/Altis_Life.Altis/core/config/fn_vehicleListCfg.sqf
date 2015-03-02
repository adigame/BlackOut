#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",200],
			["C_Kart_01_Fuel_F",200],
			["C_Kart_01_Red_F",200],
			["C_Kart_01_Vrana_F",200],
			["cl3_kart_aqua",350],
			["cl3_kart_babyblue",350],
			["cl3_kart_babypink",350],
			["cl3_kart_black",350],
			["cl3_kart_blue",350],
			["cl3_kart_burgundy",350],
			["cl3_kart_camo",350],
			["cl3_kart_camo_urban",350],
			["cl3_kart_cardinal",350],
			["cl3_kart_cardinal",350],
			["cl3_kart_dark_green",350],
			["cl3_kart_gold",350],
			["cl3_kart_green",350],
			["cl3_kart_grey",350],
			["cl3_kart_lavender",350],
			["cl3_kart_light_blue",350],
			["cl3_kart_light_yellow",350],
			["cl3_kart_lime",350],
			["cl3_kart_marina_blue",350],
			["cl3_kart_navy_blue",350],
			["cl3_kart_purple",350],
			["cl3_kart_red",350],
			["cl3_kart_sand",350],
			["cl3_kart_silver",350],
			["cl3_kart_violet",350],
			["cl3_kart_white",350],
			["cl3_kart_camo",350],
			["cl3_kart_camo_urban",350],
			["cl3_kart_yellow",350]
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
			["B_Quadbike_01_F",400],
			["C_Hatchback_01_F",4500],
			["C_Offroad_01_F",5500],
			["C_SUV_01_F",7000],
			["C_Van_01_transport_F",25000],
			["cl3_458_2tone1",30000],
			["cl3_458_2tone2",30000],
			["cl3_458_2tone3",30000],
			["cl3_458_2tone4",30000],
			["cl3_458_2tone5",30000],
			["cl3_458_aqua",30000],
			["cl3_458_babyblue",30000],
			["cl3_458_babypink",30000],
			["cl3_458_black",30000],
			["cl3_458_blue",30000],
			["cl3_458_burgundy",30000],
			["cl3_458_cardinal",30000],
			["cl3_458_dark_green",30000],
			["cl3_458_flame",30000],
			["cl3_458_flame1",30000],
			["cl3_458_flame2",30000],
			["cl3_458_gold",30000],
			["cl3_458_green",30000],
			["cl3_458_grey",30000],
			["cl3_458_lavender",30000],
			["cl3_458_light_blue",30000],
			["cl3_458_light_yellow",30000],
			["cl3_458_lime",30000],
			["cl3_458_marina_blue",30000],
			["cl3_458_navy_blue",30000],
			["cl3_458_orange",30000],
			["cl3_458_purple",30000],
			["cl3_458_red",30000],
			["cl3_458_sand",30000],
			["cl3_458_silver",30000],
			["cl3_458_violet",30000],
			["cl3_458_white",30000],
			["cl3_458_yellow",30000],
			["cl3_arielatom_aqua",70000],
			["cl3_arielatom_babyblue",70000],
			["cl3_arielatom_babypink",70000],
			["cl3_arielatom_black",70000],
			["cl3_arielatom_blue",70000],
			["cl3_arielatom_burgundy",70000],
			["cl3_arielatom_cardinal",70000],
			["cl3_arielatom_dark_green",70000],
			["cl3_arielatom_gold",70000],
			["cl3_arielatom_green",70000],
			["cl3_arielatom_grey",70000],
			["cl3_arielatom_lavender",70000],
			["cl3_arielatom_light_blue",70000],
			["cl3_arielatom_light_yellow",70000],
			["cl3_arielatom_lime",70000],
			["cl3_arielatom_marina_blue",70000],
			["cl3_arielatom_navy_blue",70000],
			["cl3_arielatom_orange",70000],
			["cl3_arielatom_purple",70000],
			["cl3_arielatom_race_aqua",60000],
			["cl3_arielatom_race_babyblue",60000],
			["cl3_arielatom_race_babypink",60000],
			["cl3_arielatom_race_black",60000],
			["cl3_arielatom_race_blue",60000],
			["cl3_arielatom_race_dark_green",60000],
			["cl3_arielatom_race_gold",60000],
			["cl3_arielatom_race_green",60000],
			["cl3_arielatom_race_grey",60000],
			["cl3_arielatom_race_lavender",60000],
			["cl3_arielatom_race_light_blue",60000],
			["cl3_arielatom_race_light_yellow",60000],
			["cl3_arielatom_race_lime",60000],
			["cl3_arielatom_race_marina_blue",60000],
			["cl3_arielatom_race_navy_blue",60000],
			["cl3_arielatom_race_orange",60000],
			["cl3_arielatom_race_purple",60000],
			["cl3_arielatom_race_red",60000],
			["cl3_arielatom_race_sand",60000],
			["cl3_arielatom_race_silver",60000],
			["cl3_arielatom_race_violet",60000],
			["cl3_arielatom_race_white",60000],
			["cl3_arielatom_race_yellow",60000],
			["cl3_arielatom_red",70000],
			["cl3_arielatom_sand",70000],
			["cl3_arielatom_silver",70000],
			["cl3_arielatom_violet",70000],
			["cl3_arielatom_white",70000],
			["cl3_arielatom_yellow",70000],
			["cl3_carrera_gt_aqua",125000],
			["cl3_carrera_gt_babyblue",125000],
			["cl3_carrera_gt_babypink",125000],
			["cl3_carrera_gt_black",125000],
			["cl3_carrera_gt_blue",125000],
			["cl3_carrera_gt_burgundy",125000],
			["cl3_carrera_gt_cardinal",125000],
			["cl3_carrera_gt_dark_green",125000],
			["cl3_carrera_gt_gold",125000],
			["cl3_carrera_gt_green",125000],
			["cl3_carrera_gt_grey",125000],
			["cl3_carrera_gt_lavender",125000],
			["cl3_carrera_gt_light_blue",125000],
			["cl3_carrera_gt_light_yellow",125000],
			["cl3_carrera_gt_lime",125000],
			["cl3_carrera_gt_marina_blue",125000],
			["cl3_carrera_gt_navy_blue",125000],
			["cl3_carrera_gt_orange",125000],
			["cl3_carrera_gt_purple",125000],
			["cl3_carrera_gt_red",125000],
			["cl3_carrera_gt_sand",125000],
			["cl3_carrera_gt_silver",125000],
			["cl3_carrera_gt_violet",125000],
			["cl3_carrera_gt_white",125000],
			["cl3_carrera_gt_yellow",125000],
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
			["cl3_dbs_volante_aqua",110000],
			["cl3_dbs_volante_babyblue",110000],
			["cl3_dbs_volante_babypink",110000],
			["cl3_dbs_volante_black",110000],
			["cl3_dbs_volante_blue",110000],
			["cl3_dbs_volante_cardinal",110000],
			["cl3_dbs_volante_dark_green",110000],
			["cl3_dbs_volante_flame",110000],
			["cl3_dbs_volante_flame1",110000],
			["cl3_dbs_volante_flame2",110000],
			["cl3_dbs_volante_gold",110000],
			["cl3_dbs_volante_green",110000],
			["cl3_dbs_volante_grey",110000],
			["cl3_dbs_volante_lavender",110000],
			["cl3_dbs_volante_lavender",110000],
			["cl3_dbs_volante_light_blue",110000],
			["cl3_dbs_volante_light_yellow",110000],
			["cl3_dbs_volante_lime",110000],
			["cl3_dbs_volante_marina_blue",110000],
			["cl3_dbs_volante_navy_blue",110000],
			["cl3_dbs_volante_orange",110000],
			["cl3_dbs_volante_purple",110000],
			["cl3_dbs_volante_red",110000],
			["cl3_dbs_volante_sand",110000],
			["cl3_dbs_volante_silver",110000],
			["cl3_dbs_volante_violet",110000],
			["cl3_dbs_volante_white",110000],
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
			["cl3_e60_m5_babypink",85000],
			["cl3_e60_m5_black",85000],
			["cl3_e60_m5_blue",85000],
			["cl3_e60_m5_burgundy",85000],
			["cl3_e60_m5_cardinal",85000],
			["cl3_e60_m5_gold",85000],
			["cl3_e60_m5_green",85000],
			["cl3_e60_m5_grey",85000],
			["cl3_e60_m5_lavender",85000],
			["cl3_e60_m5_light_blue",85000],
			["cl3_e60_m5_light_yellow",85000],
			["cl3_e60_m5_lime",85000],
			["cl3_e60_m5_marina_blue",85000],
			["cl3_e60_m5_navy_blue",85000],
			["cl3_e60_m5_orange",85000],
			["cl3_e60_m5_purple",85000],
			["cl3_e60_m5_red",85000],
			["cl3_e60_m5_sand",85000],
			["cl3_e60_m5_silver",85000],
			["cl3_e60_m5_violet",85000],
			["cl3_e60_m5_white",85000],
			["cl3_e60_m5_yellow",85000],
			["cl3_e63_amg_aqua",100000],
			["cl3_e63_amg_babyblue",100000],
			["cl3_e63_amg_babypink",100000],
			["cl3_e63_amg_black",100000],
			["cl3_e63_amg_blue",100000],
			["cl3_e63_amg_burgundy",100000],
			["cl3_e63_amg_cardinal",100000],
			["cl3_e63_amg_dark_green",100000],
			["cl3_e63_amg_gold",100000],
			["cl3_e63_amg_green",100000],
			["cl3_e63_amg_grey",100000],
			["cl3_e63_amg_lavender",100000],
			["cl3_e63_amg_light_blue",100000],
			["cl3_e63_amg_light_yellow",100000],
			["cl3_e63_amg_lime",100000],
			["cl3_e63_amg_marina_blue",100000],
			["cl3_e63_amg_navy_blue",100000],
			["cl3_e63_amg_orange",100000],
			["cl3_e63_amg_purple",100000],
			["cl3_e63_amg_red",100000],
			["cl3_e63_amg_sand",100000],
			["cl3_e63_amg_silver",100000],
			["cl3_e63_amg_violet",100000],
			["cl3_e63_amg_white",100000],
			["cl3_e63_amg_yellow",100000],
			["cl3_golf_mk2_aqua",12500],
			["cl3_golf_mk2_babyblue",12500],
			["cl3_golf_mk2_babypink",12500],
			["cl3_golf_mk2_black",12500],
			["cl3_golf_mk2_blue",12500],
			["cl3_golf_mk2_burgundy",12500],
			["cl3_golf_mk2_cardinal",12500],
			["cl3_golf_mk2_dark_green",12500],
			["cl3_golf_mk2_gold",12500],
			["cl3_golf_mk2_green",12500],
			["cl3_golf_mk2_grey",12500],
			["cl3_golf_mk2_lavender",12500],
			["cl3_golf_mk2_light_yellow",12500],
			["cl3_golf_mk2_lime",12500],
			["cl3_golf_mk2_marina_blue",12500],
			["cl3_golf_mk2_navy_blue",12500],
			["cl3_golf_mk2_orange",12500],
			["cl3_golf_mk2_purple",12500],
			["cl3_golf_mk2_red",12500],
			["cl3_golf_mk2_sand",12500],
			["cl3_golf_mk2_silver",12500],
			["cl3_golf_mk2_violet",12500],
			["cl3_golf_mk2_white",12500],
			["cl3_golf_mk2_yellow",12500],
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
			["cl3_lamborghini_gt1_2tone1",160000],
			["cl3_lamborghini_gt1_2tone2",160000],
			["cl3_lamborghini_gt1_2tone3",160000],
			["cl3_lamborghini_gt1_2tone4",160000],
			["cl3_lamborghini_gt1_2tone5",160000],
			["cl3_lamborghini_gt1_aqua",160000],
			["cl3_lamborghini_gt1_babyblue",160000],
			["cl3_lamborghini_gt1_babypink",160000],
			["cl3_lamborghini_gt1_black",160000],
			["cl3_lamborghini_gt1_blue",160000],
			["cl3_lamborghini_gt1_burgundy",160000],
			["cl3_lamborghini_gt1_cardinal",160000],
			["cl3_lamborghini_gt1_dark_green",160000],
			["cl3_lamborghini_gt1_flame",160000],
			["cl3_lamborghini_gt1_flame1",160000],
			["cl3_lamborghini_gt1_flame2",160000],
			["cl3_lamborghini_gt1_gold",160000],
			["cl3_lamborghini_gt1_green",160000],
			["cl3_lamborghini_gt1_grey",160000],
			["cl3_lamborghini_gt1_lavender",160000],
			["cl3_lamborghini_gt1_light_blue",160000],
			["cl3_lamborghini_gt1_light_yellow",160000],
			["cl3_lamborghini_gt1_lime",160000],
			["cl3_lamborghini_gt1_marina_blue",160000],
			["cl3_lamborghini_gt1_navy_blue",160000],
			["cl3_lamborghini_gt1_orange",160000],
			["cl3_lamborghini_gt1_orange",160000],
			["cl3_lamborghini_gt1_purple",160000],
			["cl3_lamborghini_gt1_red",160000],
			["cl3_lamborghini_gt1_sand",160000],
			["cl3_lamborghini_gt1_silver",160000],
			["cl3_lamborghini_gt1_violet",160000],
			["cl3_lamborghini_gt1_white",160000],
			["cl3_lamborghini_gt1_yellow",160000],
			["cl3_murcielago_2tone1",120000],
			["cl3_murcielago_2tone2",120000],
			["cl3_murcielago_2tone3",120000],
			["cl3_murcielago_2tone4",120000],
			["cl3_murcielago_2tone5",120000],
			["cl3_murcielago_aqua",120000],
			["cl3_murcielago_babyblue",120000],
			["cl3_murcielago_babypink",120000],
			["cl3_murcielago_black",120000],
			["cl3_murcielago_blue",120000],
			["cl3_murcielago_burgundy",120000],
			["cl3_murcielago_cardinal",120000],
			["cl3_murcielago_dark_green",120000],
			["cl3_murcielago_flame",120000],
			["cl3_murcielago_flame1",120000],
			["cl3_murcielago_flame2",120000],
			["cl3_murcielago_gold",120000],
			["cl3_murcielago_green",120000],
			["cl3_murcielago_grey",120000],
			["cl3_murcielago_light_blue",120000],
			["cl3_murcielago_light_yellow",120000],
			["cl3_murcielago_lime",120000],
			["cl3_murcielago_marina_blue",120000],
			["cl3_murcielago_navy_blue",120000],
			["cl3_murcielago_purple",120000],
			["cl3_murcielago_red",120000],
			["cl3_murcielago_sand",120000],
			["cl3_murcielago_silver",120000],
			["cl3_murcielago_violet",120000],
			["cl3_murcielago_white",120000],
			["cl3_murcielago_yellow",120000],
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
			["cl3_r8_spyder_2tone1",110000],
			["cl3_r8_spyder_2tone2",110000],
			["cl3_r8_spyder_2tone3",110000],
			["cl3_r8_spyder_2tone4",110000],
			["cl3_r8_spyder_2tone5",110000],
			["cl3_r8_spyder_aqua",110000],
			["cl3_r8_spyder_babyblue",110000],
			["cl3_r8_spyder_babypink",110000],
			["cl3_r8_spyder_black",110000],
			["cl3_r8_spyder_blue",110000],
			["cl3_r8_spyder_burgundy",110000],
			["cl3_r8_spyder_cardinal",110000],
			["cl3_r8_spyder_dark_green",110000],
			["cl3_r8_spyder_dark_green",110000],
			["cl3_r8_spyder_flame",110000],
			["cl3_r8_spyder_flame1",110000],
			["cl3_r8_spyder_flame2",110000],
			["cl3_r8_spyder_gold",110000],
			["cl3_r8_spyder_green",110000],
			["cl3_r8_spyder_grey",110000],
			["cl3_r8_spyder_light_blue",110000],
			["cl3_r8_spyder_light_yellow",110000],
			["cl3_r8_spyder_lime",110000],
			["cl3_r8_spyder_marina_blue",110000],
			["cl3_r8_spyder_navy_blue",110000],
			["cl3_r8_spyder_orange",110000],
			["cl3_r8_spyder_purple",110000],
			["cl3_r8_spyder_red",110000],
			["cl3_r8_spyder_sand",110000],
			["cl3_r8_spyder_silver",110000],
			["cl3_r8_spyder_violet",110000],
			["cl3_r8_spyder_white",110000],
			["cl3_r8_spyder_yellow",110000],
			["cl3_range_rover_aqua",23000],
			["cl3_range_rover_babyblue",23000],
			["cl3_range_rover_babypink",23000],
			["cl3_range_rover_black",23000],
			["cl3_range_rover_blue",23000],
			["cl3_range_rover_burgundy",23000],
			["cl3_range_rover_cardinal",23000],
			["cl3_range_rover_dark_green",23000],
			["cl3_range_rover_green",23000],
			["cl3_range_rover_lavender",23000],
			["cl3_range_rover_light_blue",23000],
			["cl3_range_rover_light_yellow",23000],
			["cl3_range_rover_lime",23000],
			["cl3_range_rover_marina_blue",23000],
			["cl3_range_rover_navy_blue",23000],
			["cl3_range_rover_orange",23000],
			["cl3_range_rover_purple",23000],
			["cl3_range_rover_red",23000],
			["cl3_range_rover_sand",23000],
			["cl3_range_rover_silver",23000],
			["cl3_range_rover_violet",23000],
			["cl3_range_rover_white",23000],
			["cl3_range_rover_yellow",23000],
			["cl3_reventon_2tone1",230000],
			["cl3_reventon_2tone2",230000],
			["cl3_reventon_2tone3",230000],
			["cl3_reventon_2tone4",230000],
			["cl3_reventon_2tone5",230000],
			["cl3_reventon_aqua",230000],
			["cl3_reventon_babyblue",230000],
			["cl3_reventon_babypink",230000],
			["cl3_reventon_black",230000],
			["cl3_reventon_blue",230000],
			["cl3_reventon_cardinal",230000],
			["cl3_reventon_dark_green",230000],
			["cl3_reventon_flame",230000],
			["cl3_reventon_flame1",230000],
			["cl3_reventon_flame2",230000],
			["cl3_reventon_gold",230000],
			["cl3_reventon_green",230000],
			["cl3_reventon_grey",230000],
			["cl3_reventon_lavender",230000],
			["cl3_reventon_light_blue",230000],
			["cl3_reventon_light_yellow",230000],
			["cl3_reventon_lime",230000],
			["cl3_reventon_marina_blue",230000],
			["cl3_reventon_navy_blue",230000],
			["cl3_reventon_orange",230000],
			["cl3_reventon_purple",230000],
			["cl3_reventon_red",230000],
			["cl3_reventon_sand",230000],
			["cl3_reventon_silver",230000],
			["cl3_reventon_violet",230000],
			["cl3_reventon_white",230000],
			["cl3_reventon_yellow",230000],
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
			["cl3_z4_2008_babyblue",65500],
			["cl3_z4_2008_babypink",65500],
			["cl3_z4_2008_black",65500],
			["cl3_z4_2008_blue",65500],
			["cl3_z4_2008_burgundy",65500],
			["cl3_z4_2008_cardinal",65500],
			["cl3_z4_2008_dark_green",65500],
			["cl3_z4_2008_gold",65500],
			["cl3_z4_2008_green",65500],
			["cl3_z4_2008_grey",65500],
			["cl3_z4_2008_lavender",65500],
			["cl3_z4_2008_light_blue",65500],
			["cl3_z4_2008_light_yellow",65500],
			["cl3_z4_2008_lime",65500],
			["cl3_z4_2008_marina_blue",65500],
			["cl3_z4_2008_navy_blue",65500],
			["cl3_z4_2008_orange",65500],
			["cl3_z4_2008_purple",65500],
			["cl3_z4_2008_red",65500],
			["cl3_z4_2008_sand",65500],
			["cl3_z4_2008_silver",65500],
			["cl3_z4_2008_violet",65500],
			["cl3_z4_2008_white",65500],
			["cl3_z4_2008_yellow",65500],
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
			["C_Van_01_box_F",17000],
			["I_Truck_02_transport_F",45000],
			["I_Truck_02_covered_F",65000],
			["B_Truck_01_transport_F",95000],
			["O_Truck_03_transport_F",105000],
			["O_Truck_03_covered_F",55000],
			["B_Truck_01_box_F",165000],
			["O_Truck_03_device_F",180000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",160000],
			["O_MRAP_02_hmg_F",395000],		
			["B_Heli_Light_01_F",85000],
			["O_Heli_Attack_02_F",1200000],
			["B_G_Offroad_01_armed_F",950000],
			["cl3_458_camo",80000],
			["cl3_458_camo_urban",80000],
			["cl3_arielatom_camo",70000],
			["cl3_arielatom_camo_urban",70000],
			["cl3_arielatom_race_camo",60000],
			["cl3_arielatom_race_camo_urban",60000],
			["cl3_carrera_gt_camo",125000],
			["cl3_carrera_gt_camo_urban",125000],
			["cl3_civic_vti_camo",69500],
			["cl3_civic_vti_camo_urban",69500],
			["cl3_dbs_volante_camo",110000],
			["cl3_dbs_volante_camo_urban",110000],
			["cl3_defender_110_cammo",25000],
			["cl3_dodge_charger_f_camo",125000],
			["cl3_dodge_charger_f_camourban",125000],
			["cl3_e60_m5_camo",45000],
			["cl3_e60_m5_camo_urban",45000],
			["cl3_e63_amg_camo",50000],
			["cl3_e63_amg_camo_urban",50000],
			["cl3_golf_mk2_camo",12500],
			["cl3_golf_mk2_camo_urban",12500],
			["cl3_insignia_camo",25000],
			["cl3_insignia_camo_urban",25000],
			["cl3_lamborghini_gt1_camo",95000],
			["cl3_lamborghini_gt1_camo_urban",95000],
			["cl3_lamborghini_gt1_camo_urban",95000],
			["cl3_murcielago_camo",100000],
			["cl3_polo_gti_camo",10500],	
			["cl3_polo_gti_camo_urban",10500],
			["cl3_r8_spyder_camo",110000],
			["cl3_r8_spyder_camo_urban",110000],
			["cl3_range_rover_camo",23000],
			["cl3_range_rover_camo_urban",23000],
			["cl3_reventon_camo",130000],
			["cl3_reventon_camo_urban",130000],
			["cl3_taurus_camo",45000],
			["cl3_taurus_camo_urban",45000],
			["cl3_z4_2008_camo",65500],
			["cl3_z4_2008_camo_urban",65500]
		];
	};
	
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",1200];
		_return pushBack
		["C_SUV_01_F",3500];
		if(FETCH_CONST(life_coplevel) > 1) then
		{
			_return set[count _return,
			["DAR_ExplorerPolice",7500]];
			_return set[count _return,
			["DAR_CVPIAux",5000]];
		};
		if(FETCH_CONST(life_coplevel) > 2) then
		{
			_return set[count _return,
			["DAR_TaurusPolice",15000]];
			_return set[count _return,
			["DAR_TahoePolice",15000]];
			_return set[count _return,
			["DAR_TahoePoliceDet",15000]];
			_return set[count _return,
			["DAR_TaurusPoliceState",12000]];
			_return set[count _return,
			["DAR_ChargerPolice",10000]];
			_return set[count _return,
			["DAR_ExplorerPoliceStealth",25000]];
			_return set[count _return,
			["DAR_ChargerPoliceState",20000]];
		};	
		if(FETCH_CONST(life_coplevel) > 5) then
		{	
			_return set[count _return,
			["cl3_reventon_clpd",95000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",395000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",125000],
			["O_Heli_Light_02_unarmed_F",350000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",55000];
		if(FETCH_CONST(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",120000];
		};
		if(FETCH_CONST(life_coplevel) > 3) then
		{
			_return pushBack
			["I_Heli_light_03_F",85000];
		};
	};
	
	case "cop_airhq":
	{
		_return pushBack
		["B_Heli_Light_01_F",65000];
		if(FETCH_CONST(life_coplevel) > 2) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",95000];
			_return pushBack
			["B_MRAP_01_hmg_F",395000];
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
			["B_SDV_01_F",45000]
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

		if(FETCH_CONST(life_donatorlvl) > 0) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",15000]];
			_return set[count _return,["B_Heli_Light_01_F",95000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",40000]];
			_return set[count _return,["C_Kart_01_F",200]];
			_return set[count _return,["O_Truck_03_covered_F",90000]];
			_return set[count _return,["I_Heli_Transport_02_F",170000]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",120000]];
			_return set[count _return,["O_Truck_03_covered_F",15000]];
		};
	};
};

_return;

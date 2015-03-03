/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	/* ADDONS */
	case "demian2435_police_helicopter": {90};
	case "demian2435_police_offroad": {65};
	case "demian2435_police_car": {50};
	case "demian2435_swat_offroad": {80};
	case "demian2435_swat_hunter": {100};
	case "MMT_USMC": {10};
	case "bwi_a3_t6a_1": {40};
	case "bwi_a3_t6a_2": {40};
	case "bwi_a3_t6a_6": {40};
	case "bwi_a3_t6a_7": {40};
	case "bwi_a3_t6a_nta": {40};
	case "GNT_C185": {40};
	case "GNT_C185F": {40};
	case "MMT_USMC": {10};
	case "RDS_Octavia_Civ_01": {50};
	case "RDS_Gaz24_Civ_01": {50};
	case "RDS_Lada_Civ_01": {50};
	case "RDS_S1203_Civ_01": {70};
	case "RDS_Golf4_Civ_01": {40};
	case "RDS_Ikarus_Civ_02": {130};
	case "DAR_MK23ADT": {200};
	case "sfp_c303_tour": {70};
	
	case "D41_Trawler": {200};
	
	case "CL3_bus_cl_blue": {80};
	case "CL3_bus_cl_green": {80};
	case "CL3_bus_cl_violet": {80};
	case "CL3_bus_cl_grey": {80};
	
	case "cl3_polo_gti_black": {40};
	case "cl3_polo_gti_white": {40};
	case "cl3_polo_gti_blue": {40};
	case "cl3_polo_gti_green": {40};
	case "cl3_polo_gti_yellow": {40};
	case "cl3_polo_gti_violet": {40};
	case "cl3_polo_gti_grey": {40};
	case "cl3_polo_gti_orange": {40};
	
	case "cl3_civic_vti_black": {40};
	case "cl3_civic_vti_white": {40};
	case "cl3_civic_vti_blue": {40};
	case "cl3_civic_vti_green": {40};
	case "cl3_civic_vti_yellow": {40};
	case "cl3_civic_vti_violet": {40};
	case "cl3_civic_vti_grey": {40};
	case "cl3_civic_vti_orange": {40};
	
	case "cl3_golf_mk2_black": {40};
	case "cl3_golf_mk2_white": {40};
	case "cl3_golf_mk2_blue": {40};
	case "cl3_golf_mk2_green": {40};
	case "cl3_golf_mk2_yellow": {40};
	case "cl3_golf_mk2_violet": {40};
	case "cl3_golf_mk2_grey": {40};
	case "cl3_golf_mk2_orange": {40};
	
	case "cl3_range_rover_black": {50};
	case "cl3_range_rover_white": {50};
	case "cl3_range_rover_blue": {50};
	case "cl3_range_rover_green": {50};
	case "cl3_range_rover_yellow": {50};
	case "cl3_range_rover_violet": {50};
	case "cl3_range_rover_grey": {50};
	case "cl3_range_rover_orange": {50};
	case "cl3_range_rover_camo": {50};
	
	case "cl3_insignia_black": {40};
	case "cl3_insignia_white": {40};
	case "cl3_insignia_blue": {40};
	case "cl3_insignia_green": {40};
	case "cl3_insignia_yellow": {40};
	case "cl3_insignia_violet": {40};
	case "cl3_insignia_grey": {40};
	case "cl3_insignia_orange": {40};
	
	case "B_G_Offroad_01_armed_F": {50};
	
	case "C_Offroad_01_F": {60};
	case "C_Offroad_01_repair_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {80};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {90};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {60};
	case "O_Heli_Light_02_unarmed_F": {90};
	case "B_Heli_Light_01_armed_F": {70};
	case "I_Heli_Transport_02_F": {250};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "GNT_C185": {100};
	case "GNT_C185F": {100};
	
	case "Cha_Mi17_Civilian": {150};
	
	case "UNARMED_CH_47F": {190};
	case "RAMP_CH_47F": {170};
	
	case "BAF_Offroad_D": {60};
	case "BAF_Offroad_W": {60};
	

	case "I_Truck_02_transport_F": {150};
	case "I_Truck_02_covered_F": {170};
	case "B_Truck_01_transport_F": {190};
	case "O_Truck_03_transport_F": {210};
	case "ALFR_GeK_Scania_420_bleu": {230};
	case "ALFR_GeK_Scania_420_blanc": {230};
	case "ALFR_GeK_Scania_420_noir": {230};
	case "O_Truck_03_covered_F": {250};
	case "B_Truck_01_box_F": {310};
	case "O_Truck_03_device_F": {330};
	
	case "B_Truck_01_ammo_F": {350};
	case "O_Truck_03_ammo_F": {400};
	
	case "B_Truck_01_box_F_IRMAT": {370};
	case "C_Van_01_box_F_IRMAT": {110};
	
	default {-1};
};
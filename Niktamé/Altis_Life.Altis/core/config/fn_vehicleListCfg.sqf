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
			["C_Kart_01_Blu_F",190000],
			["C_Kart_01_Fuel_F",190000],
			["C_Kart_01_Red_F",190000],
			["C_Kart_01_Vrana_F",190000]
		];
	};
	
	case "med_shop":
	{
		_return set[count _return,["C_Offroad_01_repair_F",0]];
		_return set[count _return,["C_SUV_01_F",0]];
		_return set[count _return,["cl3_suv_taxi",0]];
	
		if(__GETC__(life_medicLevel) > 2) then
		{
			_return set[count _return,["cl3_bus_cl_yellow",0]];
		};
	};
	
	case "med_air_hs": {
		
		_return set[count _return,["B_Heli_Light_01_F",0]];
		
		if(__GETC__(life_medicLevel) > 2) then
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",0]];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1000],
			["cl3_polo_gti_black",5000],
			["cl3_polo_gti_white",5000],
			["cl3_polo_gti_blue",5000],
			["cl3_polo_gti_green",5000],
			["cl3_polo_gti_yellow",5000],
			["cl3_polo_gti_violet",5000],
			["cl3_polo_gti_grey",5000],
			["cl3_polo_gti_orange",5000],
			["cl3_civic_vti_black",8000],
			["cl3_civic_vti_white",8000],
			["cl3_civic_vti_blue",8000],
			["cl3_civic_vti_green",8000],
			["cl3_civic_vti_yellow",8000],
			["cl3_civic_vti_violet",8000],
			["cl3_civic_vti_grey",8000],
			["cl3_civic_vti_orange",8000],
			["cl3_golf_mk2_black",9000],
			["cl3_golf_mk2_white",9000],
			["cl3_golf_mk2_blue",9000],
			["cl3_golf_mk2_green",9000],
			["cl3_golf_mk2_yellow",9000],
			["cl3_golf_mk2_violet",9000],
			["cl3_golf_mk2_grey",9000],
			["cl3_golf_mk2_orange",9000],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",11000],
			["cl3_range_rover_black",14000],
			["cl3_range_rover_white",14000],
			["cl3_range_rover_blue",14000],
			["cl3_range_rover_green",14000],
			["cl3_range_rover_yellow",14000],
			["cl3_range_rover_violet",14000],
			["cl3_range_rover_grey",14000],
			["cl3_range_rover_orange",14000],
			["cl3_range_rover_camo",14000],
			["C_Hatchback_01_sport_F",80000],
			["C_Van_01_transport_F",40000],
			["C_Van_01_box_F",50000]
		];
		
		if(life_job == "IRMAT") then {
			
			_return set[count _return,["C_Van_01_box_F_IRMAT",70000]];
		};
	};
	
	case "civ_car_luxe":
	{
		_return = 
		[
			["cl3_taurus_black",140000],
			["cl3_taurus_white",140000],
			["cl3_taurus_blue",140000],
			["cl3_taurus_green",140000],
			["cl3_taurus_yellow",140000],
			["cl3_taurus_violet",140000],
			["cl3_taurus_grey",140000],
			["cl3_taurus_orange",140000],
		
			["cl3_dbs_volante_black",190000],
			["cl3_dbs_volante_white",190000],
			["cl3_dbs_volante_blue",190000],
			["cl3_dbs_volante_green",190000],
			["cl3_dbs_volante_yellow",190000],
			["cl3_dbs_volante_violet",190000],
			["cl3_dbs_volante_grey",190000],
			["cl3_dbs_volante_orange",190000],
			
			["cl3_e63_amg_black",230000],
			["cl3_e63_amg_white",230000],
			["cl3_e63_amg_blue",230000],
			["cl3_e63_amg_green",230000],
			["cl3_e63_amg_yellow",230000],
			["cl3_e63_amg_violet",230000],
			["cl3_e63_amg_grey",230000],
			["cl3_e63_amg_orange",230000],
			
			["cl3_insignia_black",350000],
			["cl3_insignia_white",350000],
			["cl3_insignia_blue",350000],
			["cl3_insignia_green",350000],
			["cl3_insignia_yellow",350000],
			["cl3_insignia_violet",350000],
			["cl3_insignia_grey",350000],
			["cl3_insignia_orange",350000],
			
			["cl3_r8_spyder_black",500000],
			["cl3_r8_spyder_white",500000],
			["cl3_r8_spyder_blue",500000],
			["cl3_r8_spyder_green",500000],
			["cl3_r8_spyder_yellow",500000],
			["cl3_r8_spyder_violet",500000],
			["cl3_r8_spyder_grey",500000],
			["cl3_r8_spyder_orange",500000],
			
			["cl3_carrera_gt_black",700000],
			["cl3_carrera_gt_white",700000],
			["cl3_carrera_gt_blue",700000],
			["cl3_carrera_gt_green",700000],
			["cl3_carrera_gt_yellow",700000],
			["cl3_carrera_gt_violet",700000],
			["cl3_carrera_gt_grey",700000],
			["cl3_carrera_gt_orange",700000],
			
			["cl3_lamborghini_gt1_2tone1",900000],
			["cl3_lamborghini_gt1_2tone2",900000],
			["cl3_lamborghini_gt1_2tone3",900000],
			["cl3_lamborghini_gt1_2tone4",900000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["I_Truck_02_transport_F",120000],
			["I_Truck_02_covered_F",190000],
			["B_Truck_01_transport_F",250000],
			["O_Truck_03_transport_F",320000],
			["ALFR_GeK_Scania_420_bleu",480000],
			["ALFR_GeK_Scania_420_blanc",480000],
			["ALFR_GeK_Scania_420_noir",480000],
			["O_Truck_03_covered_F",600000],
			["B_Truck_01_box_F",750000],
			["O_Truck_03_device_F",800000]
		];	
		
		if(life_job == "IRMAT") then {
			
			_return set[count _return,["B_Truck_01_box_F_IRMAT",900000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["GNT_C185",1200000],
			["GNT_C185F",1400000],
			["B_Heli_Light_01_F",1800000],
			["O_Heli_Light_02_unarmed_F",3000000],
			["Cha_Mi17_Civilian",4600000]
		];
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};	
	
	case "reb_car":
	{
		_return set[count _return,["I_Quadbike_01_F",900]];
		_return set[count _return,["B_G_Offroad_01_F",5000]];
		
		if(license_civ_contracts) then
		{
			_return set[count _return,["I_G_Offroad_01_armed_F",900000]];
			_return set[count _return,["O_MRAP_02_F",750000]];
			_return set[count _return,["B_Heli_Light_01_F",1200000]];
			_return set[count _return,["UNARMED_CH_47F",5900000]];
			_return set[count _return,["RAMP_CH_47F",9200000]];
		};
		
		if(life_is_rebel) then
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",2600000]];
			_return set[count _return,["DAR_MK23ADT",8000000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,["demian2435_police_offroad",0]];
		_return set[count _return,["demian2435_police_car",0]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,["cl3_dodge_charger_etu",0]];
			_return set[count _return,["cl3_dodge_charger_k9",0]];
			_return set[count _return,["cl3_range_rover_black",0]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,["cl3_taurus_black",0]];
			_return set[count _return,["demian2435_swat_hunter",0]];
			_return set[count _return,["CL3_bus_cl_jail",0]];
			_return set[count _return,["cl3_reventon_clpd",0]];
		};
		
		if(life_is_gign) then {
		
			_return set[count _return,["I_APC_Wheeled_03_cannon_F",0]];
		};
	};
	
	case "cop_air":
	{
		_return set[count _return,["demian2435_police_helicopter",0]];
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,["B_Heli_Transport_01_F",0]];
			_return set[count _return,["I_Heli_light_03_unarmed_F",0]];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,["demian2435_police_helicopter",0]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,["B_Heli_Transport_01_F",0]];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,["B_MRAP_01_hmg_F",0]];
		};
	};
	
	case "cop_ship":
	{
		_return set[count _return,["B_Boat_Transport_01_F",0]];
		_return set[count _return,["C_Boat_Civil_01_police_F",0]];
		_return set[count _return,["B_Boat_Armed_01_minigun_F",0]];
	};
	
	case "swat_car":
	{
		_return set[count _return,["demian2435_swat_offroad",0]];
		_return set[count _return,["demian2435_swat_hunter",0]];
	};
	
	case "swat_air":
	{
		_return set[count _return,["B_Heli_Light_01_F",0]];
		_return set[count _return,["O_Heli_Light_02_unarmed_F",0]];
	};
	
	case "swat_ship":
	{
		_return set[count _return,["B_Boat_Transport_01_F",0]];
		_return set[count _return,["B_SDV_01_F",0]];
		_return set[count _return,["Submarine_01_F",0]];
	};
};

_return;


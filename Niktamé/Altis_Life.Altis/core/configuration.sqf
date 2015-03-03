#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_god = false; //God mode admin
life_frozen = false; //Geler admin
life_markers = false; //Marqueurs admin
Life_request_timer = false;
life_smartphoneTarget = ObjNull;
life_is_alive = false;
life_jail = 0;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,9500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,3); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); // Changé [DE BASE 75000] //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,9000); //BLEH.
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,false); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_drink = 0;
life_battery = 100;
__CONST__(life_paycheck_period,10); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;

life_grade = "";
life_job = "";

life_gouv_budget = 0;
life_cop_budget = 0;
life_med_budget = 0;

life_cop_pay = 2000;
life_med_pay = 2000;
life_civ_pay = 1500;

life_rebel = false;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: {

		life_atmcash = 10000;
		life_paycheck = 2000;
	};

	case civilian: {

		life_atmcash = 10000;
		life_paycheck = 1500;
	};
	
	case independent: {

		life_atmcash = 20000;
		life_paycheck = 2000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_whisky",
	"life_inv_biere",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_battery",
	"life_inv_jewelry",
	"life_inv_microchips",
	"life_inv_beer",
	"life_inv_gpstracker",
	"life_inv_rein"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_contracts","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_jewelry","civ"],
	["license_civ_microchips","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["rein",20000],["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["whisky",650]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1650],
	["heroinp",3900],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",2300],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2450],
	["tbacon",25],
	["lockpick",85],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3000],
	["cocainep",6200],
	["diamond",750],
	["diamondc",4000],
	["iron_r",1250],
	["copper_r",1200],
	["salt_r",2150],
	["glass",1100],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",950],
	["storagesmall",30000],
	["storagebig",70000],
	["goldbar",50000],
	["battery",200],
	["jewelry",4200],
	["microchips",3900],
	["beer",45],
	["gpstracker",2000],
	["rein",262000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",0],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["battery",750],
	["beer",90],
	["gpstracker",20000],
	["rein",290000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",0],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",45000],
	["B_Heli_Light_01_F",45000],
	["O_Heli_Light_02_unarmed_F",65000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",7500]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",400],
	["cl3_polo_gti_black",2500],
	["cl3_polo_gti_white",2500],
	["cl3_polo_gti_blue",2500],
	["cl3_polo_gti_green",2500],
	["cl3_polo_gti_yellow",2500],
	["cl3_polo_gti_violet",2500],
	["cl3_polo_gti_grey",2500],
	["cl3_polo_gti_orange",2500],
	["cl3_civic_vti_black",4000],
	["cl3_civic_vti_white",4000],
	["cl3_civic_vti_blue",4000],
	["cl3_civic_vti_green",4000],
	["cl3_civic_vti_yellow",4000],
	["cl3_civic_vti_violet",4000],
	["cl3_civic_vti_grey",4000],
	["cl3_civic_vti_orange",4000],
	["cl3_golf_mk2_black",4500],
	["cl3_golf_mk2_white",4500],
	["cl3_golf_mk2_blue",4500],
	["cl3_golf_mk2_green",4500],
	["cl3_golf_mk2_yellow",4500],
	["cl3_golf_mk2_violet",4500],
	["cl3_golf_mk2_grey",4500],
	["cl3_golf_mk2_orange",4500],
	["C_Hatchback_01_F",4750],
	["C_Offroad_01_F",800],
	["cl3_range_rover_black",7000],
	["cl3_range_rover_white",7000],
	["cl3_range_rover_blue",7000],
	["cl3_range_rover_green",7000],
	["cl3_range_rover_yellow",7000],
	["cl3_range_rover_violet",7000],
	["cl3_range_rover_grey",7000],
	["cl3_range_rover_orange",7000],
	["cl3_range_rover_camo",7000],
	["C_SUV_01_F",10000],
	["DAR_TahoePoliceDet",30000],
	["C_Hatchback_01_sport_F",40000],
	["C_Van_01_transport_F",20000],
	["C_Van_01_box_F",25000],
	
	["cl3_taurus_black",70000],
	["cl3_taurus_white",70000],
	["cl3_taurus_blue",70000],
	["cl3_taurus_green",70000],
	["cl3_taurus_yellow",70000],
	["cl3_taurus_violet",70000],
	["cl3_taurus_grey",70000],
	["cl3_taurus_orange",70000],
		
	["cl3_dbs_volante_black",95000],
	["cl3_dbs_volante_white",95000],
	["cl3_dbs_volante_blue",95000],
	["cl3_dbs_volante_green",95000],
	["cl3_dbs_volante_yellow",95000],
	["cl3_dbs_volante_violet",95000],
	["cl3_dbs_volante_grey",95000],
	["cl3_dbs_volante_orange",95000],
			
	["cl3_e63_amg_black",115000],
	["cl3_e63_amg_white",115000],
	["cl3_e63_amg_blue",115000],
	["cl3_e63_amg_green",115000],
	["cl3_e63_amg_yellow",115000],
	["cl3_e63_amg_violet",115000],
	["cl3_e63_amg_grey",115000],
	["cl3_e63_amg_orange",115000],
			
	["cl3_insignia_black",175000],
	["cl3_insignia_white",175000],
	["cl3_insignia_blue",175000],
	["cl3_insignia_green",175000],
	["cl3_insignia_yellow",175000],
	["cl3_insignia_violet",175000],
	["cl3_insignia_grey",175000],
	["cl3_insignia_orange",175000],
			
	["cl3_r8_spyder_black",250000],
	["cl3_r8_spyder_white",250000],
	["cl3_r8_spyder_blue",250000],
	["cl3_r8_spyder_green",250000],
	["cl3_r8_spyder_yellow",250000],
	["cl3_r8_spyder_violet",250000],
	["cl3_r8_spyder_grey",250000],
	["cl3_r8_spyder_orange",250000],
			
	["cl3_carrera_gt_black",350000],
	["cl3_carrera_gt_white",350000],
	["cl3_carrera_gt_blue",350000],
	["cl3_carrera_gt_green",350000],
	["cl3_carrera_gt_yellow",350000],
	["cl3_carrera_gt_violet",350000],
	["cl3_carrera_gt_grey",350000],
	["cl3_carrera_gt_orange",350000],
			
	["cl3_lamborghini_gt1_2tone1",450000],
	["cl3_lamborghini_gt1_2tone2",450000],
	["cl3_lamborghini_gt1_2tone3",450000],
	["cl3_lamborghini_gt1_2tone4",450000],
	["cl3_lamborghini_gt1_2tone6",450000],
	["cl3_lamborghini_gt1_2tone7",450000],
			
	["CL3_bus_cl_blue",65000],
	["CL3_bus_cl_green",65000],
	["CL3_bus_cl_violet",65000],
	["CL3_bus_cl_grey",65000],
	["I_Truck_02_transport_F",60000],
	["I_Truck_02_covered_F",80000],
	["B_Truck_01_transport_F",125000],
	["O_Truck_03_transport_F",160000],
	["O_Truck_03_covered_F",200000],
	["B_Truck_01_box_F",240000],
	["O_Truck_03_device_F",300000],
	
	["GNT_C185",600000],
	["GNT_C185F",700000],
	["B_Heli_Light_01_unarmed_F",900000],
	["O_Heli_Light_02_unarmed_F",1500000],
			
	["C_Rubberboat",2500],
	["C_Boat_Civil_01_F",11000],
			
	["B_G_Offroad_01_armed_F",200000],
	["O_MRAP_02_F",150000],
			
	["O_Heli_Light_02_unarmed_F",1000000],
	["O_MRAP_02_F",3000000],
			
	["demian2435_police_offroad",5000],
	["demian2435_police_car",6000],
	["cl3_dodge_charger_etu",9000],
	["cl3_dodge_charger_k9",9000],
	["cl3_dodge_charger_etu",9000],
	["cl3_range_rover_black",40000],
	["cl3_taurus_black",20000],
	["demian2435_swat_offroad",4000],
	["CL3_bus_cl_jail",70000],
	["demian2435_police_helicopter",500000],
	["B_Heli_Transport_01_F",900000],
	["B_MRAP_01_hmg_F",1200000],
			
	["ALFR_GeK_Scania_420",375000],
	["ALFR_GeK_Scania_420_bleu",375000],
	["ALFR_GeK_Scania_420_blanc",375000],
	["ALFR_GeK_Scania_420_noir",375000],
	["ALFR_GeK_Scania_420_orange",375000]
];
__CONST__(life_garage_sell,life_garage_sell);

#define VITEMMACRO(NAME,DISPLAYNAME,VARNAME,WEIGHT,BUYPRICE,SELLPRICE,ILLEGAL,EDIBLE,ICON) class NAME { \
		variable = VARNAME; \
		weight = WEIGHT; \
		displayName = DISPLAYNAME; \
		buyPrice = BUYPRICE; \
		sellPrice = SELLPRICE; \
		illegal = ILLEGAL; \
		edible = EDIBLE; \
		icon = ICON; \
	};
	
#define LICENSEMACRO(NAME,DISPLAYNAME,VARNAME,PRICE,ILLEGAL,SIDE) class NAME { \
		variable = VARNAME; \
		displayName = DISPLAYNAME; \
		price = PRICE; \
		illegal = ILLEGAL; \
		side = SIDE; \
	};

#define true 1
#define false 0
#include "Config_Clothing.hpp"

/*
	Master settings for various features and functionality	
*/
class Life_Settings {
	/* Persistent Settings */
    save_civ_weapons = true; //Allow civilians to save weapons on them?
	save_virtualItems = true; //Save Virtual items (all sides)?

	/* Revive system settings */
    revive_cops = false; //true to enable cops the ability to revive everyone or false for only medics/ems.
    revive_fee = 200; //Revive fee that players have to pay and medics / EMS are rewarded
	
	/* House related settings */
	house_limit = 5; //Maximum amount of houses a player can own.

	/* Gang related settings */
    gang_price = 3000; //Price for creating a gang, remember they are persistent so keep it reasonable to avoid millions of gangs.
    gang_upgradeBase = 100; //The base cost for upgrading slots in a gang
	gang_upgradeMultiplier = 2.5; //Not sure if in use?

	/* Player-related systems */
	enable_fatigue = true; //Set to false to disable the ARMA 3 false system.
	total_maxWeight = 24; //Static variable for the maximum weight allowed without having a backpack
	paycheck_period = 5; //Scaled in minutes
	
	/* Impound Variables */
    impound_car = 30; //Price for impounding cars
    impound_boat = 90; //Price for impounding boats
    impound_air = 150; //Price for impounding helicopters / planes

	/* Car-shop Settings */
	vehicleShop_rentalOnly[] = { "B_MRAP_01_hmg_F", "B_G_Offroad_01_armed_F" };

	/* Job-related stuff */
	delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_15", "dp_16", "dp_17", "dp_18", "dp_19", "dp_20", "dp_21", "dp_22", "dp_23", "dp_24", "dp_25" };

	sellArray[] = {
        {"arifle_sdar_F", 2},
        {"hgun_P07_snds_F", 2},
        {"hgun_P07_F", 2},
        {"ItemGPS", 2},
        {"ToolKit", 2},
        {"FirstAidKit", 2},
        {"Medikit", 2},
        {"NVGoggles", 2},
        {"16Rnd_9x21_Mag", 2},
        {"20Rnd_556x45_UW_mag", 2},
        {"ItemMap", 2},
        {"ItemCompass", 2},
        {"Chemlight_blue", 2},
        {"Chemlight_yellow", 2},
        {"Chemlight_green", 2},
        {"Chemlight_red", 2},
        {"hgun_Rook40_F", 2},
        {"arifle_Katiba_F", 2},
        {"30Rnd_556x45_Stanag", 2},
        {"20Rnd_762x51_Mag", 2},
        {"30Rnd_65x39_caseless_green", 2},
        {"DemoCharge_Remote_Mag", 2},
        {"SLAMDirectionalMine_Wire_Mag", 2},
        {"optic_ACO_grn", 2},
        {"acc_flashlight", 2},
        {"srifle_EBR_F", 2},
        {"arifle_TRG21_F", 2},
        {"optic_MRCO", 2},
        {"optic_Aco", 2},
        {"arifle_MX_F", 2},
        {"arifle_MXC_F", 2},
        {"arifle_MXM_F", 2},
        {"MineDetector", 2},
        {"optic_Holosight", 2},
        {"acc_pointer_IR", 2},
        {"arifle_TRG20_F", 2},
        {"SMG_01_F", 2},
        {"arifle_Mk20C_F", 2},
        {"30Rnd_45ACP_Mag_SMG_01", 2},
        {"30Rnd_9x21_Mag", 2}
	};
};

//Virtual Items
//VITEMMACRO(ITEM, "ITEM", "Item", Weight, Price, Sell, Illegal(boolean), Life value(drink, eat), "Icon")
class VirtualItems {
	//Misc
	VITEMMACRO(pickaxe, "STR_Item_Pickaxe", "pickaxe", 2, 750, 350, false, -1, "")
	VITEMMACRO(fuelEmpty, "STR_Item_FuelE", "fuelEmpty", 2, -1, -1, false, -1, "icons\ico_fuelempty.paa")
	VITEMMACRO(fuelFull, "STR_Item_FuelF", "fuelFull", 5, 850, 500, false, -1, "icons\ico_fuel.paa")
	VITEMMACRO(spikeStrip, "STR_Item_SpikeStrip", "spikeStrip", 15, 2500, 1200, false, -1, "")
	VITEMMACRO(lockpick, "STR_Item_Lockpick", "lockpick", 1, 150, 75, false, -1, "")
	VITEMMACRO(goldbar, "STR_Item_GoldBar", "goldBar", 12, -1, 30000, false, -1, "icons\goldbar.paa")
	VITEMMACRO(blastingcharge, "STR_Item_BCharge", "blastingCharge", 15, 35000, -1, true, -1, "icons\ico_blastingCharge.paa")
	VITEMMACRO(boltcutter, "STR_Item_BCutter", "boltCutter", 5, 7500, -1, true, -1, "icons\ico_boltcutters.paa")
	VITEMMACRO(defusekit, "STR_Item_DefuseKit", "defuseKit", 2, 2500, -1, false, -1, "")
    VITEMMACRO(storagesmall, "STR_Item_StorageBS", "storageSmall", 5, 12000, -1, false, -1, "icons\ico_storageSmall.paa")
    VITEMMACRO(storagebig, "STR_Item_StorageBL", "storageBig", 10, 20000, -1, false, -1, "icons\ico_storageBig.paa")
    VITEMMACRO(rein, "Rein", "rein", 12, 20000, 60000, true, -1, "")

	//Mined Items
	VITEMMACRO(oil_unprocessed, "STR_Item_OilU", "oilUnprocessed", 7, -1, -1, false, -1, "")
	VITEMMACRO(oil_processed, "STR_Item_OilP", "oilProcessed", 6, -1, 3200, false, -1, "")
	VITEMMACRO(copper_unrefined, "STR_Item_CopperOre", "copperUnrefined", 4, -1, -1, false, -1, "")
	VITEMMACRO(copper_refined, "STR_Item_CopperIngot", "copperRefined", 3, -1, 1500, false, -1, "")
	VITEMMACRO(iron_unrefined, "STR_Item_IronOre", "ironUnrefined", 5, -1, -1, false, -1, "")
	VITEMMACRO(iron_refined, "STR_Item_IronIngot", "ironRefined", 3, -1, 3200, false, -1, "")
	VITEMMACRO(salt_unrefined, "STR_Item_Salt", "saltUnrefined", 3, -1, -1, false, -1, "")
	VITEMMACRO(salt_refined, "STR_Item_SaltR", "saltRefined", 1, -1, 1450, false, -1, "")
	VITEMMACRO(sand, "STR_Item_Sand", "sand", 3, -1, -1, false, -1, "")
	VITEMMACRO(glass, "STR_Item_Glass", "glass", 1, -1, 1450, false, -1, "")
	VITEMMACRO(diamond_uncut, "STR_Item_DiamondU", "diamondUncut", 4, -1, 750, false, -1, "")
	VITEMMACRO(diamond_cut, "STR_Item_DiamondC", "diamondCut", 2, -1, 2000, false, -1, "")
	VITEMMACRO(rock, "STR_Item_Rock", "rock", 6, -1, -1, false, -1, "")
	VITEMMACRO(cement, "STR_Item_CementBag", "cement", 5, -1, 1950, false, -1, "")

	//Drugs
	VITEMMACRO(heroin_unprocessed, "STR_Item_HeroinU", "heroinUnprocessed", 6, -1, -1, true, -1, "")
    VITEMMACRO(heroin_processed, "STR_Item_HeroinP", "heroinProcessed", 4, 500, 1150, true, -1, "")
    VITEMMACRO(cannabis, "STR_Item_Cannabis", "cannabis", 3, -1, -1, true, -1, "icons\ico_cannabis.paa")
    VITEMMACRO(marijuana, "STR_Item_Marijuana", "marijuana", 2, 300, 850, true, -1, "icons\ico_marijuana.paa")
    VITEMMACRO(cocaine_unprocessed, "STR_Item_CocaineU", "cocaineUnprocessed", 6, -1, 500, true, -1, "icons\ico_cocain_unprocessed.paa")
    VITEMMACRO(cocaine_processed, "STR_Item_CocaineP", "cocaineProcessed", 4, -1, 1000, true, -1, "icons\ico_cocain_processed.paa")

	//Drink
    VITEMMACRO(redgull, "STR_Item_RedGull", "redgull", 1, 10, 200, false, 100, "icons\ico_redgull.paa")
    VITEMMACRO(coffee, "STR_Item_Coffee", "coffee", 1, 4, 5, false, 100, "")
    VITEMMACRO(waterBottle, "STR_Item_WaterBottle", "waterBottle", 1, 3, 5, false, 100, "icons\ico_waterBottle.paa")
    VITEMMACRO(bottleddt420, "STR_Item_DT420", "bottleddt420", 1, 25, 5, false, -1, "icons\ico_dt420.paa")
    VITEMMACRO(bottledwhiskey, "STR_Item_Whiskey", "bottledwhiskey", 12, 10, 5, false, -1, "icons\ico_whiskey.paa")
    VITEMMACRO(bottledbeer, "STR_Item_Beer", "bottledbeer", 1, 6, 5, false, -1, "icons\ico_beer.paa")

	//Food
    VITEMMACRO(apple, "STR_Item_Apple", "apple", 1, 2, 1, false, 10, "icons\food.paa")
    VITEMMACRO(peach, "STR_Item_Peach", "peach", 1, 5, 3, false, 10, "icons\food.paa")
    VITEMMACRO(tbacon, "STR_Item_TBacon", "tbacon", 1, 10, 25, false, 40, "icons\ico_tbacon.paa")
    VITEMMACRO(donut, "STR_Item_Donuts", "donut", 1, 8, 6, false, 30, "icons\food.paa")
    VITEMMACRO(rabbit_raw, "STR_Item_Rabbit", "rabbitRaw", 2, -1, 25, false, -1, "icons\food.paa")
	VITEMMACRO(rabbit_grilled, "STR_Item_RabbitGrilled", "rabbitGrilled", 1, 150, 115, false, 20, "icons\ico_cookedMeat.paa")
	VITEMMACRO(salema_raw, "STR_Item_Salema", "salemaRaw", 2, -1, 45, false, -1, "icons\food.paa")
	VITEMMACRO(salema_grilled, "STR_Item_SalemaGrilled", "salemaGrilled", 1, 75, 55, false, 30, "icons\ico_cookedMeat.paa")
	VITEMMACRO(ornate_raw, "STR_Item_OrnateMeat", "ornateRaw", 2, -1, 40, false, -1, "icons\food.paa")
	VITEMMACRO(ornate_grilled, "STR_Item_OrnateGrilled", "ornateGrilled", 1, 175, 150, false, 25, "icons\ico_cookedMeat.paa")
	VITEMMACRO(mackerel_raw, "STR_Item_MackerelMeat", "mackerelRaw", 4, -1, 175, false, -1, "icons\food.paa")
	VITEMMACRO(mackerel_grilled, "STR_Item_MackerelGrilled", "mackerelGrilled", 2, 250, 200, false, 30, "icons\ico_cookedMeat.paa")
	VITEMMACRO(tuna_raw, "STR_Item_TunaMeat", "tunaRaw", 6, -1, 700, false, -1, "icons\food.paa")
	VITEMMACRO(tuna_grilled, "STR_Item_TunaGrilled", "tunaGrilled", 3, 1250, 1000, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(mullet_raw, "STR_Item_MulletMeat", "mulletRaw", 4, -1, 250, false, -1, "icons\food.paa")
	VITEMMACRO(mullet_fried, "STR_Item_MulletFried", "mulletFried", 2, 600, 400, false, 80, "icons\ico_cookedMeat.paa")
	VITEMMACRO(catshark_raw, "STR_Item_CatSharkMeat", "catsharkRaw", 6, -1, 300, false, -1, "icons\food.paa")
	VITEMMACRO(catshark_fried, "STR_Item_CatSharkFried", "catsharkFried", 3, 750, 500, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(turtle_raw, "STR_Item_TurtleMeat", "turtleRaw", 6, 4000, 3000, true, -1, "icons\food.paa")
	VITEMMACRO(turtle_soup, "STR_Item_TurtleSoup", "turtleSoup", 2, 2500, 1000, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(hen_raw, "STR_Item_HenRaw", "henRaw", 1, -1, 35, false, -1, "icons\food.paa")
	VITEMMACRO(hen_fried, "STR_Item_HenFried", "henFried", 1, 115, 85, false, 65, "icons\ico_cookedMeat.paa")
	VITEMMACRO(rooster_raw, "STR_Item_RoosterRaw", "roosterRaw", 1, -1, 35, false, -1, "icons\food.paa")
	VITEMMACRO(rooster_grilled, "STR_Item_RoosterGrilled", "roosterGrilled", 115, 85, false, 45, "icons\ico_cookedMeat.paa")
	VITEMMACRO(sheep_raw, "STR_Item_SheepRaw", "sheepRaw", 2, -1, 50, false, -1, "icons\food.paa")
	VITEMMACRO(sheep_grilled, "STR_Item_SheepGrilled", "sheepGrilled", 2, 155, 115, false, 100, "icons\ico_cookedMeat.paa")
	VITEMMACRO(goat_raw, "STR_Item_GoatRaw", "goatRaw", 2, -1, 75, false, -1, "icons\food.paa")
	VITEMMACRO(goat_grilled, "STR_Item_GoatGrilled", "goatGrilled", 2, 175, 135, false, 100, "icons\ico_cookedMeat.paa")
};


/*
	Licenses
	
	Params:
	CLASS ENTRY,DisplayName,VariableName,price,illegal,side indicator
*/
class Licenses {
    LICENSEMACRO(driver,"STR_License_Driver","driver",70,false,"civ")
    LICENSEMACRO(boat,"STR_License_Boat","boat",100,false,"civ")
    LICENSEMACRO(pilot,"STR_License_Pilot","pilot",1200,false,"civ")
    LICENSEMACRO(gun,"STR_License_Firearm","gun",400,false,"civ")
    LICENSEMACRO(dive,"STR_License_Diving","dive",130,false,"civ")
    LICENSEMACRO(oil,"STR_License_Oil","oil",400,false,"civ")
    LICENSEMACRO(cAir,"STR_License_Pilot","cAir",300,false,"cop")
    LICENSEMACRO(coastguard,"STR_License_CG","cg",150,false,"cop")
    LICENSEMACRO(heroin,"STR_License_Heroin","heroin",1000,true,"civ")
    LICENSEMACRO(marijuana,"STR_License_Marijuana","marijuana",1500,true,"civ")
    LICENSEMACRO(medmarijuana,"STR_License_Medmarijuana","medmarijuana",500,false,"civ")
    LICENSEMACRO(rebel,"STR_License_Rebel","rebel",5000,true,"civ")
    LICENSEMACRO(trucking,"STR_License_Truck","trucking",300,false,"civ")
    LICENSEMACRO(diamond,"STR_License_Diamond","diamond",700,false,"civ")
    LICENSEMACRO(salt,"STR_License_Salt","salt",200,false,"civ")
    LICENSEMACRO(cocaine,"STR_License_Cocaine","cocaine",1000,false,"civ")
    LICENSEMACRO(sand,"STR_License_Sand","sand",200,false,"civ")
    LICENSEMACRO(iron,"STR_License_Iron","iron",180,false,"civ")
    LICENSEMACRO(copper,"STR_License_Copper","copper",150,false,"civ")
    LICENSEMACRO(cement,"STR_License_Cement","cement",250,false,"civ")
    LICENSEMACRO(mAir,"STR_License_Pilot","mAir",300,false,"med")
    LICENSEMACRO(home,"STR_License_Home","home",1200,false,"civ")
};

class VirtualShops {
    class speakeasy {
        name = "Speakeasy";
        items[] = { "bottleddt420","bottledwhiskey","bottledbeer" };
    };

    class organ {
        name = "Acheteur d'organes";
        items[] = { "rein" };
    };

	class market {
		name = "STR_Shops_Market";
		items[] = { "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "storagesmall", "storagebig" };
	};

	class rebel {
		name = "STR_Shops_Rebel";
		items[] = { "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge" };
	};

	class gang {
		name = "STR_Shops_Gang";
		items[] = { "waterBottle", "rabbit_grilled", "apple", "redgull", "tbacon", "lockpick", "pickaxe", "fuelFull", "peach", "boltcutter", "blastingcharge" };
	};

	class wongs {
		name = "STR_Shops_Wongs";
		items[] = { "turtle_soup", "turtle_raw" };
	};

	class coffee {
		name = "STR_Shops_Coffee";
		items[] = { "coffee", "donuts" };
	};
	
	class drugdealer {
		name = "STR_Shops_DrugDealer";
		items[] = { "cocaine_processed", "heroin_processed", "marijuana" };
	};

	class oil {
		name = "STR_Shops_Oil";
		items[] = { "oil_processed", "pickaxe", "fuelFull" };
	};

	class fishmarket {
		name = "STR_Shops_FishMarket";
		items[] = { "salema_raw", "salema_grilled", "ornate_raw", "ornate_grilled", "mackerel_raw", "mackerel_grilled", "tuna_raw", "tuna_grilled", "mullet_raw", "mullet_fried", "catshark_raw", "catshark_fried" };
	};

	class glass {
		name = "STR_Shops_Glass";
		items[] = { "glass" };
	};

	class iron  {
		name = "STR_Shops_Minerals";
		items[] = { "iron_refined", "copper_refined" };
	};

	class diamond {
		name = "STR_Shops_Diamond";
		items[] = { "diamond_uncut", "diamond_cut" };
	};

	class salt {
		name = "STR_Shops_Salt";
		items[] = { "salt_refined" };
	};

	class cop {
		name = "STR_Shops_Cop";
		items[] = { "donuts", "coffee", "spikeStrip", "waterBottle", "rabbit_grilled", "apple", "redgull", "fuelFull", "defusekit" };
	};

	class cement {
		name = "STR_Shops_Cement";
		items[] = { "cement" };
	};

	class gold {
		name = "STR_Shops_Gold";
		items[] = { "goldbar" };
	};
};

#include "Config_Vehicles.hpp"

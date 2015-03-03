/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

if(_shop == "company_stuff" && life_job != "IRMAT") exitWith {};

switch (_shop) do
{
	case "market": {["Marché",["water","rabbit","apple","peach","redgull","tbacon","lockpick","pickaxe","beer","fuelF","battery","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "gang": {["Gang Market", ["water","rabbit","redgull","beer","pickaxe","fuelF","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","mauer","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "frigo": {["Frigo",["donuts","water","apple","redgull"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "jewelry": {["Bijouterie",["jewelry"]]};
	case "microchips": {["Jewelry Dealer",["microchips"]]};
	case "company_stuff": {["Matériel",["gpstracker"]]};
	case "medic": {["Objets",["donuts","water","apple","redgull"]]};
};

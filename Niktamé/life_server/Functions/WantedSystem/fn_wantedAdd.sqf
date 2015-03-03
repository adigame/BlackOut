/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine"
	Database Persistence By: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name","_pastCrimes","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "0": {_type = ["Altitude < 500 metres en ville | 200 metres en campagne",17000]};
	case "1": {_type = ["Assassinat",100000]};
	case "2": {_type = ["Consommation de stupefiants",9000]};
	case "3": {_type = ["Coups et blessures",29000]};
	case "4": {_type = ["Conduite dangereuse",5000]};
	case "5": {_type = ["Conduite sans permis adequat",4000]};
	case "6": {_type = ["Delit de fuite",19000]};
	case "7": {_type = ["Exces de vitesse",6000]};
	case "8": {_type = ["Enlevement",30000]};
	case "9": {_type = ["Evasion de prison",50000]};
	case "10": {_type = ["Extorsion",27000]};
	case "11": {_type = ["Feux de signalisation eteints la nuit",10000]};
	case "12": {_type = ["Feux eteints la nuit",4000]};
	case "13": {_type = ["Homicide",80000]};
	case "14": {_type = ["Homicide involontaire",40000]};
	case "15": {_type = ["Incitation a la violence",14000]};
	case "16": {_type = ["Ivresse sur la voie publique (> 0.8)",3000]};
	case "17": {_type = ["Menaces",16000]};
	case "18": {_type = ["Menaces de mort",22000]};
	case "19": {_type = ["Non assistance a personne en danger",9000]};
	case "20": {_type = ["Outrage",13000]};
	case "21": {_type = ["Port d'arme illegale",14000]};
	case "22": {_type = ["Possession de stupefiants",20000]};
	case "23": {_type = ["Possession d'un ou plusieurs vehicule(s) arme",19000]};
	case "24": {_type = ["Sequestration",40000]};
	case "25": {_type = ["Stationnement ou arret genant / interdit (Aerien)",8000]};
	case "26": {_type = ["Stationnement ou arret genant / interdit",4000]};
	case "27": {_type = ["Taux d’alcoolemie au volant > 0.8",10000]};
	case "28": {_type = ["Taux d’alcoolemie au volant > 0.5 et < 0.8",8000]};
	case "29": {_type = ["Tentative de vol de vehicule",15000]};
	case "30": {_type = ["Tentative de vol",12000]};
	case "31": {_type = ["Tentative de trafic de stupefiants",16000]};
	case "32": {_type = ["Tentative d'evasion de prison",30000]};
	case "33": {_type = ["Torture",32000]};
	case "34": {_type = ["Trafic illicite",20000]};
	case "35": {_type = ["Usurpation d'identite",9000]};
	case "36": {_type = ["Utilisation d'explosifs illegaux",10000]};
	case "37": {_type = ["Violences entraînant la mort",40000]};
	case "38": {_type = ["Vol",18000]};
	case "39": {_type = ["Vol de vehicule",14000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.

_result = format["SELECT wantedID, wantedCrimes FROM wanted WHERE wantedID='%1'",_uid];
waitUntil{!DB_Async_Active};
_queryResult = [_result,2] call DB_fnc_asyncCall;

_name = [_name] call DB_fnc_mresString;
_val = [(_type select 1)] call DB_fnc_numberSafe;

if(count _queryResult != 0) then
{
	_pastCrimes = [(_queryResult select 1)] call DB_fnc_mresToArray;
	_pastCrimes pushBack (_type select 0);
	_pastCrimes = [_pastCrimes] call DB_fnc_mresArray;
	_query = format["UPDATE wanted SET wantedCrimes = '%1', wantedBounty = wantedBounty + '%2', active = '1' WHERE wantedID='%3'",_pastCrimes,_val,_uid];
} else {
	_crimes = [[(_type select 0)]] call DB_fnc_mresArray;
	_query = format["INSERT INTO wanted (wantedID, wantedName, wantedCrimes, wantedBounty, active) VALUES('%1','%2','%3','%4', '1')",_uid,_name,_crimes,_val];
};

if(!isNil "_query") then {
	waitUntil{!DB_Async_Active};
	[_query,2] call DB_fnc_asyncCall;
};
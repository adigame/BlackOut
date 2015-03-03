/*
	File: fn_wantedCrimes.sqf
	Author: ColinM
	Assistance by: Paronity
	Stress Tests by: Midgetgrimm
	
	Description:
	Grabs a list of crimes committed by a person.
*/
private["_display","_criminal","_tab","_queryResult","_result","_ret","_crimesDb","_crimesArr","_type"];
disableSerialization;
_ret = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_criminal = [_this,1,[],[]] call BIS_fnc_param;

_result = format["SELECT wantedCrimes, wantedBounty FROM wanted WHERE active='1' AND wantedID='%1'",(_criminal select 0)];
waitUntil{!DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_result,2] call DB_fnc_asyncCall;

_ret = owner _ret;
_crimesArr = [];

_crimesDB = [(_queryResult select 0)] call DB_fnc_mresToArray;
if(typeName _crimesDb == "STRING") then {_crimesDb = call compile _crimesDb;};
_queryResult set[0,_crimesDb];
_type = _queryResult select 0;
{
	switch(_x) do
	{
		case "187V": {_x = "Meurtre véhiculé"};
		case "187": {_x = "Meurtre"};
		case "901": {_x = "Enfuis de prison"};
		case "261": {_x = "Rape"}; // Viol
		case "261A": {_x = "Attempted Rape"}; // Tentative de viol
		case "215": {_x = "Attempted Auto Theft"};
		case "213": {_x = "Utilisation d'éxplosives illégales"};
		case "211": {_x = "Vol à main armée"};
		case "207": {_x = "Kidnapping"};
		case "207A": {_x = "Tentative de Kidnapping"};
		case "390": {_x = "Intoxication publique"};
		case "487": {_x = "Grand Theft"};
		case "488": {_x = "Petty Theft"};
		case "480": {_x = "Hit and run"};
		case "481": {_x = "Possession de drogues"};
		case "482": {_x = "Intent to distribute"};
		case "483": {_x = "Traffique de drogues"};
		case "459": {_x = "Burglary"};
		case "666": {_x = "Tax Evasion"};
		case "667": {_x = "Terrorisme"};
		case "668": {_x = "Unlicensed Hunting"};
		case "919": {_x = "Organ Theft"};
		case "919A": {_x = "Attempted Organ Theft"};
		
		case "1": {_x = "Conduite sans phares"};
		case "2": {_x = "Conduite sans licences"};
		case "3": {_x = "Conduite trop rapide"};
		case "4": {_x = "Conduite dangereuse"};
		case "5": {_x = "Conduite de véhicule volé"};
		case "6": {_x = "Délit de fuite"};
		case "7": {_x = "Tentative de meurtre"};
		case "8": {_x = "Coups et blessures"};
	};
	_crimesArr pushBack _x;
}forEach _type;
_queryResult set[0,_crimesArr];

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_result];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

[[_queryResult],"life_fnc_wantedInfo",_ret,false] spawn life_fnc_MP;
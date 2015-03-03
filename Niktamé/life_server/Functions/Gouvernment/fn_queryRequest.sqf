/*
	File: fn_queryRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles the incoming request and sends an asynchronous query 
	request to the database.
	
	Return:
	ARRAY - If array has 0 elements it should be handled as an error in client-side files.
	STRING - The request had invalid handles or an unknown error and is logged to the RPT.
*/
private["_side","_query","_return","_queryResult","_qResult","_handler","_thread","_tickTime","_loops","_returnCount"];
_side = [_this,0,sideUnknown,[civilian]] call BIS_fnc_param;
_ownerID = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;

/*
	_returnCount is the count of entries we are expecting back from the async call.
	The other part is well the SQL statement.
*/
_query = switch(_side) do {
	case west: {_returnCount = 3; format["SELECT cop_budget, cop_pay FROM gouvernment"];};
	case civilian: {_returnCount = 4; format["SELECT gouv_budget, cop_budget, med_budget, civ_pay FROM gouvernment"];};
	case independent: {_returnCount = 3; format["SELECT med_budget, med_pay FROM gouvernment"];};
};

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Gouvernment Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

if(typeName _queryResult == "STRING") exitWith {};

switch (_side) do {
	
	case west: {
		
		_queryResult set[0,([_queryResult select 0,1] call DB_fnc_mumberSafe)];
		
		_queryResult set[1,([_queryResult select 1,1] call DB_fnc_mumberSafe)];
	};
	
	case civilian: {
	
		_queryResult set[0,([_queryResult select 0,1] call DB_fnc_mumberSafe)];

		_queryResult set[1,([_queryResult select 1,1] call DB_fnc_mumberSafe)];

		_queryResult set[2,([_queryResult select 2,1] call DB_fnc_mumberSafe)];
		
		_queryResult set[3,([_queryResult select 3,1] call DB_fnc_mumberSafe)];
	};

	case independent: {
	
		_queryResult set[0,([_queryResult select 0,1] call DB_fnc_mumberSafe)];
		
		_queryResult set[1,([_queryResult select 1,1] call DB_fnc_mumberSafe)];
	};
};

[_queryResult,"SOCK_fnc_requestReceivedGouv",_ownerID,false] spawn life_fnc_MP;

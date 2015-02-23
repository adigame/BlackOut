/*
	File: fn_cashLogs.sqf
	Author: Wawixs
	
	Description:
	Stockage de logs...
*/
private["_pName","_pUID","_pLog"];
_pName = [_this,0,"",[""]] call BIS_fnc_param;
_pUID = [_this,1,"",[""]] call BIS_fnc_param;
_pLog = [_this,2,"",[""]] call BIS_fnc_param;

if(_pName == "" OR _pUID == "" OR _pLog == "") exitWith {}; //Bad params passed..


diag_log format["-----------------------------------------|CASH_LOG|-----------------------------------------"];
diag_log format["                            Pseudo : %1 | UID : %2 | Cash : %3                              ",_pName,_pUID,_pLog]; //Outputs to RPT for external programs to parse,log,react to.
diag_log format["--------------------------------------___|CASH_END|___--------------------------------------"];
/*
	File: fn_recieveCashLogs.sqf
	Author: Wawixs
	
	Description:
	Stockage de logs...
*/
private["_pName","_pUID","_pCashrecieved"];
_pName = [_this,0,"",[""]] call BIS_fnc_param;
_pUID = [_this,1,"",[""]] call BIS_fnc_param;
_pCashrecieved = [_this,2,"",[""]] call BIS_fnc_param;

if(_pName == "" OR _pUID == "" OR _pCashrecieved == "") exitWith {}; //Bad params passed..


diag_log format["-----------------------------------------|RCASH_LOGS|-----------------------------------------"];
diag_log format["                            Pseudo : %1 |  UID : %2  | Cash Recieved : %3                     ",_pName,_pUID,_pCashrecieved]; //Outputs to RPT for external programs to parse,log,react to.
diag_log format["--------------------------------------___|RCASH__END|___--------------------------------------"];
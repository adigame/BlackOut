/*
	File: fn_licenceLogs.sqf
	Author: Wawixs
	
	Description:
	Stockage de logs...
*/
private["_pName","_pUID","_pLicences"];
_pName = [_this,0,"",[""]] call BIS_fnc_param;
_pUID = [_this,1,"",[""]] call BIS_fnc_param;
_pLicences = [_this,2,"",[""]] call BIS_fnc_param;

if(_pName == "" OR _pUID == "" OR _pLicences == "") exitWith {}; //Bad params passed..


diag_log format["-----------------------------------------|LICE_LOG|-----------------------------------------"];
diag_log format["                            Pseudo : %1 | UID : %2 | Licenses : %3                          ",_pName,_pUID,_pLicences]; //Outputs to RPT for external programs to parse,log,react to.
diag_log format["--------------------------------------___|LICE_END|___--------------------------------------"];
/*

	Player clicked arrest/ok

*/

private ["_time"];

if(playerSide != west) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "D�stination invalide."};

//Get minutes
_time = ctrlText 1400;


if(! ([_time] call TON_fnc_isnumber)) exitWith {

	hint "Entrez le temps de prison !";
};

_time = parseNumber _time; //requested number
_time = round _time;

if(_time < 5 || _time > 60) exitWith { hint hint "Prison de 5mn minimum  à 60mn maximum !"; };

closeDialog 0; 
[life_pInact_curTarget, _time] call life_fnc_arrestAction;

private["_unit","_amount"];
if(playerSide != west) exitWith {hint "Tu crois que t'es quoi ?"};
if((lbCurSel 2406) == -1) exitWith {hint "Tu dois séléctionner un joueur."};
if((lbCurSel 2407) == -1) exitWith {hint "Tu dois séléctionner un crime."};
_unit = lbData [2406,lbCurSel 2406];
_unit = call compile format["%1",_unit];
_amount = lbData [2407,lbCurSel 2407];
if(isNil "_unit") exitWith {};
if(side _unit == west) exitWith {hint "Tu veux commencer une guerre policère ?" };
if(_unit == player) exitWith {hint "Tu ne peux pas te mettre toi-même wanted";};
if(isNull _unit) exitWith {};

[[1,format["%1 a ete ajoute dans la wanted list.",_unit getVariable["realname",name _unit],_amount,getPlayerUID _unit]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

[[getPlayerUID _unit,_unit getVariable["realname",name _unit],_amount],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; 
/*
File: fn_cellphone.sqf
Author: Timo
 
Description:
With no radio cant use Cellphone
*/

private["_display","_units","_type"];
 
if("ItemRadio" in assignedItems player) then {

	if(life_battery < 1) exitWith {hint "Batterie vide !";};

	createDialog "Life_cell_phone";

} else {
	
	hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Pas de T�l�phone</t><br/><br/>
	<t size='0.90 'font='puristaLight' align='left'>Tu dois avoir un T�l�phone (Radio) pour faire �a. Tu peux en acheter au Magasin G�n�ral.</t><br/>"];
};

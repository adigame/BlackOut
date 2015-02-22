/*  File Original: fn_copInteractionMenu.sqf
    Author: TONIC
    File: fn_civInteractionMenu.sqf
    Author: Wawixs
    
    Description:
    Kidnapping
*/
#define Btn2 37451  //Escorter
#define Btn3 37452  //Mettre dans le véhicule
#define Title 37401

private["_display","_curTarget","_Btn2","_Btn3"];
if(!dialog) then {
    createDialog "pInteraction_Menu";
};
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
if(!isPlayer _curTarget && side _curTarget == civilian) exitWith {closeDialog 0;}; //Bad side check?
_display = findDisplay 37400;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
life_pInact_curTarget = _curTarget;

hint "Utilise des outils de crochetage afin de crocheter les menottes de cette personne.";

//Set Escort Button
if((_curTarget getVariable["Escorting",false])) then {
    _Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
    _Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_civInteractionMenu;";
} else {
    _Btn2 ctrlSetText localize "STR_pInAct_Escort";
    _Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";
};
//Set Put in Vehicle
_Btn3 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";
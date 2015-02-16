    /*
    File: fn_bomb.sqf
    Author: Wawixs
    Description:
	Attaches une bombe à un véhicule.
    *//*
    private["_unit"];
    _unit = cursorTarget;
     
    if((!(_unit isKindOf "LandVehicle"))&&(!(_unit getVariable ["restrained",false]))) exitWith {hint "Tu ne peux pas ajouter une bombe maintenant."};
    if(player distance _unit > 7) exitWith {hint "Tu dois te rapprocher!"};
    if(!([false,"bomb",1] call life_fnc_handleInv)) exitWith {};
    closeDialog 0;
     
    life_action_inUse = true;
     
    player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
    sleep 1.5;
    waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
     
    life_action_inUse = false;
    if(player distance _unit > 7) exitWith {titleText["Tu n'es pas assez près !","PLAIN"];};
     
    titleText["Tu as attaché une bombe à ce véhicule.","PLAIN"];
	player addAction ["Détoner la bombe",life_fnc_detonateBomb]
    
	waitUntil {life
    [_unit] spawn
    {
    _veh = _this select 0;
    waitUntil {(speed _veh) > 70};
    [[_veh, "caralarm",10],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
    hint "La bombe que tu as plantée a été activée.";
    { [[2,"A speed bomb has been activated on this vehicle and will detonate when your speed drops below 50km/h!"],"life_fnc_broadcast",_x,false] spawn BIS_fnc_MP; } foreach (crew _veh);
    waitUntil {(speed _veh) > 300};
    serv_killed = [player,"1090"];
    publicVariableServer "serv_killed";
    _test = "Bo_Mk82" createVehicle [0,0,9999];
    _test setPos (getPos _veh);
    _test setVelocity [100,0,0];
    hint "A speed bomb you planted on a vehicle has DETONATED!";
    };*/
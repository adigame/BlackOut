/*
    File: fn_wall.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Mur déposable.
*/
private["_position","_wall"];
_wall = "Land_Concrete_SmallWall_4m_F" createVehicle [0,0,0];
_wall attachTo[player,[0,5.5,0.2]];
_wall setDir 90;
_wall setVariable["item","wallDeployed",true];

life_action_wallDeploy = player addAction["Déposer Mur",{if(!isNull life_wall) then {detach life_wall; life_wall = ObjNull;}; player removeAction life_action_wallDeploy; life_action_wallDeploy = nil;},"",999,false,false,"",'!isNull life_wall'];
life_wall = _wall;
waitUntil {isNull life_wall};
if(!isNil "life_action_wallDeploy") then {player removeAction life_action_wallDeploy;};
if(isNull _wall) exitWith {life_wall = ObjNull;};
_wall setPos [(getPos _wall select 0),(getPos _wall select 1),0];
_wall allowDamage false;
/*
File : fn_civIdentity.sqf
Author: Wawixs

Comments:
Shows the identity card to other players
*/

private["_target","_ret","_message"];

_target = cursorTarget;
_ret = _this;

if(playerSide != civilian) exitWith {hint "Tu n'es pas civil...";};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

<<<<<<< HEAD
<<<<<<< HEAD
if( !(alive _target) ) then {_target = player;};
=======
if( !(alive _target) ) then exitWith{};
>>>>>>> parent of 7b017e0... Fix bugs
=======
if( !(alive _target) ) then exitWith{};
>>>>>>> parent of 7b017e0... Fix bugs

_message = format["<img size='8' image='textures\identity.paa'/><br/><br/><t size='1.5'>%1</t><br/><t size='0.6'>%2</t><br/><t size='0.5'>Civil de Bornholm</t>", profileName, [_ret select 0] call life_fnc_numberText];

[[player, _message],"life_fnc_civIdentityShown",_target,false] spawn life_fnc_MP;

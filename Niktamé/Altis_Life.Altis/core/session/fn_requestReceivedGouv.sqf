#include <macro.h>
/*
	File: fn_requestReceivedGouv.sqf
	Author: Jim
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.
if(!isServer && (!isNil "life_med_budget" OR !isNil "life_cop_budget" OR !isNil "life_gouv_budget")) exitWith {
	[[profileName,getPlayerUID player,"VariablesAlreadySet"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,format["Variables set before client initialization...\nlife_adminlevel: %1\nlife_coplevel: %2\nlife_donator: %3",life_adminlevel,life_coplevel,life_donator]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.9;
	["SpyGlass",false,false] execVM "\a3\functions_f\Misc\fn_endMission.sqf";
};

//Parse side specific information.
switch(playerSide) do {

	case west: {
		
		life_med_budget = _this select 0;
		life_cop_pay = _this select 1;
	};
	
	case civilian: {
		
		
	};
	
	case independent: {
		
		life_cop_budget = _this select 0;
		life_med_pay = _this select 1;
		
	};
};
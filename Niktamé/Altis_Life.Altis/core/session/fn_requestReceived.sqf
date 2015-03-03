#include <macro.h>
/*
	File: fn_requestReceived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/
private["_side"];
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if(life_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;
_side = playerSide;
//Error handling and  junk..
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(typeName _this == "STRING") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(count _this == 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((_this select 0) == "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((getPlayerUID player) != _this select 0) exitWith {[] call SOCK_fnc_dataQuery;};

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.
if(!isServer && (!isNil "life_adminlevel" OR !isNil "life_coplevel" OR !isNil "life_donator")) exitWith {
	[[profileName,getPlayerUID player,"VariablesAlreadySet"],"SPY_fnc_cookieJar",false,false] spawn life_fnc_MP;
	[[profileName,format["Variables set before client initialization...\nlife_adminlevel: %1\nlife_coplevel: %2\nlife_donator: %3",life_adminlevel,life_coplevel,life_donator]],"SPY_fnc_notifyAdmins",true,false] spawn life_fnc_MP;
	sleep 0.9;
	["SpyGlass",false,false] execVM "\a3\functions_f\Misc\fn_endMission.sqf";
};

//Parse basic player information.
life_cash = parseNumber (_this select 2);
life_atmcash = parseNumber (_this select 3);
__CONST__(life_adminlevel,parseNumber(_this select 4));
__CONST__(life_donator,0);

//Loop through licenses
if(count (_this select 6) > 0) then {
	{missionNamespace setVariable [(_x select 0),(_x select 1)];} foreach (_this select 6);
};

life_gear = _this select 8;
[] call life_fnc_loadGear;

//Parse side specific information.
switch(playerSide) do {
	case west: {
		__CONST__(life_coplevel, parseNumber(_this select 7));
		__CONST__(life_medicLevel,0);
		life_blacklisted = _this select 9;

		civ_position = _this select 10;
		life_is_alive = _this select 11;
		life_job = _this select 12;	
	};
	
	case civilian: {
		life_is_arrested = _this select 7;
		__CONST__(life_coplevel, 0);
		__CONST__(life_medicLevel, 0);

		life_blacklisted = _this select 9;
		
		civ_position = _this select 10;
		life_is_alive = _this select 11;	
		
		life_rebel = _this select 12;	

		life_job = _this select 13;	

		life_jail = _this select 14;
		
		life_houses = _this select 15;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles pushBack _house;
		} foreach life_houses;
		
		life_gangData = _this select 16;
		if(count life_gangData != 0) then {
			[] spawn life_fnc_initGang;
		};
		[] spawn life_fnc_initHouses;
	};
	
	case independent: {
		__CONST__(life_medicLevel, parseNumber(_this select 7));
		__CONST__(life_coplevel,0);

		life_blacklisted = _this select 9;

		civ_position = _this select 10;
		life_is_alive = _this select 11;
		life_job = _this select 12;	
	};
};


switch(playerSide) do {

	case west: {
	
		switch(__GETC__(life_coplevel)) do {

			case 1: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 5) / 100);
				life_grade = "Elève";
			};
			
			case 2: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 10) / 100);
				life_grade = "Brigadier";
			};
			
			case 3: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 15) / 100);
				life_grade = "Adjudant";
			};
			
			case 4: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 20) / 100);
				life_grade = "Adjudant chef";
			};
			
			case 5: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 25) / 100);
				life_grade = "Major";
			};
			
			case 6: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 30) / 100);
				life_grade = "Major-chef";
			};
			
			case 7: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 35) / 100);
				life_grade = "Lieutenant";
			};
			
			case 8: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 40) / 100);
				life_grade = "Lieutenant-colonel";
			};
			
			case 9: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 45) / 100);
				life_grade = "Colonel";
			};
			
			case 10: {
			
				life_paycheck = life_cop_pay + ((life_cop_pay * 50) / 100);
				life_grade = "Géneral";
			};
		};
	};

	case civilian: {
	
		
	};

	case independent: {
	
		switch(__GETC__(life_mediclevel)) do {

			case 1: {
			
				life_paycheck = life_med_pay + ((life_med_pay * 5) / 100);
				life_grade = "Stagiaire";
			};
			
			case 2: {
			
				life_paycheck = life_med_pay + ((life_med_pay * 10) / 100);
				life_grade = "Agent";
			};
			
			case 3: {
			
				life_paycheck = life_med_pay + ((life_med_pay * 20) / 100);
				life_grade = "Adjoint";
			};
			
			case 4: {
			
				life_paycheck = life_med_pay + ((life_med_pay * 30) / 100);
				life_grade = "Directeur-Ajoint";
			};
			
			case 5: {
			
				life_paycheck = life_med_pay + ((life_med_pay * 40) / 100);
				life_grade = "Directeur";
			};
		};
	};
};

if(count (_this select 17) > 0) then {
	{life_vehicles pushBack _x;} foreach (_this select 17);
};

life_session_completed = true;
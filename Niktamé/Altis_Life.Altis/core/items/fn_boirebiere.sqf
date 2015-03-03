/*File: fn_drinkbeer.sqf author:[midgetgrimm] drinkypoo*/
closeDialog 0;
sleep 4;
"chromAbberation" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;
player setVariable["inDrink",true,true];

for "_i" from 0 to 59 do
{
    if(life_drink > 0.12) then {

		"chromAberration" ppEffectAdjust[0.16,random 0.16, true];
		"chromAberration" ppEffectCommit 1;   
		"radialBlur" ppEffectAdjust  [random 0.05,random 0.05,0.3,0.3];
		"radialBlur" ppEffectCommit 1;
		addcamShake[random 4, 2, random 4];
		sleep 1;
	} else {
		"chromAberration" ppEffectAdjust [random 0.05,random 0.05,true];
		"chromAberration" ppEffectCommit 1;   
		"radialBlur" ppEffectAdjust  [random 0.03,random 0.03,0.4,0.4];
		"radialBlur" ppEffectCommit 1;
		addcamShake[random 3, 1, random 3];
		sleep 1;
	};
};

if (life_drink > 0.22) then {
	
	player playMoveNow "Incapacitated";
	sleep 15;
	player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
	sleep 10;
	life_drink = 0;
	player playMoveNow "amovppnemstpsraswrfldnon";			
};

//Stop effects
player setVariable["inDrink",false,true];
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
//"chromAberration" ppEffectEnable false;
//"radialBlur" ppEffectEnable false;
resetCamShake;
if(life_drink != 0) then {life_drink = life_drink - 0.02;};
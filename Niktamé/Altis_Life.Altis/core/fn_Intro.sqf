/*
	File: IntroCam
	Author: Dexter
	( script might already be known, havent seen it yet though ) 
*/
private ["_camera", "_camDistance","_randCamX","_randCamY","_camTime"];

_camDistance = 250;
_randCamX = 75 - floor(random 150);
_randCamY = 75 - floor(random 150);
_camTime = 10;// you can change the time for sure, I adjusted mine to the intro music

// the one below basically says that if you already joined the server once the time of the camera movement will be faster, else it might get annoying

if(!life_firstSpawn) then {
	_camTime = 10;
};
//intro move
showCinemaBorder true;
camUseNVG false;

_camera = "camera" camCreate [(position player select 0)+_randCamX, (position player select 1)+_randCamY,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];

_camera camSetFOV 2.000;
_camera camCommit 0;
waitUntil {camCommitted _camera};

_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit _camTime;

waitUntil {camCommitted _camera};

_camera cameraEffect ["terminate","back"];
camDestroy _camera;
life_firstSpawn = false;

switch(playerSide) do {

	case west: {
	
		if(life_job == "GIGN") then {
		
			hint format ["Gendarmerie\nSalaire: %1€\nGrade: %2 [GIGN]",call life_paycheck,life_grade];
		
		} else {
			
			hint format ["Gendarmerie\nSalaire: %1€\nGrade: %2",call life_paycheck,life_grade];
		};
	};

	case civilian: {
		if(life_job == "PRESIDENT") then {
		
			hint format ["Président\nSalaire: %1€\nGrade: Gouverneur",call life_paycheck];
			
		} else {
		
			hint format ["Salaire: %1€",call life_paycheck];
		};
	};

	case independent: {
	
		hint format ["Services publique\nSalaire: %1€\nGrade: %2",call life_paycheck,life_grade];
	};
};

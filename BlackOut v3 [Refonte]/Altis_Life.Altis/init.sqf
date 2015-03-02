StartProgress = false;
enableSaving[false,false];

life_versionInfo = "BlackOut v3";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
//[] execVM "BOS\addKey.sqf";
//[] execVM "BOS\statusBar.sqf";

/*
[] spawn 
{
	while {true} do 
	{
		waituntil {!isNil "nightclub"};
		nightclub say3d "nightclub_music"; 
		sleep 101; 
	}; 
};
*/
StartProgress = true;
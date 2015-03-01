StartProgress = false;
enableSaving[false,false];

life_versionInfo = "BlackOut v3";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
//[] execVM "BOS\addKey.sqf";
//[] execVM "BOS\statusBar.sqf";

waitUntil {time > 0};

execVM "BOS\statSave\fn_saveFuncs.sqf";
waitUntil {!isNil "saveFuncsLoaded"};

if(isServer) then
{
    _serverHasID = profileNameSpace getVariable ["ss_ServerID",nil];
    if(isNil "_serverHasID") then
    {
        _serverID = str(round((random(100000)) + random 10000));
        profileNameSpace setVariable ["SS_ServerID",_serverID];
    };
    serverID = profileNameSpace getVariable "ss_ServerID";
    publicVariable "serverID";
};

waitUntil {!isNil "serverID"};


if(!isDedicated) then
{
    execVM "BOS\statSave\fn_loadAccount.sqf";
    execVM "BOS\statSave\fn_saveLoop.sqf";
};

[] spawn 
{
	while {true} do 
	{
		waituntil {!isNil "nightclub"};
		nightclub say3d "nightclub_music"; 
		sleep 101; 
	}; 
};

StartProgress = true;
enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "BlackOut v1";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
//[] execVM "snowfall.sqf";
[] execVM "rappel.sqf";
[] execVM "statusBar.sqf";

StartProgress = true;
enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "BlackOut v3";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;
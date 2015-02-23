StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "BOS\addKey.sqf";
[] execVM "BOS\statusBar.sqf";

StartProgress = true;
waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["Bienvenue sur BlackOutRPG !", _rscLayer];

[] spawn {
	sleep 5;
	_statusText = "";
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = (360-(round(serverTime/60)));
		_statusText = "BlackOut.fr.nf";
		((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["FPS: %1 | Joueurs: %2 |  Restart dans %4 minutes | TS3 : BlackOut.servegame.com", round diag_fps, count playableUnits, _statusText, _counter];
	};
};
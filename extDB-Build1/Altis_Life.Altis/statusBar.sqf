waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["Bienvenue sur BlackOut !", _rscLayer];

[] spawn {
	sleep 5;
	_statusText = "";
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		_statusText = "the-life.fr";
		((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["Temps de jeu: %1 | Joueurs: %2", round diag_tickTime, count playableUnits, _statusText, _counter];
	};
};
//Chargement de la session active
["positionPlayer"] call fn_LoadStat;
["directionPlayer"] call fn_LoadStat;
["inventoryPlayer"] call fn_LoadStat;
["gogglesPlayer"] call fn_LoadStat;
["vestPlayer"] call fn_LoadStat;
["outfit"] call fn_LoadStat;
["hat"] call fn_LoadStat;
["backpackPlayer"] call fn_LoadStat;
["weaponsPlayer"] call fn_LoadStat;
["magazinesPlayer"] call fn_LoadStat;
["itemsPlayer"] call fn_LoadStat;


//===========================================================================


//FIN
statsLoaded = 1;
player globalChat format ["Votre position est charg�e %1.",name player];
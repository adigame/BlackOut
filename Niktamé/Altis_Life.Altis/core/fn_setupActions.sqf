/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Identité
		life_actions = life_actions + [player addAction["Carte d'identité",life_fnc_civIdentity,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && (player distance cursorTarget) < 6 && cursorTarget isKindOf "Man" ']];
		
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		
		//Rob person KNOCKOUT
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//Rob person SURRENDER
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		
		//Suicide Bomb
		life_actions = life_actions + [player addAction["Activer la veste",life_fnc_suicideBomb,"",0,false,false,"",
		'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		
		//Kidnapping KNOCKOUT
        life_actions = [player addAction["<t size='1.3'><t color='#FF0000'>Kidnapper</t></t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'
        !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && animationState cursorTarget == "Incapacitated" && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 && life_rebel ']];
		//Kidnapping SURRENDER
        life_actions = [player addAction["<t size='1.3'><t color='#FF0000'>Kidnapper</t></t>",life_fnc_restrainAction,cursorTarget,9999999,false,false,"",'
        !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1 && life_rebel ']];	
	};
	
	case west:
	{	
		//Insigne de police
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Insigne de police</t>",life_fnc_copShowLicense,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && (player distance cursorTarget) < 6 && (player distance cursorTarget) < 6 && cursorTarget isKindOf "Man" ']];
		//Saisir Armes et Chargeurs
		life_actions = life_actions + [player addAction["<t color='#ED7F10'>Saisir Arme</t>",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
	};
};
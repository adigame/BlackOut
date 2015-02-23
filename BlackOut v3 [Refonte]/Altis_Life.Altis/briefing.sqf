waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["blackout","BlackOut v3"];
player createDiarySubject ["serverrules","Règles générales"];
//player createDiarySubject ["policerules","Police Procedures/Rules"];
//player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
//player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
//player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["blackout",
		[
			"BlackOut",
				"
					Bienvenue sur BlackOut RPG !<br/><br/>
					
					La team<br/>
					________________________________________<br/><br/>
					
					Fondateurs:
					Jordan Xplosey & OKAN<br/><br/>
					
					Administrateurs:
					Bryan Kenneway & Alberto Parrachini<br/><br/>
					
					Developpeur:
					Niko Dink<br/><br/>
					
					Modérateurs:
					Julien Burn, Juanito Porto & Black Angel<br/><br/>
					
					________________________________________<br/>
					
					Vous êtes formellement obligé de jouer RP sous peine<br/>
					d'avertissement/sanctions.<br/>
					
					Si vous avez un problème, contactez<br/>
					un membre de l'équipe.<br/>
					
					Vous venez de perdre quelque chose via un bug ?<br/>
					
					Allez sur le forum et postez votre<br/>
					plainte/remboursement (PREUVES REQUIS)<br/><br/>
					
					________________________________________<br/>
					
					Bon jeu sur BlackOut RPG !<br/>
					Soyez RP et amusez-vous bien.<br/>
					________________________________________<br/>
				"
		]
	];
	
	player createDiaryRecord["serverrules",
		[
			"Règles",
				"
					--------------------<br/>
					Généralités<br/>
					--------------------<br/><br/>

					• Il est interdit de Carkill.<br/>
					• Le Tir en Safe Zone est interdit SAUF pour une vraie raison RP.<br/>
					• Avant de tirer il faut faire une sommation orale ou tirer quelques balles à côté.<br/>
					• Le retour sur zone est interdit avant 10 mins.<br/>
					• L'utilisation d'un bug, d'un cheat ou tout autre hack est interdit, si vous en constatez un, prévenez le staff.<br/>
					• Il est interdit de faire ALT+F4 pour se déconnecter, tout abus sera sanctionné.<br/>
					• Il est interdit de se déconnecter lors d'une action RP, si pour des raisons HRP vous devez vous déconnecter, prévenez.<br/>
					• Le troll, le harcèlement, les insultes HRP et tous les comportements de ce type sont interdits.<br/>
					• Nous sommes sur un serveur RP.<br/>
					Lorsque vous êtes en jeu vous incarnez un personnage, vous devez donc parler comme tel.<br/>
					Tout ce que vous dites doit être dans le cadre de votre personnage RP.<br/>
					Utilisez des mots RP pour vous faire comprendre.<br/>
					Voici quelques exemples :<br/>
					- Teamspeak = Radio sécurisée<br/>
					- Forum = Site du Gouvernement<br/>
					- Reboot = Tempête<br/>
					- Bug = Magie noire<br/>
					etc....​<br/>
					• Lors d'un braquage, privilégiez la qualité du RP, si votre victime à joué son rôle, récompensez la.<br/>
					Il est inutile de chercher à tout prix à détruire son véhicule ou prendre l'intégralité de son argent.<br/>
					En revanche, si la personne n'est pas RP, vous pouvez décider de la sanctionner en détruisant son véhicule.<br/>
					Mais cela ne doit pas être fait de façon abusive.<br/>
					Privilégiez toujours la qualité du RP.<br/>
					Détruire le travail de quelqu'un n'apporte rien à part de la rage..<br/>
					• La Police n'a le droit qu'a un seul R.A.I.D par journée.<br/><br/>

					-------------------------<br/>
					FREEKILL<br/>
					-------------------------<br/><br/>

					• Le freekill est interdit.<br/>
					• Tuer quelqu’un sans aucune interaction RP est considéré comme du freekill.<br/>
					• Le carkill (utiliser un véhicule pour tuer quelqu'un) est considéré comme du freekill.<br/>
					• Ne répondez pas à du freekill par du freekill, prévenez la Gendarmerie et si nécessaire le Staff.<br/><br/>

					---------------------------<br/>
					Familles rebelle<br/>
					---------------------------<br/><br/>
					
					• Pour créer une famille rebelle il faut que tous les membre ( au minimum 2 ) aient leur Licence Rebelle.<br/>
					Pour la création du gang ainsi que pour le channel Teamspeak cela coûtera ( In Game ) 700 000.<br/>
					• Si vous voulez avoir votre camp personnaliser merci de contacter un membre du staff qui vous informera du prix suivant votre demande.<br/>
					• Le nombre maximum de membres dans une famille ne doit pas excéder plus 5 membres !<br/>
					• Un Camp Rebelle ne peut pas être pris comme territoire.<br/><br/>
					
					------------------------------<br/>
					Braquage de Banque<br/>
					------------------------------<br/><br/>
					
					• Il faut minimum 5 policiers pour faire la Banque Fédéral.<br/><br/>

					------------------------------<br/>
					Prise de Douane<br/>
					------------------------------<br/><br/>
					
					• Si un groupe prend la douane et qu'ils se font tous éliminés par les policiers il ne plus le droit de la capturer avant 45 MINS.
				"
		]
	];
/*
	@Version: 0.2
	@Author: =IFD= Cryptonat
	@Edited: 4/4/14
	
	Description:
	Saves the player's gear every 10 minutes.
*/

private["_uid","_side","_sender"];

_sender = player;
_uid = getPlayerUID _sender;
_side = playerSide;

while {true} do {

	sleep 120;
	
	if (alive player) then {
				
		[] call SOCK_fnc_updateRequest;
	};
}; 
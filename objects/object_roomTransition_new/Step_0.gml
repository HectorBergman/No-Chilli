/// @description Insert description here
// You can write your code in this editor
PAUSE
if (!deactive &&place_meeting(x, y, chiliman) && chiliman.state != states.roomtransition){
	var roomTransID = id;
	var isTeleporter = false;
	if (nextRoom == room){
		isTeleporter = true;
	}
	with(chiliman){
		initiateRoomTransition(chiliman.state, roomTransID.destinationNumber, roomTransID.nextRoom, roomTransID, isTeleporter)
	}
	deactive = true;
} 

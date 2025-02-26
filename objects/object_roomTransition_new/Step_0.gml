/// @description Insert description here
// You can write your code in this editor
PAUSE
deactiveTimer--
if (!deactive && deactiveTimer < 0 && place_meeting(x, y, chiliman) && chiliman.state != states.roomtransition){
	var roomTransID = id;
	var isTeleporter = false;
	if (nextRoom == room){
		isTeleporter = true;
	}
	with(chiliman){
		initiateRoomTransition(chiliman.state, roomTransID.destinationNumber, roomTransID.nextRoom, roomTransID, isTeleporter)
	}
	if (!isTeleporter){
		deactive = true;
	}else{
		deactiveTimer = deactiveTime
	}
} 

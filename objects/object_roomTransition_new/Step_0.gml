/// @description Insert description here
// You can write your code in this editor
PAUSE
if (place_meeting(x, y, chiliman) && chiliman.state != states.roomtransition){
	var roomTransID = id;
	with(chiliman){
		initiateRoomTransition(chiliman.state, roomTransID.destinationNumber, roomTransID.nextRoom, roomTransID)
	}
	instance_destroy(id);
}

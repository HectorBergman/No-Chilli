// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateRoomTransition(){
	roomTransitionTimer--
	if (roomTransitionTimer == 0){
		room_goto(roomTransNextRoom);
	}
	if (roomTransitionTimer == -roomTransitionTime){
		state = roomTransOldState;
	}
	
}

function initiateRoomTransition(oldState, roomTransitionID){
	
	destinationNumber = roomTransitionID.destinationNumber;
	destinationY =	roomTransitionID.y+roomTransitionID.image_yscale*32-y
	roomTransNextRoom = roomTransitionID.nextRoom
	state = states.roomtransition
	layer_create(-999, "pauseUI");
	roomTransOldState = oldState;
	roomTransitionTimer = roomTransitionTime;
}
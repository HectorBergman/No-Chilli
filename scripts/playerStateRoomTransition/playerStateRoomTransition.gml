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

function initiateRoomTransition(oldState, newDestinationNumber, nextRoom, roomTransitionID){
	//roomTransitionID = noone if not from a roomTransition obj
	destinationNumber = newDestinationNumber;
	try{
		destinationY =	roomTransitionID.y+roomTransitionID.image_yscale*32-y
	}catch(e){
		destinationY = 0;
	}
	roomTransNextRoom = nextRoom
	state = states.roomtransition
	layer_create(-999, "pauseUI");
	roomTransOldState = oldState;
	roomTransitionTimer = roomTransitionTime;
}
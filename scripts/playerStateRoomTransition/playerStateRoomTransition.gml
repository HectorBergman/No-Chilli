// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateRoomTransition(){

	roomTransitionTimer--
	if (roomTransitionTimer == 0){
		if (!isTeleporter){
			room_goto(roomTransNextRoom);
		}else{
	
			for (var i = 0; i < instance_number(object_roomTransition_destination); ++i;)
			{
				var roomTrans = instance_find(object_roomTransition_destination,i)
			    if (roomTrans.number == destinationNumber){
					x = roomTrans.x
					y = y-destinationY
					destinationY = 0;
				}
			}
		}
	}
	if (roomTransitionTimer == -roomTransitionTime){
		state = roomTransOldState;
	}
	
}

function initiateRoomTransition(oldState, newDestinationNumber, nextRoom, roomTransitionID, teleporter = false){
	//roomTransitionID = noone if not from a roomTransition obj
	destinationNumber = newDestinationNumber;
	try{
		destinationY =	roomTransitionID.y+roomTransitionID.image_yscale*32-y
	}catch(e){
		destinationY = 0;
	}
	roomTransNextRoom = nextRoom
	isTeleporter = teleporter
	state = states.roomtransition
	layer_create(-999, "pauseUI");
	roomTransOldState = oldState;
	roomTransitionTimer = roomTransitionTime;
}
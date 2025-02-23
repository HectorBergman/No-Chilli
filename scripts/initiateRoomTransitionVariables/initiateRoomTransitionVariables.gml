// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateRoomTransitionVariables(){
	roomTransitionTime = 10;
	roomTransitionTimer = 0;
	roomTransOldState = 0;
	
	roomTransNextRoom = noone;
	isTeleporter = false;
}
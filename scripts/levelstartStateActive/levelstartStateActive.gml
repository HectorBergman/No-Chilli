// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function levelstartStateActive(){
	var _id = id;
	with (chiliman){
		initiateRoomTransition(states.levelstart, 0, _id.to , noone)
		startingRoom = _id.to;
		diveTimer = 200;
		diveSetTime = diveTimer;
		destinationNumber = _id.destinationNumber;
		rightHeldTimer = 60;
		levelStartTimer = levelStartTime;
		horizontalSpeed = 0;
		verticalSpeed = 0;
	}

	layer_create(-999, "pauseUI");
	levelstartstate = levelstartstates.inactive
}
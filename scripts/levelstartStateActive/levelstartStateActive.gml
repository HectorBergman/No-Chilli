// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function levelstartStateActive(){
	room_goto(to);
	chiliman.diveTimer = 200;
	chiliman.destinationNumber = destinationNumber;
	chiliman.rightHeldTimer = 60;
	chiliman.levelStartTimer = chiliman.levelStartTime;
	chiliman.state = states.levelstart
	chiliman.horizontalSpeed = 0;
	chiliman.verticalSpeed = 0;
	layer_create(-999, "pauseUI");
}
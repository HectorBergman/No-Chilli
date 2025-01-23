// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resetEverything(destroyChiliman = true, destroyPause = true){
	
	instance_destroy(instance_find(object_zcamera, 0))
	if destroyChiliman{
		instance_destroy(chiliman);
	}
	instance_destroy(instance_find(obj_speedometer, 0))
	if destroyPause{
		instance_destroy(instance_find(obj_pauser, 0))
		global.pause = false;
		global.destroy = true;
	}
	
	instance_destroy(instance_find(obj_timerstart, 0));
}

function destroyMenu(){
	instance_destroy(obj_button);
	instance_destroy(global.activeBorder);
	instance_destroy(global.activeJalapeno)
}

function resetLevel(){
	resetSpeed()
	state = states.levelstart
	chiliman.diveTimer = 200;
	chiliman.diveSetTime = diveTimer;
	chiliman.rightHeldTimer = 60;
	chiliman.levelStartTimer = chiliman.levelStartTime;
	chiliman.state = states.levelstart
	chiliman.horizontalSpeed = 0;
	chiliman.verticalSpeed = 0;
	layer_create(-999, "pauseUI");
	with (chiliman){
		initiateRoomTransition(chiliman.state, 0, chiliman.startingRoom ,noone)
	}
}
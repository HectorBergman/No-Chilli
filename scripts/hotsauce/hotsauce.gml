// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hotsauce(){
	var collidedHotsauce = ds_list_create()
	instance_place_list(x, y , object_hotsauce, collidedHotsauce, 0);
	if (!ds_list_empty(collidedHotsauce)){
		var size = ds_list_size(collidedHotsauce);
		for (var i = 0; i<size; i++){
			var currentHotsauce = ds_list_find_value(collidedHotsauce, i)
			if (currentHotsauce.state != hotsauceStates.collected){
				var	cam = instance_find(object_zcamera, 0);
				var camScale = 0.0015625*cam.camWidth
				audio_play_sound(currentHotsauce.sound, 0, 0, 1, 0, calculatePickupPitch());
				lastPickupTimer += 15;
				decreaseTimer = decreaseTime;
				currentHotsauce.state = hotsauceStates.collected;
				currentHotsauce.uiCoord = [(chiliman.x - camera_get_view_x(view_camera[0]))*2, (chiliman.y+30 - camera_get_view_y(view_camera[0]))*2]
				show_debug_message(camera_get_view_x(view_camera[0]));
			}
		}
	}
}

function calculatePickupPitch(){
	return (1 + lastPickupTimer/150);
}

function hotsauceCollectedLogic(){
	collectionScale *= 0.995;
	if (uiCoord[0] != goalCoord[0]){
		if abs(uiCoord[0]-goalCoord[0]) > 10{
			uiCoord[0] += -(uiCoord[0]-goalCoord[0])*0.065;
		}else{
			var speedometer = instance_find(obj_speedometer, 0);
			speedometer.pulse += pulseSize
			chiliman.scoville += scoville
			chiliman.scovilleSpeed += scovilleSpeedAdder;
			instance_destroy(self);
		}
	}
	if (uiCoord[1] != goalCoord[1]){
		if abs(uiCoord[1]-goalCoord[1]) > 10{
			uiCoord[1] += -(uiCoord[1]-goalCoord[1])*0.045;
		}else{
			var speedometer = instance_find(obj_speedometer, 0);
			speedometer.pulse += 0.2
			instance_destroy(self);
		}
	}
}
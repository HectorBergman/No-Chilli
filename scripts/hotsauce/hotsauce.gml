// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hotsauce(){
	var collidedHotsauce = instance_place(x, y , object_hotsauce)
	if (collidedHotsauce != noone && collidedHotsauce.state != hotsauceStates.collected){
		audio_play_sound(snd_pickupSauce_2, 0, 0, 1, 0, calculatePickupPitch());
		lastPickupTimer += 15;
		scoville += collidedHotsauce.scoville
		scovilleSpeed += collidedHotsauce.scovilleSpeedAdder;
		decreaseTimer = decreaseTime;
		collidedHotsauce.state = hotsauceStates.collected;
		collidedHotsauce.uiCoord = [collidedHotsauce.x - camera_get_view_x(view_camera[0]) , collidedHotsauce.y - camera_get_view_y(view_camera[0])]
		show_debug_message(camera_get_view_x(view_camera[0]));
	}
}

function calculatePickupPitch(){
	return (1 + lastPickupTimer/150);
}

function hotsauceCollectedLogic(){
	collectionScale *= 0.995;
	if (uiCoord[0] != goalCoord[0]){
		if abs(uiCoord[0]-goalCoord[0]) > 10{
			uiCoord[0] += -(uiCoord[0]-goalCoord[0])*0.03;
		}else{
			uiCoord[0] = goalCoord[0]
		}
	}
	if (uiCoord[1] != goalCoord[1]){
		if abs(uiCoord[1]-goalCoord[1]) > 10{
			uiCoord[1] += -(uiCoord[1]-goalCoord[1])*0.02;
		}else{
			uiCoord[1] = goalCoord[1]
		}
	}
}
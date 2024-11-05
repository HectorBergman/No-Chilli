// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function brusselStateActive(){
	try{
		visual.image_index -= chiliman.horizontalSpeed*2/15;
	}catch(error){
		instance_destroy(visual);
		instance_destroy(self);
		exit;
	}
	x = chiliman.x;
	y = chiliman.y+80;
	if (chiliman.state != states.onball){
		state = brusselState.notActive;
		kickedTimer = 60;
	}
	if (originalRoom != room_get_name(room)){
		originalRoom = room_get_name(room);
	}
}


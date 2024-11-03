// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function brusselStateActive(){
	visual.image_angle = visual.image_angle + chiliman.horizontalSpeed*2;
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


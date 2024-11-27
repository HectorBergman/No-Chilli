/// @description Insert description here
// You can write your code in this editor
if (instance_exists(object_zcamera)){
	image_xscale = cam.camWidth/640
	image_yscale = cam.camHeight/360
	//x = baseX*cam.camWidth/360
	//y = baseY*cam.camWidth/360
}
click_x = mouse_x;
click_y = mouse_y;
if (position_meeting(mouse_x, mouse_y, id) && !isQuirkyRoom()){
	image_index = 1;
	if (mouse_check_button_pressed(mb_left)){
		if (toRoom == rm_title){
			global.pause = false;
			global.destroy = true;
			instance_destroy(instance_find(object_zcamera, 0))
			instance_destroy(chiliman);
			instance_destroy(instance_find(obj_speedometer, 0))
			destroyMenu()
			instance_destroy(instance_find(obj_pauser, 0))
			instance_destroy(instance_find(obj_timerstart, 0));
		}
		try{
			room_goto(toRoom);
		}catch(_exception){
			destroyMenu()
			global.pause = false;
		}
		global.pause = false;
		instance_destroy(obj_button);
		
	}
}else if (position_meeting(mouse_x, mouse_y, id)){
	image_index = 1;
	if (mouse_check_button_pressed(mb_left)){
		if (toRoom == -10){
			if(window_get_fullscreen()){
				window_set_fullscreen(false)
			}else{
				window_set_fullscreen(true)
			}
		}
	}
	
}else{
	image_index = 0;
}

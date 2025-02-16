/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(parent)){
	instance_destroy()
}
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
show_debug_message(global.volume);
if (position_meeting(mouseX, mouseY, id)){
	image_index = 1;
	if (mouse_check_button_pressed(mb_left)){
		if toRoom == -6{
			instance_destroy(parent);
		}else if toRoom == -7{
			if (global.volume > 0){
				global.volume -= 0.1
			}
		}else if toRoom == -8{
			
			if (global.volume < 1){
				global.volume += 0.1
			}
		}else if toRoom == -9{
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

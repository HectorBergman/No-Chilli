/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(parent)){
	instance_destroy()
}
var mouseX = device_mouse_x_to_gui(0);
var mouseY = device_mouse_y_to_gui(0);
if (isClickable() && position_meeting(mouseX, mouseY, id)){
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
		}else if toRoom == -10{	
			if (global.musicvolume > 0){
				global.musicvolume -= 0.1
			}	
		}else if toRoom == -11{
			
			if (global.musicvolume < 1){
				global.musicvolume += 0.1
			}
		}else if toRoom == -12{	
			if (global.soundfx > 0){
				global.soundfx -= 0.1
			}	
		}else if toRoom == -13{
			
			if (global.soundfx < 1){
				global.soundfx += 0.1
			}
		}else if toRoom == -9{
			if(window_get_fullscreen()){
				window_set_fullscreen(false)
				saveData("fullscreen", false);
			}else{
				window_set_fullscreen(true)
				saveData("fullscreen", true);
			}
			
		}
		saveVolume();
	}
}else{
	image_index = 0;
}

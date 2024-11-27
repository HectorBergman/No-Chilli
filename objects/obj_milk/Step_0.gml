/// @description Insert description here
// You can write your code in this editor
timer--;
if place_meeting(x, y, chiliman) && !touched{
	chiliman.inLevel = false;
	var minutes = floor(global.speedrun_timer / 60)
	var seconds = global.speedrun_timer mod 60
	if (minutes != 1){
		show_debug_message(string(minutes) + " minutes " + string(seconds) + " seconds");
	}else{
		show_debug_message(string(minutes) + " minute " + string(seconds) + " seconds");
	}
	var _time = variable_struct_get(global.game_data, levelname)
	if (!is_undefined(_time)){
		draw_text_transformed(x+16, y-50, _time, 2, 2, 0);
	}
	var timeString = string(minutes) + ":" + string(seconds)
	var _prevMinutes = variable_struct_get(global.game_data, levelname + "Minutes")
	var _prevSeconds = variable_struct_get(global.game_data, levelname + "Seconds")
	if (!is_undefined(_prevMinutes)){
		if (_prevMinutes < minutes){
		
		}else{
			if (_prevMinutes == minutes && _prevSeconds <= seconds){
			
			}else{
				saveData(levelname, timeString);
				saveData(levelname + "Minutes", minutes)
				saveData(levelname + "Seconds", seconds);
			}
		}
	}else{
		saveData(levelname, timeString);
		saveData(levelname + "Minutes", minutes)
		saveData(levelname + "Seconds", seconds);
	}
	touched = true;
	timer = time;
	image_index = 1;
	chiliman.state = states.levelcomplete
	chiliman.completeFallTimer = chiliman.completeFallTime;
	
}
if (image_index == 0){
	sprite_set_speed(spr_milk, 0, spritespeed_framespersecond)
}else{
	sprite_set_speed(spr_milk, 10, spritespeed_framespersecond)
}

if (timer = 0){
	room_goto(rm_lobby_room1);
	chiliman.state = states.normal;
	chiliman.x = 190
	chiliman.y = 414
}
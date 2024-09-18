/// @description Insert description here
// You can write your code in this editor
timer--;
if place_meeting(x, y, chiliman) && !touched{
	
	var minutes = floor(global.speedrun_timer / 60)
	var seconds = global.speedrun_timer mod 60
	if (minutes != 1){
		show_debug_message(string(minutes) + " minutes " + string(seconds) + " seconds");
	}else{
		show_debug_message(string(minutes) + " minute " + string(seconds) + " seconds");
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
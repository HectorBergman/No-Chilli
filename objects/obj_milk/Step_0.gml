/// @description Insert description here
// You can write your code in this editor
timer--;
if place_meeting(x, y, chiliman) && !touched{
	global.crashCount = chiliman.crashCount;
	global.topSpeed = chiliman.topSpeed;
	chiliman.topSpeed = 0;
	global.pausable = false;
	chiliman.inLevel = false;
	global.currentLevelTime = global.speedrun_timer
	global.scoville = chiliman.scoville;
	var minutes = floor(global.speedrun_timer / 60)
	var seconds = global.speedrun_timer mod 60
	if (minutes != 1){
		show_debug_message(string(minutes) + " minutes " + string(seconds) + " seconds");
	}else{
		show_debug_message(string(minutes) + " minute " + string(seconds) + " seconds");
	}

	var timeString = string(minutes) + ":" + string(seconds)
	
	
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
	room_goto(menu_score);
	/*chiliman.state = states.normal;
	chiliman.x = 190
	chiliman.y = 414*/
}
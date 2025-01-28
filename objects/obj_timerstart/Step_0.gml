/// @description Insert description here
// You can write your code in this editor
if (!unCountable() && global.pause == false){
	global.speedrun_timer += delta_time / 1000000
	show_debug_message(global.speedrun_timer);
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saladStateSleeping(){
	show_debug_message("c.x - x: " + string(abs(chiliman.x - x)< 200))
	show_debug_message("c.y - y: " + string(abs(chiliman.y - y)< 200))
	show_debug_message("c.touching: " + string(chiliman.touchingSalad))
	if (abs(chiliman.x - x) < 200 && abs(chiliman.y - y) < 200 && chiliman.touchingSalad){
		state = saladState.wake
		timer_start = get_timer()/1000
		image_index = 1;
	}
}
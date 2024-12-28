// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateDead(){
	deadTimer--
	if deadTimer == 0{
		resetEverything(false, false);
		global.pausable = false;
		room_goto(rm_deathscreen);
	}
	//show_debug_message(deadTimer);
}
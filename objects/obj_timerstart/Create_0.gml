/// @description Insert description here
// You can write your code in this editor
var prev_timer = instance_find(obj_timerstart, 1)
if (prev_timer != noone) && (prev_timer != self){
	instance_destroy(prev_timer);
	
}
global.speedrun_timer = 0;




function unCountable(){
	return chiliman.state == states.levelstart || chiliman.state == states.roomtransition
}
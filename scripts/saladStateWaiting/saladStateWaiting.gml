// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saladStateWaiting(){
	image_index = 6;

	if (abs(chiliman.x - x) < 500 && abs(chiliman.y - y) < 400){
		image_index = 1;
		state = saladState.wake;
	}
}
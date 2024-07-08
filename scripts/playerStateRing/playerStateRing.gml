// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateRing(){
	playerFall(self);
	playerRingCollision(self);
	if (!ringHeld){
		state = states.normal;
	}
}
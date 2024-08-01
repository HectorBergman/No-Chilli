// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateRing(){
	
	playerSwing(self);
	//playerRingCollision(self);
	playerHorizontalCollision(self);
	playerVerticalCollision(self);
	
	if (!_keySpace){
		state = states.normal;
	}
}
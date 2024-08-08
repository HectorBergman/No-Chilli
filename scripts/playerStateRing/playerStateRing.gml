// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateRing(){
	
	playerSwing(self);
	//playerRingCollision(self);
	playerHorizontalCollision(self);
	playerVerticalCollision(self);
	playerWhiteguyCollision(self);
	
	if (!grab){
		state = states.normal;
	}
}
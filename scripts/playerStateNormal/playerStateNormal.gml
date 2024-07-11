// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateNormal(){
	move = (_keyRight - _keyLeft);
	
	if (move != 0){
		lastmove = move;
	}
	
	//see: script playerMovement
	playerHorizontalMovement(self);
	playerJump(self);
	playerFall(self);


	//see: script playerCollision
	playerHorizontalCollision(self);
	playerVerticalCollision(self);
	playerWhiteguyCollision(self);
	playerRingCollision(self);
	/*if (ringHeld && onGround < 0){
		state = states.ring;
	}*/
}
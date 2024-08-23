// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateBounce(){
	bounceTimer--
	determineMove()
	//show_debug_message(bugtestcount);
	


	bounceFall();
	bounceHorizontalMovement();
	bounceVerticalMovement();
	


	bounceVerticalCollision();
	bounceHorizontalCollision();
	playerHorizontalCollision(self);
	playerVerticalCollision(self);
	playerWhiteguyCollision(self);
	playerRingCollision(self);
}
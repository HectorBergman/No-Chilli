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
	if (state == states.bounce){ //else this will trigger when chili is supposed to be out of bounce state,
								// leads to bouncing at the same time as turning, weird behaviour
							   //  probably exists a more elegant solution
		bounceHorizontalCollision();
		playerHorizontalCollision(self);
		playerVerticalCollision(self);
		playerWhiteguyCollision(self);
		playerRingCollision(self);
	}
}
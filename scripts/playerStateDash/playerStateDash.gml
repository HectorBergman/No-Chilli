// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateDash(){


	//see: script playerCollision
	playerHorizontalCollision(self);
	playerVerticalCollision(self);
	playerWhiteguyCollision(self);
	verticalSpeed *= 0.99
	horizontalSpeed *= 0.99
	
	dashCooldown--
	if (dashCooldown <= dashEndTime){
		verticalSpeed = 0
		horizontalSpeed = 0
		state = states.normal;
	}
}

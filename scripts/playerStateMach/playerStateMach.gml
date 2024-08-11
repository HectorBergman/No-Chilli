// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateMach(){
	
	
	if !(onGround > 7 && ((moveRight && rightHeldTimer == 0) || (moveLeft && leftHeldTimer == 0))  ){
		
		//if not changing direction
		determineMove();
		mach = machCalculator()
		
			
		//see: script playerMovement
		machHorizontalMovement(self);
		
		if (airTime < 1){
			
		
			playerFall(self);
		}else if (place_meeting(x, y + 0.1, object_wall)){
				airTime = 0;
		}else{
				jumpsLeft = 0;
		}	
		playerJump(self);
		airTime--

	


		//see: script playerCollision
		playerHorizontalCollision(self);
		playerVerticalCollision(self);
		playerWhiteguyCollision(self);
		playerRingCollision(self);
	
		if (!(_keyShift > 0) || (!(moveLeft) && !(moveRight))){
			rightHeldTimer = 0;
			leftHeldTimer = 0;
			state = states.normal;
		}
		//show_debug_message("rightHeldTimer: " + string(rightHeldTimer));
		//show_debug_message("leftHeldTimer: " + string(leftHeldTimer));
	}else{
		if (moveRight-leftHeldTimer < 1){
			turn = 1;
		}else{
			turn = -1
		}
		turnTimer = turnTime;
		state = states.machTurn;
	}
	
}
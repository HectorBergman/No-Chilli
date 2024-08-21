// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateMach(){
	
	
	if !(onGround > 7 && ((moveRight && rightHeldTimer == 0) || (moveLeft && leftHeldTimer == 0))  ){
		
		//if not changing direction
		determineMove();
		mach = machCalculator()
		
		initializeBounce();
		//see: script playerMovement
		machHorizontalMovement(self);
		
		if (airTime < 1){
		
			playerFall(self);
			playerJump(self);
		}else if (place_meeting(x, y + 1, object_wall)){
				airTime = 0;
		}else{
				jumpsLeft = 0;
		}	
		
		airTime--
		
		
		checkForSlide();

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


function runClouds(){
	cloudTimer--;
	if cloudTimer == 0{
		cloudsStruct =
		{
			//verticalSpeed : verSpeed,
			//horizontalSpeed : horSpeed,
			lifeTime: random_range(50, 150),
			spriteDirection : -theMove,
			spriteNumber : i,
		};
		instance_create_depth(x, y, i, object_runClouds, cloudsStruct);
	}
	for(var i = 0; i < 39; i += 1){
		cloudsStruct =
		{
			//verticalSpeed : verSpeed,
			//horizontalSpeed : horSpeed,
			lifeTime: random_range(50, 150),
			spriteDirection : -theMove,
			spriteNumber : i,
		};
		instance_create_depth(x, y, i, object_OLSClouds, cloudsStruct);
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateMach(){
	timeInMach++
	//show_debug_message(machDirection);
	//show_debug_message(moveRight-moveLeft)
	//if you're both on the ground and turning the opposite direction to the mach direction, skip this if
	if !(onGround >= 9 && ((moveRight-moveLeft == -machDirection) || moveRight-moveLeft == 0)){
		
		//if not changing direction
		determineMove();
		mach = machCalculator()
		
		
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
		if (place_meeting(x + horizontalSpeed, y, object_wall)){
			if (timeInMach > 20){
				initiateCrash();
			}else{
				returnToNormalStateFromMach();
			}
		}
		//see: script playerCollision
		playerHorizontalCollision(self);
		playerVerticalCollision(self);
		playerWhiteguyCollision(self);
		playerRingCollision(self);
		initializeBounce();
	
		if (!(_keyShift > 0) || (!(moveLeft) && !(moveRight))){
			returnToNormalStateFromMach();
		}
		//show_debug_message("rightHeldTimer: " + string(rightHeldTimer));
		//show_debug_message("leftHeldTimer: " + string(leftHeldTimer));
	}else{
		determineTurnDirectionAndTurn()
	}
	
	
}

function determineTurnDirectionAndTurn(){
	if (moveRight-leftHeldTimer < 1){
		turn = 1;
	}else{
		turn = -1
	}
	startTurn(turn);	
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

function returnToNormalStateFromMach(){
	rightHeldTimer = 0;
	leftHeldTimer = 0;
	state = states.normal;
}
	
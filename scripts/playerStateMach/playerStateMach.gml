// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateMach(){
	timeInMach++
	
	mach = machCalculator()
	
	//if you're both on the ground and turning the opposite direction to the mach direction, skip this if
	
	if !(onGround >= 9 &&  //note to self, do not write !-ifs, they're confusing af
	((moveRight-moveLeft == -machDirection) || moveRight-moveLeft == 0 || 
	!((moveRight-moveLeft) == sign(horizontalSpeed)))){
		
		//if not changing direction
		determineMove();
		
		
		
		//see: script playerMovement
		machHorizontalMovement(self);
		
		if (airTime < 1){
		
			playerFall(self);
			playerJump(self);
			playerVerticalCollision(self);
		}else if (place_meeting(x, y + 1, object_wall)){
				airTime = 0;
		}else{
				jumpsLeft = 0;
		}	
		
		airTime--
		
		
		checkForSlide();
		if (place_meeting(x + horizontalSpeed, y, object_wall)){
			if (instance_place(x + horizontalSpeed, y, object_dumbasswall)){
				show_debug_message("HASDASDASDASDASDASDASD")
				return;
			}
			if (timeInMach > 20){
				initiateCrash(-99, noone);
			}else{
				returnToNormalStateFromMach();
			}
		}
		//see: script playerCollision
		playerHorizontalCollision(self);
	
		playerWhiteguyCollision(self);
		playerRingCollision(self);
		testForBounce();
	
		if ((!(_keyShift > 0) || (!(moveLeft) && !(moveRight))) && onGround >= 10){
			
			turn = sign(horizontalSpeed)
			startTurn(turn, true);	
		}else if (onGround <= 9 && down && diveTimer < 1){
			state = states.dive
			var totalSpeed = ((horizontalSpeed + sign(horizontalSpeed)*abs(verticalSpeed)));
			horizontalSpeed = totalSpeed;
			verticalSpeed = abs(totalSpeed);
		}
		//show_debug_message("rightHeldTimer: " + string(rightHeldTimer));
		//show_debug_message("leftHeldTimer: " + string(leftHeldTimer));
	}else{
		if ((!moveRight && !moveLeft) || !run){
			
			determineTurnDirectionAndTurn(true);
		}else{
			determineTurnDirectionAndTurn(false);
		}
		
	}
	
	
}

function determineMachLevel(){
}

function machLogic(){
}
function determineTurnDirectionAndTurn(half){
	if (half){
		turn = -sign(horizontalSpeed);
	}else{
		turn = -sign(horizontalSpeed);
	}
	startTurn(turn, half);	
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
	downPressed = false;
	rightHeldTimer = 0;
	leftHeldTimer = 0;
	state = states.normal;
}
	
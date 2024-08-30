// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateMachTurn(){
	
	turnTimer--
	if (turnTimer == 0 && (moveLeft == 1 && moveRight == 1)){
		show_debug_message("swag")
		returnToNormalStateFromMach();
	}else if ((turnTimer == 0 && !(moveLeft == 1 && moveRight == 1) ||
			  (turnDirection != moveRight-moveLeft && moveRight-moveLeft != 0))){
		show_debug_message("jail u gay")
		enterMach(false, -turnDirection);
	}else if (!run){
		//if you stop holding shift or stop moving in any direction, go back to normal state
		
		returnToNormalStateFromMach();
	}else if ((moveRight-moveLeft == -turnDirection)){
		enterMach(false, -turnDirection)
		return 0;
	}
	machTimer();
	
	if !(turningLogic()){
		return
	}
	
	playerHorizontalCollision(self);
	playerVerticalCollision(self);
	playerWhiteguyCollision(self);
	playerRingCollision(self);
}

function offLikeAShotClouds(theMove){
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

function startTurn(newTurnDirection){
	if (newTurnDirection == 1 or newTurnDirection == -1){
		turnDirection = newTurnDirection
		turnTimer = turnTime;
		state = states.machTurn;
	}else{
		state = states.normal;
	}
}

function turningLogic(){
	if (turnTimer > turnTime-25){ //braking
		horizontalSpeed = horizontalSpeed*0.95;
	}else if (turnTimer > 0){ //turning
		if (moveRight && moveLeft){
			returnToNormalStateFromMach();
			return false;
		}
		horizontalSpeed = 0;
	}else{ //running again
		if (!place_meeting(x, y + 0.1, object_wall)){
			
			airTime = givenAirTime; //atm 20 but doublecheck lol
		}
		determineMove();
		horizontalSpeed = move*offLikeAShotSpeed;
		offLikeAShotClouds(move);
		enterMach(false, move);
	}
	return true
}
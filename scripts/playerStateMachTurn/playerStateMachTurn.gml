function playerStateMachTurn(){
	
	turnTimer--
	
	if (!run && !halfTurn){
		//if you stop holding shift and it's not a halfturn, go back to normal state
		
		returnToNormalStateFromMach();
	}
	turningLogic();
	
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

function startTurn(newTurnDirection, half){
	verticalSpeed = 0;
	if (hasFallen){
		y = y - playerGrav;
	}
	
	halfTurn = half;
	if (newTurnDirection == 1 or newTurnDirection == -1){
		turnDirection = newTurnDirection
		turnTimer = turnTime;
		state = states.machTurn;
	}else{
		state = states.normal;
	}
}

function turningLogic(){
	if (moveRight-moveLeft == -turnDirection){
		enterMach(false, moveRight-moveLeft)
		if (horizontalSpeed == 0){
			horizontalSpeed = (moveRight-moveLeft);
		}
	}else if (halfTurn && moveRight-moveLeft == turnDirection && run){ //if you're halfturning (AKA stopping), and you
		show_debug_message("we do a lil trolling")	           // decide you actually wanna turn
		halfTurn = false;
	}else if (turnTimer > turnTime-turnTimerBrakeStop){ //braking
		horizontalSpeed = horizontalSpeed*0.95;
	}else if (turnTimer > 0 && halfTurn == true){
		returnToNormalStateFromMach();
	}else if (turnTimer > 0){ //turning
		
		horizontalSpeed = 0;
	}else if (moveRight-moveLeft == turnDirection){ //running again

		if (!place_meeting(x, y + 0.1, object_wall)){
			
			airTime = givenAirTime; //atm 20 but doublecheck lol
		}
		horizontalSpeed = turnDirection*offLikeAShotSpeed;
		offLikeAShotClouds(turnDirection);
		enterMach(false, turnDirection);
	}else{
		returnToNormalStateFromMach();
	}
}
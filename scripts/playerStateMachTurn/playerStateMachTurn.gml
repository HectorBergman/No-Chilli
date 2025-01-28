function playerStateMachTurn(){
	
	turnTimer--
	if (down || downPressed){
		onGround = 0;
		downPressed = true;
		turnFall();
	}
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
		instance_create_depth(x, y+32, i, object_OLSClouds, cloudsStruct);
	}
	if (leftHeldTimer > mach2Start-1){
		playOneOfSeveral("snd_OLS_strong", 3)
	}else{
		playOneOfSeveral("snd_OLS", 4)
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
	if (turnTimer == turnTime-1){
		playOneOfSeveral("snd_brake", 3)
	}
	if (turnTimer == turnTime-turnTimerBrakeStop){
		audio_stop_sound(snd_brake1) 
		audio_stop_sound(snd_brake2) 
		audio_stop_sound(snd_brake3) 
	}
	if (moveRight-moveLeft == -turnDirection && run){
		enterMach(false, moveRight-moveLeft)
		if (horizontalSpeed == 0){
			horizontalSpeed = (moveRight-moveLeft);
		}
	}else if (halfTurn && moveRight-moveLeft == turnDirection && run && !turnDisabled){ //if you're halfturning (AKA stopping), and you
													           	      // decide you actually wanna turn
		halfTurn = false;
	}else if (turnTimer > turnTime-turnTimerBrakeStop){ //braking
		horizontalSpeed = horizontalSpeed*0.95;
		
	}else if (turnTimer > 0 && halfTurn == true){
		returnToNormalStateFromMach();
	}else if (turnTimer > 0){ //turning
		
		horizontalSpeed = 0;
	}else if (moveRight-moveLeft == turnDirection){ //running again
		if (!place_meeting(x, y + 0.1, object_wall)){
			if (!downPressed){
				airTime = givenAirTime; //atm 20 but doublecheck lol
			}
		}
		horizontalSpeed = turnDirection*(offLikeAShotSpeed + mach);
		offLikeAShotClouds(turnDirection);
		enterMach(false, turnDirection);
	}else{
		returnToNormalStateFromMach();
	}
}

function turnFall(){

	
	if (verticalSpeed < mediumFall){
		verticalSpeed = verticalSpeed + turnGrav;
	}
	else if (verticalSpeed >= mediumFall && verticalSpeed < maxFall){ //accelerate slower if verticalSpeed is more than 12
		verticalSpeed = verticalSpeed + turnGrav*0.5;
		
	}
	else { //stop accelerating if verticalSpeed greater than 20
		verticalSpeed = verticalSpeed;
	}
}
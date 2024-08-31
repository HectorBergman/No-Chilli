function playerStateMachTurn(){
	
	turnTimer--
	
	if (!run){
		//if you stop holding shift or stop moving in any direction, go back to normal state
		show_debug_message("brain")
		returnToNormalStateFromMach();
	}
	machTimer();
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
	if (moveRight-moveLeft == -turnDirection){
		show_debug_message("left brain")
		enterMach(false, moveRight-moveLeft)
		if (horizontalSpeed == 0){
			horizontalSpeed = (moveRight-moveLeft);
		}
	}else if (turnTimer > turnTime-25){ //braking
		horizontalSpeed = horizontalSpeed*0.95;
	}else if (turnTimer > 0){ //turning
		
		horizontalSpeed = 0;
	}else if (moveRight-moveLeft == turnDirection){ //running again
		show_debug_message("TEST")
		if (!place_meeting(x, y + 0.1, object_wall)){
			
			airTime = givenAirTime; //atm 20 but doublecheck lol
		}
		determineMove();
		horizontalSpeed = move*offLikeAShotSpeed;
		offLikeAShotClouds(move);
		enterMach(false, move);
	}else{
		show_debug_message("TD" + string(turnDirection));
		show_debug_message("move " + string(moveRight-moveLeft))
		show_debug_message("FUCK")
		returnToNormalStateFromMach();
	}
}
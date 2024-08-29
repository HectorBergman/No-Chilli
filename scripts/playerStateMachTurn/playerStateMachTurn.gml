// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateMachTurn(){
	
	turnTimer--
	if (turnTimer == 0 && (moveLeft == 1 && moveRight == 1)){
		returnToNormalStateFromMach();
	}else if ((turnTimer == 0 && !(moveLeft == 1 && moveRight == 1) ||
			  (turnDirection != moveRight-moveLeft && moveRight-moveLeft != 0))){
		enterMach(false, moveRight-moveLeft);
	}else if (!run || (moveLeft == false && turnDirection == -1) || moveRight == false && turnDirection == 1){
		//if you stop holding shift or stop moving in any direction, go back to normal state
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
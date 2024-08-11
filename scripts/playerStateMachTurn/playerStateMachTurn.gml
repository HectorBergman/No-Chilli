// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateMachTurn(){
	
	turnTimer--
	if (turnTimer == 0){
		state = states.mach

	}else if (!run || (moveLeft == false && moveRight == false)){
		//if you stop holding shift or stop moving in any direction, go back to normal state
		leftHeldTimer = 0;
		rightHeldTimer = 0;
		state = states.normal;
	}
	machTimer();
	if (turnTimer > turnTime-20){ //braking
		horizontalSpeed = horizontalSpeed*0.95;
	}else if (turnTimer > turnTime-30){ //turning
		horizontalSpeed = 0;
	}else{ //running again
		if (!place_meeting(x, y + 0.1, object_wall)){
			show_debug_message("hI");
			airTime = givenAirTime; //atm 20 but doublecheck lol
		}
		determineMove();
		horizontalSpeed = move*offLikeAShotSpeed;
		state = states.mach;
	}
	
	playerHorizontalCollision(self);
	playerVerticalCollision(self);
	playerWhiteguyCollision(self);
	playerRingCollision(self);
}
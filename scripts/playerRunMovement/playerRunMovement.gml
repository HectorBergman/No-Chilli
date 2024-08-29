// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerRunMovement(){
	
}

function machHorizontalMovement(_player){
	if (sign(horizontalSpeed) == move){
		if (mach == mach1Speed){
			if (abs(horizontalSpeed*move) > mach1Speed && onGround > -15){
				horizontalSpeed *= 0.993
			}else if (abs(horizontalSpeed*move) < mach1Speed){
				horizontalSpeed = move*mach1Speed;
			}else if onGround < -90{
				horizontalSpeed *= 0.998;
			}
			//essentially, if speed is above mach limit, slowly decrease it back to mach limit
		}else if (mach == mach2Speed){
			if (abs(horizontalSpeed*move) > mach2Speed && onGround > 8){
				horizontalSpeed *= 0.99
			}else if (horizontalSpeed < mach2Speed){
				horizontalSpeed = move*mach2Speed;
			}
		}
	}else{
		startTurn(move)
	}
}


function machCalculator(){ 
	
	machTimer();

			 
	if (rightHeldTimer >= mach1Start && rightHeldTimer < mach2Start || 
		leftHeldTimer >= mach1Start && leftHeldTimer < mach2Start){
		mach = mach1Speed;
	}
	else{
		mach = mach2Speed
	}
	return mach;
}

function turningLogic(){
	if (turnTimer > turnTime-20){ //braking
		horizontalSpeed = horizontalSpeed*0.95;
	}else if (turnTimer > 0){ //turning
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
	
}

function checkForSlide(){
	if (down && !(place_meeting(x + horizontalSpeed*1.2, y , object_wall))){
		horizontalSpeed *= slideMultiplier;
		slideDirection = sign(horizontalSpeed);
		state = states.slide
	}
}


function enterMach(resetTimer, newMachDirection){
	state = states.mach;
	machDirection = newMachDirection
	if (resetTimer){
		timeInMach = 0;
	}
}

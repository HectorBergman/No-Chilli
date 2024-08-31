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
			if (abs(horizontalSpeed*move) > mach2Speed && onGround > -15){
				horizontalSpeed *= 0.99
			}else if (abs(horizontalSpeed*move) < mach2Speed){
				horizontalSpeed = move*mach2Speed;
			}else if onGround < -90{
				horizontalSpeed *= 0.998;
			}
		}
	}else{
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

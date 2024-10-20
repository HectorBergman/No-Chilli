// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerRunMovement(){
	
}

function machHorizontalMovement(_player){
	if (onGround > 9){
		if (sign(horizontalSpeed) == move){
			if (mach == mach1Speed){
				machMovementCalculation(mach1Speed);
			}else if (mach == mach2Speed){
				machMovementCalculation(mach2Speed);
			}
		}
	}else{
		if (mach == mach1Speed){
			machMovementAirCalculation(mach1Speed)
		}else if (mach == mach2Speed){
			machMovementAirCalculation(mach2Speed)
		}
	}
}

function machMovementAirCalculation(machSpeed){
	var airMove = moveRight-moveLeft
	if (sign(horizontalSpeed) == airMove){
		if (abs(horizontalSpeed) < machSpeed){
			horizontalSpeed += airMove*0.2
		}else if (onGround < -40){
			horizontalSpeed *= 0.998
		}
	}else if (-sign(horizontalSpeed) == airMove){
		horizontalSpeed *= 0.97;
	}
}

function machMovementCalculation(machSpeed){
	if (abs(horizontalSpeed) > machSpeed && onGround > 5){
		horizontalSpeed *= 0.993
	}else if (abs(horizontalSpeed) < machSpeed){
		horizontalSpeed = move*machSpeed;
	}else if onGround < -90{
		horizontalSpeed *= 0.998;
	}

}

function machCalculator(){ 
	if (onGround >= 9){
		if (machDirection == -1){
			if (leftHeldTimer != 0){
				leftHeldTimer++
			}else{
				leftHeldTimer = rightHeldTimer + 1;
				rightHeldTimer = 0;
			}
		}else{
			if (rightHeldTimer != 0){
				rightHeldTimer++
			}else{
				rightHeldTimer = leftHeldTimer + 1;
				leftHeldTimer = 0;
			}
		}
	}
		
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
	if (down && onGround > 8 && slideTimer < 1){
		var currentMask = mask_index;
		mask_index = spr_player_slide
		if !(place_meeting(x + horizontalSpeed, y, object_wall)){
			horizontalSpeed *= slideMultiplier;
			slideDirection = sign(horizontalSpeed);
			state = states.slide
		}
		mask_index = currentMask;
	}
}
/*function canSlide(){
	var cantSlide = false;
	for (var i = 0; i < 10; i += 1){
		cantSlide = place_meeting(x + (horizontalSpeed)*i/2, y + 32 , object_wall)
		if (cantSlide){
			break
		}
	}
	return !cantSlide
}*/


function enterMach(resetTimer, newMachDirection){
	diveTimer = diveTime;
	downPressed = false;
	state = states.mach;
	machDirection = newMachDirection
	if (resetTimer){
		timeInMach = 0;
	}
}

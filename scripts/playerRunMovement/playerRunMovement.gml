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

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerRunMovement(){
	
}

function machHorizontalMovement(_player){

	if (mach == mach1Speed){
		if (horizontalSpeed*move > mach1Speed){
			horizontalSpeed *= 0.97
		}else{
			horizontalSpeed = move*mach1Speed;
		}
			//essentially, if speed is above mach limit, slowly decrease it back to mach limit
	}else if (mach == mach2Speed){
		if (horizontalSpeed*move > mach2Speed){
			horizontalSpeed *= 0.97
		}else{
			horizontalSpeed = move*mach2Speed;
		}
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
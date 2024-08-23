// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slideHorizontalMovement(){
	determineSlideMove();
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
		if (!(abs(horizontalSpeed) <= crawlSpeed)){
			wallTouch = 1;
			exitSlide(states.normal)
		}
	}else{
		
		wallTouch = 0;
		x = x + horizontalSpeed;
	}
	if (abs(horizontalSpeed) <= crawlSpeed && state == states.slide){ //TODO: make it so if speed is low enough when exiting slide,
																	 // reset machTimer and state = normal;
		slideWalking = true;
	}
	slideWalk();
	
}

function exitSlide(newState){
	slideWalking = false;
	state = newState;
}

function slideWalk(){
	if (slideWalking){
	
		rightHeldTimer = 0;
		leftHeldTimer = 0;
		if (onGround > 8){
			horizontalSpeed = slideMove*crawlSpeed
		}else{
			horizontalSpeed = 0;
		}
	}

}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wallBounce(){
	if (place_meeting(x + horizontalSpeed, y, object_wall) && onGround < 5){
		verticalSpeed = -20;
		bounce = 1;
		state = states.bounce;
	}
}

function bounceHorizontalMovement(){
	
	horizontalSpeed = round(move*bounceOneHoriSpeed)// + mach);
}

function bounceVerticalCollision(){
	if ((moveLeft ^^ moveRight) && place_meeting(x, y + verticalSpeed, object_wall)){
		if (startMachIfRun()){
			var tempTimer = leftHeldTimer;
			leftHeldTimer += rightHeldTimer;
			rightHeldTimer += tempTimer;
			if (moveLeft){
				rightHeldTimer = 0;
			}else{
				leftHeldTimer = 0;
			}
		}
		if (state != states.mach){
			endBounce(states.normal);
		}
	}
}
function bounceHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y, object_wall)){
		if (bounce == 1){
			bounce++;
			
		}
	}
}

function bounceVerticalMovement(){
	if (down){
		verticalSpeed += 0.8
	}else if (up){
		verticalSpeed -= 0.1
	}
}



function endBounce(newState){
	state = newState
}
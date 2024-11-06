// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateHotass(){
	determineMove()
	playerFall(self)
	hotassHorizontalMovementLogic(5)
	hotassVerticalCollision()
	playerHorizontalCollision(self)
	
	if (onGround){
		if (run){
			state = states.mach
		}else{
			state = states.normal
		}
	}
}

function hotassVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		onGround = true;
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
	}else{
		onGround = false;
	}
	y = y + verticalSpeed;
}

function hotassHorizontalMovementLogic(walkSpeeed){
	if (abs(horizontalSpeed) <= walkSpeeed){
			
		horizontalSpeed = move*(walkSpeeed)
			
	}else{
		if (sign(horizontalSpeed) == move){
			horizontalSpeed *= 0.995;
		}else{
			horizontalSpeed *= 0.9
		}
	}
}
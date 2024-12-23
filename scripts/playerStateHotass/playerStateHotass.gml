// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateHotass(){
	determineMove()
	playerFall(self)
	hotassHorizontalMovementLogic(hotassMax)
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
		stepCollisionWhileWithFailCon(object_wall, _vStep, false)
	}else if (place_meeting(x, y + verticalSpeed, obj_trait_landable)){
		onGround = true;
		verticalSpeed = 0;
	}else{
		onGround = false;
	}
	y = y + verticalSpeed;
}

function hotassHorizontalMovementLogic(walkSpeeed){
	if (abs(horizontalSpeed) <= walkSpeeed){
			
		horizontalSpeed += move*(walkSpeeed)/50
			
	}else{
		if (sign(horizontalSpeed) == move){
			horizontalSpeed *= 0.995;
		}else{
			horizontalSpeed *= 0.9;
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateBall(){

	determineMove()
	
	//see: script playerMovement
	ballHorizontalMovement();
	playerJump(self);
	ballVerticalCollision();
	playerFall(self);
	ballHorizontalCollision();
	playerWhiteguyCollision(self);
	if (grab){
		if (run){
			leftHeldTimer = 60;
			rightHeldTimer = 60;
			state = states.mach;
		}else{
			state = states.normal;
		}
	}
}

function hitBall(){
	var ballHit = false;
	with(currentBall){
		ballHit = place_meeting(x+horizontalSpeed, y+verticalSpeed, zobj_dressing) || place_meeting(x, y, zobj_dressing);
	}
	show_debug_message(ballHit);
	return ballHit
}

function ballFall(){
	var _grav = 0
	if (down){
		_grav = ballGravFastFall
	}else{
		_grav = ballGrav
	}
	
	if (verticalSpeed < mediumFall){
		verticalSpeed = verticalSpeed + _grav;
	}
	else if (verticalSpeed >= mediumFall && verticalSpeed < maxFall){ //accelerate slower if verticalSpeed is more than 12
		verticalSpeed = verticalSpeed + _grav*0.5;
		
	}
	else { //stop accelerating if verticalSpeed greater than 20
		verticalSpeed = verticalSpeed;
	}
}
function ballHorizontalMovement(){

	if (onGround > 0){
		if (sign(horizontalSpeed) != move){
				move *= 3;
		}
	}else{
		if (sign(horizontalSpeed) != move){
			move *= 1.25
		}else{
			move *= 0.5
		}
	}
	if (move != 0){
		if (abs(horizontalSpeed) < ballNearMaxSpeed){
				horizontalSpeed += move*ballIncrease
			}else if (abs(horizontalSpeed) < ballMaxSpeed){
				horizontalSpeed += move*ballNearMaxIncrease
			}else{
				horizontalSpeed *= 0.99;
			}
	}else{
		horizontalSpeed *= 0.99;
	}
}
function ballHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		if (abs(horizontalSpeed) > 2){
			horizontalSpeed = -horizontalSpeed *0.4;
			verticalSpeed -= 3;
		}else{
			horizontalSpeed = 0;
		}
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
	}
	
	x = x + horizontalSpeed;
}

function ballVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		if (verticalSpeed > 0){	
			onGround = 10;

		}
		var _vStep = sign(verticalSpeed);
		if (abs(verticalSpeed) > 4){
			verticalSpeed = -verticalSpeed*0.6;
			horizontalSpeed *= (1 + abs(verticalSpeed)/20);
		}else{
			verticalSpeed = 0
		}
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
	}else{
		hasFallen = true;
	}
	if (onGround < 10){
		y = y + verticalSpeed;
	}
}
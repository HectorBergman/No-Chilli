// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateBall(){

	determineMove()
	
	//see: script playerMovement
	ballHorizontalMovement();
	playerJump(self);
	ballVerticalCollision();
	playerFall(self);
	playerHorizontalCollision(self);
	playerWhiteguyCollision(self);

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
	show_debug_message(move);
	if (onGround > 0){
		if (sign(horizontalSpeed) != move){
				move *= 2;
		}
	}else{
		if (sign(horizontalSpeed) != move){
			move *= 0.5
		}else{
			move *= 0.25
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

function ballVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		if (verticalSpeed > 0){	
			onGround = 10;

		}
		var _vStep = sign(verticalSpeed);
		if (abs(verticalSpeed) > 2){
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
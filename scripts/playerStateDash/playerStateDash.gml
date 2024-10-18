// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateDash(){
	timeInDash--;

	//see: script playerCollision
	dashVerticalCollision()
	dashHorizontalCollision()
	playerWhiteguyCollision(self);
	verticalSpeed *= 0.99
	horizontalSpeed *= 0.99
	
	dashCooldown--
	if (dashCooldown <= dashEndTime){
		verticalSpeed = 0
		returnToNormal();
	}
}

function dashVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		hasFallen = false;
		if (verticalSpeed > 0){	
			onGround = 10;

		}
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
		returnToNormal();
	}else{
		hasFallen = true;
		y = y + verticalSpeed;
	}
	
	
	
}

function dashHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
		wallTouch = 1;
		returnToNormal();
	}else{
		wallTouch = 0;
		x = x + horizontalSpeed;
	}
	
	
}

function returnToNormal(){
	if (timeInDash > 0){ //if the dash was interrupted extremely early, give a pretty short cooldown
		dashCooldown = 20;
	}
	timeInMach = 0;
	horizontalSpeed = oldHorizontalSpeed;
	if (oldState != states.onball){
		state = oldState
	}else{ 
		state = states.normal;
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateDive(){
	if (horizontalSpeed == 0 || verticalSpeed == 0){
		state = states.normal;
	}
	diveHorizontalCollision();
	diveVerticalCollision();
	
}

function diveHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
		initiateBounce();
		startSecondBounce();
		horizontalSpeed = -horizontalSpeed;
		
	}else{
		wallTouch = 0;
	}
	
	x = x + horizontalSpeed;
}

function diveVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		if (verticalSpeed > 0){	
			onGround = 10;

		}
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		enterMach(false, horizontalSpeed);
		slideTimer = slideTime-20;
		diveTimer = diveTime;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
	}

	y = y + verticalSpeed;
}
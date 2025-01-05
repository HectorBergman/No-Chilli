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
		stepCollisionWhileWithFailCon(object_wall, _hStep, true)
		initiateBounce();
		startSecondBounce();
		horizontalSpeed = -horizontalSpeed;
		
	}else{
		wallTouch = 0;
	}
	
	x = x + horizontalSpeed;
}

function diveVerticalCollision(){
	fryingRailException();
	if (place_meeting(x, y + verticalSpeed, obj_trait_landable)){
		if (verticalSpeed > 0){	
			onGround = 10;

		}
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		enterMach(false, sign(horizontalSpeed));
		var _dir = sign(horizontalSpeed);
		horizontalSpeed = clamp((abs(horizontalSpeed)-2)*0.95, 0, 9999)*_dir;
		slideTimer = slideTime-20;
		diveTimer = diveTime;
		stepCollisionWhileWithFailCon(obj_trait_landable, _vStep, false)
	}

	y = y + verticalSpeed;
}
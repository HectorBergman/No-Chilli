// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function brusselStateNotActive(){
	if (originalRoom != room_get_name(room)){
		instance_destroy(visual);
		instance_destroy(id);
		exit;
	}
	visual.image_angle = visual.image_angle + horizontalSpeed;
	if ((place_meeting(x+chiliman.horizontalSpeed,y+chiliman.verticalSpeed,chiliman)) && kickedTimer < 0){

		if (chiliman.y + 60 < y && chiliman.state != states.onball){
			state = brusselState.active
			chiliman.state = states.onball;
			chiliman.currentBall = id;
			chiliman.y -= 40
		}else{
			horizontalSpeed = chiliman.horizontalSpeed*2;
			verticalSpeed = -abs(chiliman.horizontalSpeed*0.7);
			kickedTimer = kickedTime;
			
		}
	}//else if (place_meeting(x,y+chiliman.verticalSpeed,chiliman) && kickedTimer < 0){
		//state = brusselState.active;
	//}
	
	verticalSpeed += grav;
	brusselHorizontalCollision()
	brusselVerticalCollision()
	
}

function brusselHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		//if (!place_meeting(x + horizontalSpeed, y - 32, object_wall)){
		
		
		//}
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed *= -0.8;
		stepCollisionWhileWithFailCon(object_wall, _hStep, true)
	}
	
	x = x + horizontalSpeed;
}

function brusselVerticalCollision(){
	fryingRailException();
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		var _vStep = sign(verticalSpeed);
		if (abs(verticalSpeed) < 2){
			verticalSpeed = 0;
		}else{
			verticalSpeed *= -0.7;
		}
		horizontalSpeed *= 0.90;
		stepCollisionWhileWithFailCon(object_wall, _vStep, false)
	}
	
	y = y + verticalSpeed;
}
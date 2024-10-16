// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function brusselStateNotActive(){
	visual.image_angle = visual.image_angle + horizontalSpeed;
	if (place_meeting(x,y,chiliman) && kickedTimer < 0){
		show_debug_message("hi");
		horizontalSpeed = chiliman.horizontalSpeed*2;
		verticalSpeed = -abs(chiliman.horizontalSpeed*0.8);
		kickedTimer = kickedTime;
	}
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
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
	}
	
	x = x + horizontalSpeed;
}

function brusselVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		var _vStep = sign(verticalSpeed);
		if (abs(verticalSpeed) < 2){
			verticalSpeed = 0;
		}else{
			verticalSpeed *= -0.7;
		}
		horizontalSpeed *= 0.95;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
	}
	
	y = y + verticalSpeed;
}
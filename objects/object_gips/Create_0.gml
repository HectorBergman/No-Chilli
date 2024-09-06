/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
image_speed = 0;
image_index = spriteNumber
sprite_index = spr_gips
image_xscale = spriteDirection

verticalSpeed = 0;
horizontalSpeed = 0;

lifeTimeLeft = lifeTime


function gipsHorizontalCollision(){
	if (place_meeting(x - horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
	}
	
	x = x + horizontalSpeed;
}

function gipsVerticalCollision(){
	if (place_meeting(x, y - verticalSpeed*2, object_wall)){
		if (verticalSpeed > 0){	
			onGround = 10;
		}
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
	}
	y = y + verticalSpeed;
}
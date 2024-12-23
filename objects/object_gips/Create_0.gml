/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
image_speed = 0;
sprite_index = asset_get_index(spriteName);
image_xscale = spriteDirection

verticalSpeed = 0;
horizontalSpeed = 0;

lifeTimeLeft = lifeTime


function gipsHorizontalCollision(){
	if (place_meeting(x, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		stepCollisionWhileWithFailCon(object_wall, _hStep, true)
	}
	
	x = x + horizontalSpeed;
}

function gipsVerticalCollision(){
	if (place_meeting(x, y, object_wall)){
		if (verticalSpeed > 0){	
			onGround = 10;
		}
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		stepCollisionWhileWithFailCon(object_wall, _vStep, false)
	}
	y = y + verticalSpeed;
}
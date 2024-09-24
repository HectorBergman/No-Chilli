/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
image_speed = 0;
sprite_index = asset_get_index(sprite + string(spriteNumber));


verticalSpeed += chiliman.verticalSpeed/4
horizontalSpeed += chiliman.horizontalSpeed/4

lifeTimeLeft = lifeTime


function cuckooHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		spin = 0;
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
	}
	
	x = x + horizontalSpeed;
}

function cuckooVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		spin = 0;
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		horizontalSpeed *= 0.95
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
	}
	y = y + verticalSpeed;
}
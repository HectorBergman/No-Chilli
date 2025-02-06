/// @description Insert description here
// You can write your code in this editor
PAUSE
lifeTimeLeft--;

verticalSpeed = verticalSpeed + 0.2;
cuckooHorizontalCollision();
cuckooVerticalCollision();
image_angle += spin;

horizontalSpeed*=0.99


if (lifeTimeLeft < 0){
	instance_destroy(self);
}


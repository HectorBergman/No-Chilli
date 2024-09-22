/// @description Insert description here
// You can write your code in this editor
PAUSE
lifeTimeLeft--;

verticalSpeed = verticalSpeed + 0.3;


horizontalSpeed*=0.99

cuckooHorizontalCollision();
cuckooVerticalCollision();
if (lifeTimeLeft < 0){
	instance_destroy(self);
}


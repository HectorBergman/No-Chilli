/// @description Insert description here
// You can write your code in this editor

lifespan--;

verticalSpeed = verticalSpeed + 0.3;


horizontalSpeed*=0.99

x = x+horizontalSpeed;
y = y+verticalSpeed;
if (lifespan < 0){
	instance_destroy(self);
}

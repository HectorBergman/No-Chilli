/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
timer = 100;
verticalSpeed = 0;

enum dripstates{
	spawning,
	falling,
}
state = dripstates.spawning

function spawningState(){
	timer--
	if timer > 50{
		image_index = 0
	}else if timer > 0{
		image_index = 1;
	}else{
		image_index = 2;
		state = dripstates.falling
	}
}

function fallingState(){
	verticalSpeed += 0.2
	y = y + verticalSpeed;
}
/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
timer = 100;
verticalSpeed = 0;
splashTimer = 100;
enum dripstates{
	spawning,
	falling,
	splashing,
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
	if place_meeting(x,y,object_wall){
		for( var i = 0; i < 3; i++){
			steamStruct = {
					parent: id,
					frame : random_range(0,5)
			}
			instance_create_depth(x - 32 + random_range(-20,20), y, 10, obj_steam_interactable, steamStruct)
		}
		state = dripstates.splashing
	}
}

function splashingState(){
	splashTimer--
	if splashTimer < 0{
		instance_destroy(self)
	}else if (splashTimer > 60 && splashTimer mod 4 == 0){
		spawnSteam()
	}else if (splashTimer > 30 && splashTimer mod 8 == 0){
		spawnSteam()
	}else if (splashTimer mod 16 == 0){
		spawnSteam()
	}
}

function spawnSteam(){
	steamStruct = {
			parent: id,
			frame : random_range(0,5)
	}
	instance_create_depth(x - 32 + random_range(-32,32), y, 10, obj_steam_interactable, steamStruct)
}
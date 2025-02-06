/// @description Insert description here
// You can write your code in this editor
PAUSE

if (chiliman.ovenEntered && !closing){
	depth = -99
	closing = true;
	animationTimer = animationTime;
	instance_destroy(hide);
	collisionStruct = {
		parent: id,
	}
	collision = instance_create_depth(self.x, self.y, -100, obj_oven_damagingbox, collisionStruct)
}else if (chiliman.ovenEntered){
	animationTimer--;
	if (animationTimer == 119){
		image_index++;
	} else if (animationTimer == 111){
		image_index++;
	}else if (animationTimer == 0){
		chiliman.ovenEntered = false;
		chiliman.depth = 0;
		chiliman.destinationY = chiliman.sprite_height
		chiliman.destinationNumber = 99;
		chiliman.state = chiliman.ovenState
		room_goto(rm_oven_1);
	}
}
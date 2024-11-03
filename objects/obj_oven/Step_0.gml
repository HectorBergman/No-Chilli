/// @description Insert description here
// You can write your code in this editor
PAUSE

if (chiliman.ovenEntered && !closing){
	closing = true;
	animationTimer = animationTime;
	instance_destroy(hide);
}else if (chiliman.ovenEntered){
	animationTimer--;
	if (animationTimer == 119){
		image_index++;
	} else if (animationTimer == 114){
		image_index++;
	}else if (animationTimer == 0){
		chiliman.ovenEntered = false;
		chiliman.depth = 0;
	}
}
/// @description Insert description here
// You can write your code in this editor
pause_check()
if (!instance_exists(parent)){
	fading = true;
}
if (!fading){
	timer--
	var coolThing = ((intervall - sign(timer)*timer)/intervall) + 0.2
	if (coolThing < 0.2){
		image_alpha = 0.2
	}else{
		image_alpha = coolThing;
	}

	if (timer == -intervall-10){
		timer = intervall;
	}
}else{
	image_alpha *= 0.96
	if image_alpha < 0.01{
		instance_destroy(id)
	}
}
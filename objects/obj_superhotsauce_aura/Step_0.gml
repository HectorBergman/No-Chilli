/// @description Insert description here
// You can write your code in this editor
PAUSE
if (!instance_exists(parent)){
	fading = true;
}
if (!fading){
	timer--
	if (sign(timer) == 1){
		image_alpha = (intervall - timer)/intervall + 0.2;
	}else{
		image_alpha = (intervall + timer)/intervall + 0.2;
	}

	if (timer == -intervall){
		timer = intervall;
	}
}else{
	image_alpha *= 0.96
	if image_alpha < 0.01{
		instance_destroy(id)
	}
}
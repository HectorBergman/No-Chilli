/// @description Insert description here
// You can write your code in this editor
PAUSE
timer--
if (sign(timer) == 1){
	image_alpha = (intervall - timer)/intervall;
}else{
	image_alpha = (intervall + timer)/intervall;
}

on = image_alpha > 0.3

if (timer == -intervall){
	timer = intervall;
}

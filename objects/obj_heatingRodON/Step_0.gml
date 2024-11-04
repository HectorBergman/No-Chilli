/// @description Insert description here
// You can write your code in this editor
timer--
if (sign(timer) == 1){
	image_alpha = (intervall - timer)/intervall;
}else{
	image_alpha = (intervall + timer)/intervall;
}
if (timer == -intervall){
	timer = intervall;
}

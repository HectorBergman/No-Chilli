/// @description Insert description here
// You can write your code in this editor
timer++
if (instance_find(obj_deathScreen, 0) || instance_find(obj_relax, 0)){
	drawThis = false;
}else{
	drawThis = true;
}
lowerPulse();
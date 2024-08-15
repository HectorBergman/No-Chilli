/// @description Insert description here
// You can write your code in this editor
/*if (chiliman.horizontalSpeed > camAheadLimitSpeed){
	camAheadX = camAheadLimitSpeed - camAheadStartSpeed;
}else if (chiliman.horizontalSpeed < -camAheadLimitSpeed){
	camAheadX = -camAheadLimitSpeed + camAheadStartSpeed;
}else if (-camAheadStartSpeed < chiliman.horizontalSpeed && chiliman.horizontalSpeed < camAheadStartSpeed){
	camAheadX = 0;
}else if (chiliman.horizontalSpeed > 0){
	camAheadX = chiliman.horizontalSpeed - camAheadStartSpeed
}else if (chiliman.horizontalSpeed < 0){
	camAheadX = chiliman.horizontalSpeed + camAheadStartSpeed
}else{
	camAheadX = 0;
}*/
if (chiliman.verticalSpeed > camAheadLimitSpeed){
	camAheadY = camAheadLimitSpeed - camAheadStartSpeed;
}else if (chiliman.verticalSpeed < -camAheadLimitSpeed){
	camAheadY = -camAheadLimitSpeed + camAheadStartSpeed;
}else if (-camAheadStartSpeed < chiliman.verticalSpeed && chiliman.verticalSpeed < camAheadStartSpeed){
	camAheadY = 0;
}else if (chiliman.verticalSpeed > 0){
	camAheadY = chiliman.verticalSpeed - camAheadStartSpeed
}else if (chiliman.verticalSpeed < 0){
	camAheadY = chiliman.verticalSpeed + camAheadStartSpeed
}else{
	camAheadY = 0;
}


if (follow != noone) //todo better camera, one that doesnt lag behind
{
	x = follow.x+camAheadX;
	y = follow.y+32+camAheadY;
}
x = clamp(x, 0+camWidth/2, room_width-camWidth/2);
camX = round(x-(camWidth*0.5))
camY = round(y-(camHeight*0.5))

camera_set_view_pos(view_camera[0], camX, camY);





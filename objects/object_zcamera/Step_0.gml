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
if (isZoomOut == false && camState != camStates.zoomOut && chiliman.state != states.normal){
	camState = camStates.zoomOut
	isZoomOut = true;
	isZoomIn = false;
}else if (isZoomIn == false && camState != camStates.zoomIn && chiliman.state == states.normal){
	camState = camStates.zoomIn
	isZoomOut = false;
	isZoomIn = true;
}
camera_set_view_size(view_camera[0],camWidth,camHeight)

if (isZoomOut){
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
}else{
	camAheadY = 0;
}


if (follow != noone) //todo better camera, one that doesnt lag behind
{
	x = follow.x+camAheadX;
	y = follow.y+32+camAheadY;
}
x = clamp(x, 0+camWidth/2, room_width-camWidth/2);
camX = x-(camWidth*0.5)
camY = y-(camHeight*0.5)

camera_set_view_pos(view_camera[0], camX, camY);
show_debug_message("camWidth:" + string(camWidth))
show_debug_message("camHeight:" + string(camHeight))
switch(camState){
	case camStates.normal: cameraStateNormal(); break;
	case camStates.zoomOut: cameraStateZoomOut(); break;
	case camStates.zoomIn: cameraStateZoomIn(); break;
}





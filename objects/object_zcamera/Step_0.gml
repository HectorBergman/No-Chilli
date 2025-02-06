/// @description Insert description here
// You can write your code in this editor

pause_check()
if (chiliman.state == states.levelcomplete){ exit;}
if (chiliman.state == states.hax){ camState = camStates.hax;}

if (isZoomOut == false && camState != camStates.zoomOut && !cameraShouldZoomIn() && cameraShouldNotChange()){
	camState = camStates.zoomOut
	isZoomOut = true;
	isZoomIn = false;
}else if (isZoomIn == false && camState != camStates.zoomIn && cameraShouldZoomIn() && cameraShouldNotChange()){
	if (cameraShouldFastZoom()){
		fastZoom = true;
	}
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
y = clamp(y, 0+camHeight/2, room_height-camHeight/2);
camX = x-(camWidth*0.5)
camY = y-(camHeight*0.5)

camera_set_view_pos(view_camera[0], camX, camY);
//show_debug_message("camWidth:" + string(camWidth))
//show_debug_message("camHeight:" + string(camHeight))
if (camWidth < camWidthNormal || camHeight < camHeightNormal){
	camWidth = camWidthNormal;
	camHeight = camHeightNormal;
}else if (camWidth > camWidthRun || camHeight > camHeightRun){
	camWidth = camWidthRun;
	camHeight = camHeightRun;
}

switch(camState){
	case camStates.normal: cameraStateNormal(); break;
	case camStates.zoomOut: cameraStateZoomOut(); break;
	case camStates.zoomIn: cameraStateZoomIn(); break;
	case camStates.hax: camWidth = 1920; camHeight = 1080; break;
}







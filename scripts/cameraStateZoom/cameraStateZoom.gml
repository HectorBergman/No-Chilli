// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cameraStateZoomOut(){
	zoomTimer -= 2;
	if (zoomTimer > 0){
		camWidth += widthLinearZoom;
		camHeight += heightLinearZoom;

	}else{
		camWidth += widthLinearZoom;
		camHeight += heightLinearZoom;
		camState = camStates.normal;
	}

}

function cameraStateZoomIn(){
	zoomTimer++
	if (zoomTimer < 40){
		camWidth -= widthLinearZoom/2;
		camHeight -= heightLinearZoom/2;
	}else{
		camWidth -= widthLinearZoom/2;
		camHeight -= heightLinearZoom/2;
		camState = camStates.normal;
	}

}

function cameraShouldZoomIn(){
	return (chiliman.state == states.normal || (chiliman.state == states.slide && abs(chiliman.horizontalSpeed) < 1))
}
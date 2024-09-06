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
	if (fastZoom == false){
		zoomTimer++
		if (zoomTimer < 40){
			camWidth -= widthLinearZoom/2;
			camHeight -= heightLinearZoom/2;
		}else{
			camWidth -= widthLinearZoom/2;
			camHeight -= heightLinearZoom/2;
			camState = camStates.normal;
		}
	}else{
		zoomTimer += 2;
		if (zoomTimer < 40){
			camWidth -= widthLinearZoom;
			camHeight -= heightLinearZoom;
		}else{
			camWidth -= widthLinearZoom;
			camHeight -= heightLinearZoom;
			fastZoom = false;
			camState = camStates.normal;
		}
	}
	
}

function cameraShouldZoomIn(){
	return (chiliman.state == states.normal || (chiliman.state == states.slide && abs(chiliman.horizontalSpeed) < 1) || chiliman.state == states.crash)
}

function cameraShouldFastZoom(){
	return chiliman.state == states.crash;
}

function cameraShouldNotChange(){
	return !(chiliman.state == states.dash || chiliman.state == states.dead)
}
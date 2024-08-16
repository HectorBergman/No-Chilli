// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function slideHorizontalMovement(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
		wallTouch = 1;
		state = states.normal;
	}else{
		
		wallTouch = 0;
	}
	
	x = round(x + horizontalSpeed);
}
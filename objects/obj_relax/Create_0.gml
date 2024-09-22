/// @description Insert description here
// You can write your code in this editor

grav = 0.2;
verticalSpeed = 0;
horizontalSpeed = 0;

prevMouseX = mouse_x;
prevMouseY = mouse_y;


function relaxoHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
		horizontalSpeed = -_hStep*((abs(horizontalSpeed)))/2;
	}
}
function relaxoVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		var _vStep = sign(verticalSpeed);
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
		verticalSpeed = -_vStep*(sqrt(abs(verticalSpeed)));
	}
}
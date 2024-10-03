// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saladStateAwake(){
	
	saladAnimation();
	
	trackChili();
}


function saladAnimation(){
	timer = get_timer()/1000 - timer_start //milliseconds
	image_xscale = -sign(chiliman.x - x);
	if (timer > 100){
		if (image_index != 16){
			image_index++
			timer_start = get_timer()/1000
		}else{
			image_index = 7;
			timer_start = get_timer()/1000
		}
	}
}

function trackChili(){
	if (abs(horizontalSpeed) < topSpeed){
		if (sign(chiliman.x - x) == sign(horizontalSpeed)){
			horizontalSpeed += sign(chiliman.x - x) * speedIncrement;
		}else{
			horizontalSpeed += sign(chiliman.x - x) * speedIncrement*2;
		}
	}
	
}


function saladHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
	}
	
	x = x + horizontalSpeed;
}

function saladVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
	}
	y = y + verticalSpeed;
}
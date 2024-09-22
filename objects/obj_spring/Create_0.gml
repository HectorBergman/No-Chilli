/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
image_speed = 0;
sprite_index = sprite
enum springStates{
	normal,
	bounce,
}
state = springStates.normal;
//verticalSpeed += chiliman.verticalSpeed
//horizontalSpeed += chiliman.horizontalSpeed


lifeTimeLeft = lifeTime
savedSpeed = 0;
bounceTime = 5
grav = 0.3;
function calculateTilGround(){ //calculates how many steps until the spring hits the ground again
	
	startVeriSpeed = verticalSpeed
	startIterationsUntilGround = ceil((2*abs(startVeriSpeed)-grav)/2)
	show_debug_message(startIterationsUntilGround);
	iterationsUntilGround = startIterationsUntilGround;
}
calculateTilGround();

function springHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
		horizontalSpeed = -horizontalSpeed;
	}
	x = x + horizontalSpeed;
}

function springVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		savedSpeed = verticalSpeed;
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
		state = springStates.bounce
	}
	y = y + verticalSpeed;
}


function normalState(){
	image_index = 1;
	iterationsUntilGround--
	verticalSpeed = verticalSpeed + grav;
	horizontalSpeed*=0.9995
	if (iterationsUntilGround > ceil(startIterationsUntilGround/4 && iterationsUntilGround < ceil(startIterationsUntilGround/4*3))){
		image_angle = 90;
	}else if (iterationsUntilGround <= ceil(startIterationsUntilGround/4)){
		image_angle = 180;
	}else{
		image_angle = 0;
	}
	springHorizontalCollision();
	springVerticalCollision();
}
function bounceState(){
	calculateTilGround();
	image_index = 0;
	bounceTime--
	if (bounceTime < 0){
		verticalSpeed = -savedSpeed;
		state = springStates.normal
		bounceTime = 5;
	}
}


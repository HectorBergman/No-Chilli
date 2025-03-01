/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
image_speed = 0;
sprite_index = sprite
big = true;
horizontalSpeed += chiliman.horizontalSpeed/3

currentAudio = noone;
currentGain = 100/abs(max(point_distance(x, y, chiliman.x, chiliman.y),100));

enum springStates{
	normal,
	bounce,
}
state = springStates.normal;
firstContact = true; //no spinning before first landing cause it starts tweakin

lifeTimeLeft = lifeTime
savedSpeed = 0;
bounceTime = 5
grav = 0.3;
function calculateTilGround(){ //calculates how many steps until the spring hits the ground again
	
	startVeriSpeed = verticalSpeed
	startIterationsUntilGround = -ceil((2*(-startVeriSpeed)/(-grav))-1)
	//show_debug_message("iterations: " + string(startIterationsUntilGround));
	iterationsUntilGround = startIterationsUntilGround;
}
calculateTilGround();

function springHorizontalCollision(){
	try{
		if (place_meeting(x + horizontalSpeed, y , object_wall)){
			var _hStep = sign(horizontalSpeed);
			stepCollisionWhileWithFailCon(object_wall, _hStep, true)
			horizontalSpeed = -horizontalSpeed;
		}
		x = x + horizontalSpeed;
	}catch(error){
		instance_destroy(self);
		show_debug_message("gone");
	}
}

function springVerticalCollision(){
	try{
		if (place_meeting(x, y + verticalSpeed, object_wall)){
			savedSpeed = verticalSpeed;
			var _vStep = sign(verticalSpeed);
			verticalSpeed = 0;
			stepCollisionWhileWithFailCon(object_wall, _vStep, false);
			state = springStates.bounce
			firstContact = false;
		}
		y = y + verticalSpeed;
	}catch(error){
		instance_destroy(self);
		show_debug_message("gone");
	}
}


function normalState(){
	image_index = 1;
	iterationsUntilGround--
	verticalSpeed = verticalSpeed + grav;
	horizontalSpeed*=0.9995
	if (!firstContact){
		image_angle = -sign(horizontalSpeed)*180/startIterationsUntilGround * (startIterationsUntilGround-iterationsUntilGround)
	}
	/*if (iterationsUntilGround > ceil(startIterationsUntilGround/4 && iterationsUntilGround < ceil(startIterationsUntilGround/4*3))){
		image_angle = 90;
	}else if (iterationsUntilGround <= ceil(startIterationsUntilGround/4)){
		image_angle = 180;
	}else{
		image_angle = 0;
	}*/
	
	springHorizontalCollision();
	springVerticalCollision();
}
function bounceState(){
	image_index = 0;
	image_angle = 0;
	bounceTime--
	if (bounceTime < 0){
		if (abs(savedSpeed) < 3){
			bounceTime = 99999;
		}else{
			if (abs(savedSpeed) < 4){
				horizontalSpeed = -horizontalSpeed;
			}
			
			verticalSpeed = -savedSpeed;
			verticalSpeed *= 0.99
			calculateTilGround();
			state = springStates.normal
			bounceTime = 5;
			if (abs(horizontalSpeed) > 4){
				big = true;
			}else{
				big = false;
			}
			audio_stop_sound(currentAudio);
			if (big){
				currentAudio = playOneOfSeveralLocation("snd_spring_big", 2, 1 , x, y)
			}else{
				currentAudio = playOneOfSeveralLocation("snd_spring_small", 2, 1, x, y)
			}
		}
	}else if (bounceTime > 90000){
		lifeTimeLeft -= 7
	}
}


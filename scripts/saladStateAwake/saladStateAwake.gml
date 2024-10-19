// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saladStateAwake(){
	if (onGround){
		jumpCooldown--
	}
	saladAnimation();
	trackChili();
	hitChili();
	
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

function hitChili(){
	 if (place_meeting(x, y , chiliman)){
		var dressing_id  = id;
		if !(chiliman.state == states.onball || chiliman.state == states.dead){
			with(chiliman){
			
				initiateCrash(60, dressing_id);
	
			}
		}else if (chiliman.state == states.onball){
			var ballHit = false;
			with (chiliman){
				ballHit = hitBall();
			}
			show_debug_message(ballHit);
			if (!ballHit){
				with(chiliman){
					initiateCrash(60, dressing_id);
				}
			}
		}
		state = saladState.dying
		verticalSpeed = -10;
		horizontalSpeed *= -1;
	 }
}

function trackChili(){
	if (abs(chiliman.x - x) > 600 || abs(chiliman.y - y) > 600){
		state = saladState.waiting;
		horizontalSpeed = 0;
	}else if (abs(horizontalSpeed) < topSpeed){
		
		horizontalSpeed += sign(chiliman.x - x) * speedIncrement;
		horizontalSpeed *= 0.98
		jumpIfChiliClose();
	}
	
}

function jumpIfChiliClose(){
	show_debug_message("hori " + string(sign(horizontalSpeed)))
	show_debug_message("distance " + string(sign(x - chiliman.x)))
	if (sign(horizontalSpeed) == sign(chiliman.x - x) && abs(chiliman.x - x) < 200){
		if (abs(x-chiliman.x < 150) && onGround){
			saladJump(7, jumpCooldownTime*2);
		}
	}
}


function saladJump(height, cooldown){
	if (jumpCooldown < 1){
		verticalSpeed += -height
		jumpCooldown = cooldown;
	}
}

function saladHorizontalCollision(){
	if (onGround && findJumpable() && state = saladState.awake){
			saladJump(10, jumpCooldownTime)
	}
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		//if (!place_meeting(x + horizontalSpeed, y - 32, object_wall)){
		
		
		//}
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
	}
	
	x = x + horizontalSpeed;
}


function findJumpable(){
	var jumpable = false;
	for (var i = 0; i < 16; i += 1){
		jumpable = place_meeting(x + sign(horizontalSpeed)*i*3, y , object_wall)
		if (jumpable){
			break;
		}
	}
	return jumpable;
}
function saladVerticalCollision(){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		if (state == saladState.dying){
			state = saladState.dead;
		}
		onGround = true;
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
	}else{
		onGround = false;
	}
	y = y + verticalSpeed;
}
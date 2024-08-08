// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerHorizontalCollision(_player){
	if (place_meeting(x + horizontalSpeed, y , object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		while(!place_meeting(x+_hStep,y,object_wall)) x += _hStep;
		walltouch = 1;
		
		playerCollisionWhileSwinging()
	}else{
		walltouch = 0;
	}
	
	x = round(x + horizontalSpeed);
}

function playerVerticalCollision(_player){
	if (place_meeting(x, y + verticalSpeed, object_wall)){
		if (verticalSpeed > 0){	
			onGround = 10;
		}
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		while(!place_meeting(x,y+_vStep, object_wall)) y += _vStep;
		playerCollisionWhileSwinging()
	}
	y = round(y + verticalSpeed);
}

function playerWhiteguyCollision(_player){
	if (place_meeting(x, y + verticalSpeed, object_whiteGuy)){
		playerDeath(_player);
	}
}

function playerRingCollision(_player){
	var collidedRing = collision_rectangle(self.x-300, self.y-300, self.x+300, self.y+300, object_ring, false, true);
	if (collidedRing){
		if (grab && !collidedRing.held){
			currentRing = collidedRing;
			collidedRing.held = true;
			collidedRing.sprite_index = spr_ringheld;
			collidedRing.arm = instance_create_layer(x, y, "Instances", object_arm);
			collidedRing.arm.parent = collidedRing;
			ringHeld = true;
			state = states.ring;
			playerStartSwing(collidedRing);
		}
		else if (!grab && collidedRing.held){
			collidedRing.held = false;
			collidedRing.sprite_index = spr_ring;
			ringHeld = false;
		}
	}else{
		if (currentRing){
			currentRing.held = false
			currentRing.sprite_index = spr_ring;
			ringHeld = false;
			currentRing = noone;
		}
	}
}

function playerCollisionWhileSwinging() {
	if(state == states.ring){
		ropeAngle = point_direction(handX, handY, ropeX, ropeY);
		ropeAngleVelocity = -ropeAngleVelocity*0.5;
		
	}
}

function oldShit(){
	/*if (place_meeting(x + horizontalSpeed, y , object_wall))
	{
		while (abs(horizontalSpeed) > 0.1)
		{
			horizontalSpeed = horizontalSpeed * 0.5; //halve horizontalSpeed
			if (!place_meeting(x + horizontalSpeed, y, object_wall)) x += horizontalSpeed
		}
		horizontalSpeed = 0;
		wallTouch = 1;
	}else{
		wallTouch = 0;
	}*/
	
	if (place_meeting(x, y + verticalSpeed, object_wall))
		{
		if (verticalSpeed > 0) onGround = 10;
		while (abs(verticalSpeed) > 0.1)
		{
			verticalSpeed = verticalSpeed * 0.5; //halve verticalSpeed
			if (!place_meeting(x, y + verticalSpeed, object_wall)) y += verticalSpeed
		}
		verticalSpeed = 0;
	}
}
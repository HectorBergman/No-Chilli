// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//for collision to ensure collision ends up connecting.
//Object: type of object attempting to connect with (ex: object_wall)
//Step: which direction to step in, -1 for up or left, 1 for right or down
//Horizontal (bool): true for left/right, false for down/up
function stepCollisionWhileWithFailCon(object, step, horizontal){
	global.preWhileCoord = [x,y];
	while(!place_meeting(x+step*horizontal,y+step*!horizontal,object)){
		x += step*horizontal;
		y += step*!horizontal
		global.whileFail++
		if (global.whileFail == global.whileFailLimit){
			x = global.preWhileCoord[0]
			y = global.preWhileCoord[1]
			global.whileFail = 0
			break;
		}
	}
}
function playerHorizontalCollision(_player){
	if (checkCollision(horizontalSpeed, 0, object_wall)){
		var _hStep = sign(horizontalSpeed);
		horizontalSpeed = 0;
		preWhileCoord = x;
		stepCollisionWhileWithFailCon(object_wall, _hStep, 1);
		wallTouch = 1;
		
		playerCollisionWhileSwinging()
	}else{
		wallTouch = 0;
	}
	
	x = x + horizontalSpeed;
}
function fryingRailException(){
	var rail = instance_place(x, y + verticalSpeed, obj_fryingRail);
	if (rail != noone){
		if (verticalSpeed > 0 && rail.y+16 > self.y+self.sprite_height){
			standingOn = instance_place(x, y + verticalSpeed, object_wall)
			hasFallen = false;
			if (verticalSpeed > 0){	
				onGround = 10;
			}
			var _vStep = sign(verticalSpeed);
			verticalSpeed = 0;
			stepCollisionWhileWithFailCon(obj_fryingRail, _vStep, false)
		}
	}
}
function lasagnaFeebleException(){
	var lasagna = instance_place(x, y + verticalSpeed, obj_lasagna_feeble);
	if (lasagna != noone){
		if (verticalSpeed > 0 && lasagna.y+16 > self.y+self.sprite_height){
			standingOn = instance_place(x, y + verticalSpeed, object_wall)
			hasFallen = false;
			if (verticalSpeed > 0){	
				onGround = 10;
			}
			var _vStep = sign(verticalSpeed);
			verticalSpeed = 0;
			stepCollisionWhileWithFailCon(obj_lasagna_feeble, _vStep, false)
		}
	}
}
function asparagusException(){
	var asparagus = instance_place(x, y + verticalSpeed, obj_aspargusSpear);
	if (asparagus != noone && !(asparagus.image_index == 2 || asparagus.image_index == 1)){

		if (verticalSpeed > 0 && asparagus.y+16 > self.y+self.sprite_height){

			standingOn = instance_place(x, y + verticalSpeed, object_wall)
			hasFallen = false;
			if (verticalSpeed > 0){	

				onGround = 10;
			}
			var _vStep = sign(verticalSpeed);
			verticalSpeed = 0;
			var ridingSpearOffset = asparagus.flyingSpeed*asparagus.thrownDirection*!asparagus.yAxis;
			if (!checkCollision(horizontalSpeed + ridingSpearOffset, 0, object_wall)){
				x = x + ridingSpearOffset
			}

			stepCollisionWhileWithFailCon(obj_aspargusSpear, _vStep, false)
			
		}
	}
}

function allExceptions(){
	fryingRailException();
	lasagnaFeebleException();
	asparagusException()
}
function checkCollision(horizontalSpeedAdded, verticalSpeedAdded, object){
	return place_meeting(x + horizontalSpeedAdded, y + verticalSpeedAdded, object)
}

function playerVerticalCollision(_player){
	allExceptions();
	if (checkCollision(0, verticalSpeed, object_wall)){
		standingOn = instance_place(x, y + verticalSpeed, object_wall)
		hasFallen = false;
		if (verticalSpeed > 0){	
			onGround = 10;

		}
		var _vStep = sign(verticalSpeed);
		verticalSpeed = 0;
		stepCollisionWhileWithFailCon(object_wall, _vStep, false)
		playerCollisionWhileSwinging() //this is bad programming but i dont want to change it cause its
										// kind of annoying + my code, my rules B)
	}else{
		hasFallen = true;
	}
	if (onGround < 10){
		y = y + verticalSpeed;
	}
}

function playerWhiteguyCollision(_player){
	if (place_meeting(x, y + verticalSpeed, object_whiteGuy_collision)){
		playerDeath();
	}
	if (place_meeting(x, y + verticalSpeed, obj_chillicClone)){
		playerDeath();
	}
}

function playerRingCollision(_player){
	var collidedRing = collision_rectangle(self.x-300, self.y-300, self.x+300, self.y+300, object_ring, false, true);
	if (collidedRing){
		if (grab && state != states.ring && ringCooldown <= 0 && onGround < 10){
			ringState = state;
			currentRing = collidedRing;
			collidedRing.held = true;
			collidedRing.sprite_index = spr_ringheld;
			collidedRing.arm = instance_create_layer(x, y, "Instances", object_arm);
			collidedRing.arm.parent = collidedRing;
			state = states.ring;
			playerStartSwing(collidedRing);
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
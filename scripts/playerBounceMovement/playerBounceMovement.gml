// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initializeBounce(){
	if (place_meeting(x + horizontalSpeed, y, object_wall) && onGround < 10){
		verticalSpeed = initialBounceVertical;
		bounceNr = 1;
		bounceTimer = bounceTime;
		bounceMaxSpeed = bounceOneMaxHorizontalSpeed; //abs(horizontalSpeed);
		bounceWallTouch = true;
		bouncedWall = sign(horizontalSpeed)
		horizontalSpeed = -bouncedWall*bounceOneBounceOffWallHorizontalSpeed;
		state = states.bounce;
		
	}
}

function bounceHorizontalMovement(){ //this is shit
	if (bounceNr == 1){
		decideWhichWallIsBouncedOffAndActAccordingly(1)
	}else if (bounceNr == 2){
		decideWhichWallIsBouncedOffAndActAccordingly(2)
	}else{
			throw("bounceNr is not 1 or 2")
	}
}

function decideWhichWallIsBouncedOffAndActAccordingly(numberBounce){
	if (numberBounce == 1){
		if (bouncedWall == 1){
			decideSpeedWhenBouncingOffWallDependingOnDirection(0.8, 0.5)
		}else if (bouncedWall == -1){
			decideSpeedWhenBouncingOffWallDependingOnDirection(0.5, 0.8)
		}else{
			throw("Bounced wall is not -1 or 1")
		}
	}else{
		if (bouncedWall == 1){
			decideSpeedWhenBouncingOffWallDependingOnDirection(1.0, 0.4)
		}else if (bouncedWall == -1){
			decideSpeedWhenBouncingOffWallDependingOnDirection(0.4, 1.0)
		}else{
			throw("Bounced wall is not -1 or 1")
		}
	}
}

function decideSpeedWhenBouncingOffWallDependingOnDirection(multWhenLeft, multWhenRight){
	if (move == 1 && horizontalSpeed < bounceMaxSpeed){
		horizontalSpeed += move*bounceSpeedAdder*multWhenRight
	}else if (move == -1 && horizontalSpeed > -bounceMaxSpeed){
		horizontalSpeed += move*bounceSpeedAdder*multWhenLeft
	}else if (move == 0){
		horizontalSpeed *= 0.98
	}
}


function bounceVerticalCollision(){
	if (verticalSpeed > 0 && place_meeting(x, y + verticalSpeed, object_wall)){
		if (run){
			if (moveRight-moveLeft == 0){
				endBounce(states.normal);
			}else if (moveRight-moveLeft == sign(horizontalSpeed)){
				enterMach(true, moveRight-moveLeft)
			}else{
				playerVerticalCollision(self)
				startTurn(moveRight-moveLeft, false, false)
				return;
			}
			
		}
		if (run && state == states.mach){
			var tempTimer = leftHeldTimer;
			leftHeldTimer += rightHeldTimer;
			rightHeldTimer += tempTimer;
			if (moveLeft){
				rightHeldTimer = 0;
			}else{
				leftHeldTimer = 0;
			}
		}else{
			endBounce(states.normal);
		}
	}
}
function bounceHorizontalCollision(){
	if (place_meeting(x + horizontalSpeed, y, object_wall)){
		if (bounceNr == 1 && bounceWallTouch == false){
			bouncedWall = sign(horizontalSpeed);
			bounceNr = 2; //todo make movement from bounced wall slower
			bounceMaxSpeed = bounceTwoMaxHorizontalSpeed;
			verticalSpeed = secondBounceVertical;
			horizontalSpeed = -bouncedWall*bounceTwoBounceOffWallHorizontalSpeed + -bouncedWall*abs(horizontalSpeed);
			
		}
	}else{
		bounceWallTouch = false;
	}
}

function bounceVerticalMovement(){
	if (down){
		verticalSpeed += 0.5
	}else if (up){
		verticalSpeed -= 0.1
	}
}

function bounceFall(){
	if (verticalSpeed < mediumFall){
		verticalSpeed = verticalSpeed + bounceGrav;
	}
	else if (verticalSpeed >= mediumFall && verticalSpeed < maxFall){ //accelerate slower if verticalSpeed is more than 12
		verticalSpeed = verticalSpeed + bounceGrav*0.5;
		
	}
	else { //stop accelerating if verticalSpeed greater than 20
		verticalSpeed = verticalSpeed;
	}
}



function endBounce(newState){
	state = newState
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function playerJump(_player){
	canJump = false;
	if (onGround-- > 0) && (jump) //onGround is set to 10 when colliding with ground below you
	{
		canJump = true;
	}else if ((jumpsLeft > -9999) && (jump)){
		jumpsLeft = 1; //jank solution, don't want to have two mid-air jumps
		canJump = true;		  // if you fall off platform
		
	}
	if (canJump = true){
		
		if (jumpsLeft == 2){ //different jump on second jump
			verticalSpeed = jumpSpeed;
			lastMoveGround = move;
		}else{
			verticalSpeed = jumpSpeed*secondJump;
		}
		jumpsLeft--;
		onGround = 0;
		lastMoveGround = move;
	} else if (onGround > 0){
		jumpsLeft = 2;
	}
}



function playerFall(_player){

	if keyboard_check_released(vk_up) && verticalSpeed<0{
		verticalSpeed*=.6
	}
	if (verticalSpeed < mediumFall){
		verticalSpeed = verticalSpeed + playerGrav;
	}
	else if (verticalSpeed >= mediumFall && verticalSpeed < maxFall){ //accelerate slower if verticalSpeed is more than 12
		verticalSpeed = verticalSpeed + playerGrav*0.5;
		
	}
	else { //stop accelerating if verticalSpeed greater than 20
		verticalSpeed = verticalSpeed;
	}
}


function playerHorizontalMovement(_player){
	if (_keyShift > 0){
		//mach = machCalculator()
		horizontalSpeed = round(move*walkSpeed)// + mach);
	}else{
		rightHeldTimer = 0;
		leftHeldTimer = 0;
		horizontalSpeed = round(move*walkSpeed)
	}
	
}



function machTimer(){ //TODO: make sure you have to be onground through whole start
	if (onGround > 0){
		if (moveRight && !moveLeft){
			if (rightHeldTimer > 0){
				rightHeldTimer++;
			}else if (leftHeldTimer <= 0){ //allows you to switch between left and right without losing speed
				rightHeldTimer++;
			}else{
				rightHeldTimer = leftHeldTimer++;
				leftHeldTimer = 0;
			}
		}
		else if (moveLeft && !moveRight){
			if (leftHeldTimer > 0){
				leftHeldTimer++;
			}else if (rightHeldTimer <= 0){ //allows you to switch between left and right without losing speed
				leftHeldTimer++;
			}else{
				leftHeldTimer = rightHeldTimer++;
				rightHeldTimer = 0;
			}	  //  i wanted to make all this a function but pointers dont exist so it was hard
					//   fuck this gay earth
		}
		else if (moveRight && moveLeft){	 
		}else{ //if neither keys are pressed, both timers are 0
				// TODO: maybe add coyote time?
			rightHeldTimer = 0;
			leftHeldTimer = 0;
		}
	}
}

function startMachIfRun(){
	if (state != states.mach && (rightHeldTimer > mach1Start || leftHeldTimer > mach1Start)){
		state = states.mach;
	}
}

function determineMove(){ //determines direction being moved in
	if !(state == states.mach && onGround < 8){
		move = (moveRight - moveLeft);
	}

	
	if (move != 0){
		lastMove = move;
	}
	if (onGround < 5){
		lastMoveGround = move
	}
}



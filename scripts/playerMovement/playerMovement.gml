// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function playerJump(_player){
	canJump = false;
	if (onGround-- > 0) && (_keyJump) 
	{
		canJump = true;
	}else if ((jumpsLeft > -9999) && (_keyJump)){
		jumpsLeft = 1; //jank solution, don't want to have two mid-air jumps
		canJump = true;		  // if you fall off platform
		
	}
	if (canJump = true){
		
		if (jumpsLeft == 2){ //bigger jump on second jump
			verticalSpeed = jumpSpeed;
		}else{
			verticalSpeed = jumpSpeed*1.2;
		}
		jumpsLeft--;
		onGround = 0;
	} else if (onGround > 0){
		jumpsLeft = 2;
	}
}



function playerFall(_player){
	var mediumFall = 12; //speed where chiliman will accelerate slower
	var maxFall = 25; //speed where chiliman will stop accelerating
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
		mach = machCalculator()
		horizontalSpeed = round(move*walkSpeed + mach);
	}else{
		rightHeldTimer = 0;
		leftHeldTimer = 0;
		horizontalSpeed = round(move*walkSpeed)
	}
	playerSpriteLogic(_player);
}

function machCalculator(){ //TODO: add a bool for on ground to player to know when mach can actually start
	var mach1Start = 60;
	var mach2Start = 400;
	var mach1Speed = 10;
	var mach2Speed = 4 + mach1Speed;
	if (_keyRight && _keyLeft){
	}
	else if (_keyRight){
		if (rightHeldTimer > 0){
			rightHeldTimer++;
		}else if (leftHeldTimer <= 0){ //allows you to switch between left and right without losing speed
			rightHeldTimer++;
		}else{
			rightHeldTimer = leftHeldTimer++;
			leftHeldTimer = 0;
		}
	}
	else if (_keyLeft){
		if (leftHeldTimer > 0){
			leftHeldTimer++;
		}else if (rightHeldTimer <= 0){ //allows you to switch between left and right without losing speed
			leftHeldTimer++;
		}else{
			leftHeldTimer = rightHeldTimer++;
			rightHeldTimer = 0;
		}	  //  i wanted to make all this a function but pointers dont exist so it was hard
			 //   fuck this gay earth
			 
	}else{ //if neither keys are pressed, both timers are 0
		  // TODO: maybe add coyote time?
		rightHeldTimer = 0;
		leftHeldTimer = 0;
	}
	if (rightHeldTimer < mach1Start && leftHeldTimer < mach1Start){
		mach = sign(rightHeldTimer-leftHeldTimer)*0;
	}
	else if (rightHeldTimer >= mach1Start && rightHeldTimer < mach2Start || 
		leftHeldTimer >= mach1Start && leftHeldTimer < mach2Start){
		mach = sign(rightHeldTimer-leftHeldTimer)*mach1Speed;
	}
	else{
		mach = sign(rightHeldTimer-leftHeldTimer)*mach2Speed
	}
	return mach;
}


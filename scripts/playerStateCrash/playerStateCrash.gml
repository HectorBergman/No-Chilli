// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateCrash(){
	if (crashTimer-- == crashTime-1){
		horizontalSpeed = crashSpeed;
		verticalSpeed = crashHeight;
	}else if (crashTimer == 0){
		state = states.normal;
	}
	playerCheckForOnGround()
	if (onGround-- > 8){
		horizontalSpeed *= 0.95
	}
	playerFall(self);
	playerVerticalCollision(self);
	playerHorizontalCollision(self);

}

function initiateCrash(){
	leftHeldTimer = 0;
	rightHeldTimer = 0;
	crashSpeed = -sign(horizontalSpeed)*sqrt(abs(horizontalSpeed));
	crashHeight = -sqrt(abs(horizontalSpeed))*2;
	crashTime = 20 + abs(floor(horizontalSpeed))*3;
	crashTimer = crashTime;
	state = states.crash;
}
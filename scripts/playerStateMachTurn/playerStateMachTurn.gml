// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateMachTurn(){
	
	turnTimer--
	if (turnTimer == 0){
		state = states.mach

	}else if (!run || (moveLeft == false && moveRight == false)){
		//if you stop holding shift or stop moving in any direction, go back to normal state
		leftHeldTimer = 0;
		rightHeldTimer = 0;
		state = states.normal;
	}
	machTimer();
	
	turningLogic();
	
	playerHorizontalCollision(self);
	playerVerticalCollision(self);
	playerWhiteguyCollision(self);
	playerRingCollision(self);
}

function offLikeAShotClouds(theMove){
	for(var i = 0; i < 39; i += 1){
		cloudsStruct =
		{
			//verticalSpeed : verSpeed,
			//horizontalSpeed : horSpeed,
			lifeTime: random_range(50, 150),
			spriteDirection : -theMove,
			spriteNumber : i,
		};
		instance_create_depth(x, y, i, object_OLSClouds, cloudsStruct);
	}
}
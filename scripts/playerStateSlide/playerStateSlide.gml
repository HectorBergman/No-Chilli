// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateSlide(){
	playerCheckForOnGround();
	var currentMask = mask_index;
	mask_index = spr_player_mach1;
	if (place_meeting(x, y, object_wall)){
	}else if (!down && run && (moveLeft || moveRight) && slideWalking == false){
		machDirection = -sign(horizontalSpeed);
		exitSlide(states.mach)
	}else if (!down && !slideWalking){
		exitSlide(states.mach)
	}else if (!down){
		exitSlide(states.normal)
	}
	mask_index = currentMask;
	slideHorizontalMovement();
	playerVerticalCollision(self);
	if (airTime < 1){
			playerFall(self);
	}else if (place_meeting(x, y + 1, object_wall)){
			airTime = 0;
	}else{
			jumpsLeft = 0;
	}	
	airTime--
}
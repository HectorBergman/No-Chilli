// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateSlide(){
	if (place_meeting(x, y-32, object_wall)){
	}else if (!down && run && (moveLeft || moveRight) && slideWalking == false){
		exitSlide(states.mach)
	}else if (!down){
		exitSlide(states.normal)
	}
		
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
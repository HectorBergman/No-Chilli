// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateSlide(){
	if (!down && run && (moveLeft || moveRight)){
		state = states.mach;
	}else if (!down){
		state = states.normal
	}
		
	slideHorizontalMovement();
	
}
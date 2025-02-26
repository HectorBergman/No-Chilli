// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateLevelstart(){
	levelStartTimer--
	
	if (levelStartTimer < 0){
		if (run && abs(moveRight-moveLeft) == 1){
			state = states.mach;
			horizontalSpeed = offLikeAShotSpeed*1.2
			offLikeAShotClouds(1);
		}else{
			leftHeldTimer = 0;
			rightHeldTimer = 0;
			state = states.normal;
		}
	}
	
}
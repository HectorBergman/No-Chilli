// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateLevelcomplete(){
	completeFall();
}

function completeFall(){
	completeFallTimer--;
	if (completeFallTimer > 0){
		playerFall(self);
		playerVerticalCollision(self);
	}
}
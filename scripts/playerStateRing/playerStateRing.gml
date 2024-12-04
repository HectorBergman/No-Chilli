// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateRing(){
	
	playerSwing(self);

	swingCollision();
	playerWhiteguyCollision(self);
	
	if (!grab){
		state = ringState;
		currentRing.held = false; //entering rings wont work if
		currentRing.sprite_index = spr_ring;
		currentRing.image_angle = 0;

		currentRing = noone;
	}


}

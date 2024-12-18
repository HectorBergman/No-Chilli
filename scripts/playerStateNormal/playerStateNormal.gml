// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateNormal(){

	determineMove()
	if (onGround > 9 && (moveLeft xor moveRight)){
		if (!audio_is_playing(snd_walk)){
			audio_play_sound(snd_walk, 1, true);
		}
	}else {
		audio_stop_sound(snd_walk);
	}
	//see: script playerMovement
	playerHorizontalMovement(self);
	playerJump(self);
	playerVerticalCollision(self);
	playerFall(self);
	if (run){
		machTimer();
	}
	
	
	startMachIfRun();


	//see: script playerCollision
	playerHorizontalCollision(self);
	
	playerWhiteguyCollision(self);
	playerRingCollision(self);
	machStartupSpeedIncrease();
	/*if (ringHeld && onGround < 0){
		state = states.ring;
	}*/
}
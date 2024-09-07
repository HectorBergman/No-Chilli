// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerSpriteLogic(_player){
	switch(state){
		case states.normal: normalSpriteLogic(); break;
		case states.ring: ringSpriteLogic(); break;
		case states.dead: deadSpriteLogic(); break;
		case states.dash: dashSpriteLogic(); break;
		case states.mach: machSpriteLogic(); break;
		case states.machTurn: turnSpriteLogic(); break;
		case states.bounce: bounceSpriteLogic(); break;
		case states.slide: slideSpriteLogic(); break;
		case states.crash: crashSpriteLogic(); break;
	}
}
function normalSpriteLogic(){
	sprite_set_speed(spr_player_walk, spriteSpeed, spritespeed_framespersecond);
	if (leftHeldTimer > 1 || rightHeldTimer > 1){
		sprite_index = spr_player_mach1_startup
	}
	else{
		if (onGround < 0){
			if (verticalSpeed < 0){
				sprite_index = spr_player_jump;
			}else{
				sprite_index = spr_player_fall;
			}
		}
		else if (horizontalSpeed == 0 || wallTouch != 0){
			sprite_index = spr_player_stand;
		}else{
			sprite_index = spr_player_walk;
		}
	}
	mirrorSpriteAccordingToDirection()
}

function ringSpriteLogic(){

	if (lastMove == 1){
		sprite_index = Sprite11;
	}else if (lastMove == -1){
		sprite_index = Sprite12;
	}
	
}

function dashSpriteLogic(){
	sprite_index = spr_player_stand
}

function machSpriteLogic(){
	sprite_set_speed(spr_player_mach1, spriteSpeed, spritespeed_framespersecond);
	sprite_set_speed(spr_player_mach2, spriteSpeed, spritespeed_framespersecond);
	if (mach > mach1Speed - 0.1 && mach < mach1Speed + 0.1){
		if (isOnGroundImmediate()){
			sprite_index = spr_player_mach1
		}else{
			sprite_index = spr_player_jump_mach1
		}
	}else{
		//show_debug_message(mach)
		//show_debug_message(mach1Speed)
		sprite_index = spr_player_mach2
	}
	if (horizontalSpeed != 0){
		image_xscale = (sign(horizontalSpeed));
		
	}else{
		image_xscale = 1
	}
}
function turnSpriteLogic(){
	if (turnTimer > turnTime-turnTimerBrakeStop){
		if (mach > mach1Speed - 0.1 && mach < mach1Speed + 0.1){
			sprite_index = spr_player_brake_mach1
		}else{
			sprite_index = spr_player_brake_mach2
		}
	}else{
		if (mach > mach1Speed - 0.1 && mach < mach1Speed + 0.1){
			sprite_index = spr_player_offlikeashot
		}else{
			sprite_index = spr_player_offlikeashot_mach2
		}
	}
	
	if (sign(horizontalSpeed) != 0){
		lastSpeedDirection = sign(horizontalSpeed);	
	}
	image_xscale = lastSpeedDirection;	
}

function deadSpriteLogic(){
}

function bounceSpriteLogic(){
	if (bounceNr == 2){
		sprite_index = spr_player_starman
	}else{
		if (verticalSpeed < 2){
			sprite_index = spr_player_bounce1
		}else{
			sprite_index = spr_player_bounce1_fall
		}
	}
	if (sign(horizontalSpeed) != 0){
		lastSpeedDirection = sign(horizontalSpeed);	
	}
	image_xscale = lastSpeedDirection;	
}

function slideSpriteLogic(){
	
	if (!slideWalking){
		sprite_index = spr_player_slide
		if (lastMove != 0){
			image_xscale = (lastMove);
		
		}else{
			image_xscale = 1
		}
	}else if (horizontalSpeed == 0 || (place_meeting(x + slideMove*0.5, y , object_wall))){
		sprite_index = spr_player_slide
	
		
		
		
			image_xscale = slideDirection
		
	}else{
		sprite_index = spr_player_slideWalking
		if (slideMove != 0){
			sprite_set_speed(spr_player_slideWalking, 
							abs(sprite_get_speed(spr_player_slideWalking))*(slideMove)*(slideDirection), 
							spritespeed_framespersecond)
			
		
		}
		image_xscale = slideDirection
	}
}

function crashSpriteLogic(){
	sprite_index = spr_player_crash;
}


function mirrorSpriteAccordingToDirection(){
	if (lastMove != 0){
		image_xscale = (lastMove);
		
	}else{
		image_xscale = 1
	}
}
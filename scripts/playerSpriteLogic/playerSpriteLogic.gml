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
	if (lastMove != 0){
		image_xscale = (lastMove);
	}else{
		image_xscale = 1;
	}
}

function ringSpriteLogic(){

	if (lastMove == 1){
		sprite_index = Sprite11;
	}else if (lastMove == -1){
		sprite_index = Sprite12;
	}
	
}

function dashSpriteLogic(){
}

function machSpriteLogic(){
	sprite_set_speed(spr_player_mach1, spriteSpeed, spritespeed_framespersecond);
	sprite_index = spr_player_mach1
	if (lastMove != 0){
		image_xscale = (lastMove);
		
	}else{
		image_xscale = 1
	}
	
}
function turnSpriteLogic(){
	if (turnTimer > turnTime-20){
		sprite_index = spr_player_brake_mach1
	}else{
		sprite_index = spr_player_offlikeashot
	}
	
	image_xscale = (-turnDirection);

}
function deadSpriteLogic(){
}

function bounceSpriteLogic(){
	sprite_index = spr_player_stand
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
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
	}
}
function normalSpriteLogic(){
	
	if (ringHeld == true){ //TODO: delete this line lol
		if (lastMove == 1){
			sprite_index = Sprite11;
		}else if (lastMove == -1){
			sprite_index = Sprite12;
		}
	} else if (onGround < 0){
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
	if (lastMove != 0){
		image_xscale = (lastMove);
	}else{
		image_xscale = 1;
	}
}
function deadSpriteLogic(){
}

function bounceSpriteLogic(){
	sprite_index = spr_player_stand
}
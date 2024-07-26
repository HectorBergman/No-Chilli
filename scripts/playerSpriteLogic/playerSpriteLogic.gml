// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerSpriteLogic(_player){
	if (ringHeld == true){
		if (lastmove == 1){
			sprite_index = Sprite11;
		}else if (lastmove == -1){
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
	if (lastmove != 0){
		image_xscale = (lastmove);
	}else{
		image_xscale = 1;
	}
}
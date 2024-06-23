// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerSpriteLogic(_player){
	
	if (_player.onGround < 0){
		if (_player.verticalSpeed < 0){
			_player.sprite_index = spr_player_jump;
		}else{
			_player.sprite_index = spr_player_fall;
		}
	}
	else if (_player.horizontalSpeed == 0 || _player.wallTouch != 0){
		_player.sprite_index = spr_player_stand;
	}else{
		_player.sprite_index = spr_player_walk;
	}
	if (lastmove != 0){
		_player.image_xscale = (lastmove);
	}else{
		_player.image_xscale = 1;
	}
}
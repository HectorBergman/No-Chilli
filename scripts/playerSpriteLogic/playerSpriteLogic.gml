// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerSpriteLogic(_player){
	if (lastmove != 0){
		_player.image_xscale = (lastmove);
	}else{
		_player.image_xscale = 1;
	}
}
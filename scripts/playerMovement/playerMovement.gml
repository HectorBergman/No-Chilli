// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerJump(_player, jumpButton){
	if (_player.onGround-- > 0) && (jumpButton) || (_player.jumpsLeft > 0) && (jumpButton)
	{
		if (_player.jumpsLeft == 2){
			_player.verticalSpeed = _player.jumpSpeed;
		}else{
			_player.verticalSpeed = _player.jumpSpeed*1.2;
		}
		_player.jumpsLeft--;
		_player.onGround = 0;
	} else if (_player.onGround > 0){
		_player.jumpsLeft = 2;
	}
}
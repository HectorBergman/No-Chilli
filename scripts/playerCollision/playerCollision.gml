// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerHorizontalCollision(_player){
	if (place_meeting(x + _player.horizontalSpeed, y , object_wall))
	{
		while (abs(_player.horizontalSpeed) > 0.1)
		{
			_player.horizontalSpeed *= 0.5; //halve horizontalSpeed
			if (!place_meeting(x + _player.horizontalSpeed, y, object_wall)) x += _player.horizontalSpeed
		}
		_player.horizontalSpeed = 0;
	}
	_player.x += _player.horizontalSpeed;
}

function playerVerticalCollision(_player){
	if (place_meeting(x, y + _player.verticalSpeed, object_wall))
		{
		if (_player.verticalSpeed > 0) _player.onGround = 10;
		while (abs(_player.verticalSpeed) > 0.1)
		{
			_player.verticalSpeed *= 0.5; //halve verticalSpeed
			if (!place_meeting(x, y + _player.verticalSpeed, object_wall)) y += _player.verticalSpeed
		}
		_player.verticalSpeed = 0;
	}
	_player.y += _player.verticalSpeed;
}
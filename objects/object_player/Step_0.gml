/// @description Insert description here
// You can write your code in this editor

_keyRight = keyboard_check(vk_right);
_keyLeft = keyboard_check(vk_left);
_keyJump = keyboard_check_pressed(vk_up);
_keyZ = keyboard_check_pressed(ord("z"))
_keySpace = keyboard_check(vk_space)
if (keyboard_check(vk_shift)){
	_keyShift = 4;
}else{
	_keyShift--;
}

if (self.dead = 0){
	move = (_keyRight - _keyLeft);
	
	if (move != 0){
		lastmove = move;
	}

	playerHorizontalMovement(self);

	playerFall(self);

	playerJump(self);

	//see: script playerCollision
	playerHorizontalCollision(self);

	//see: script playerCollision
	playerVerticalCollision(self); //functions B)
	
	playerWhiteguyCollision(self);
	
	playerRingCollision(self);
	
}else{
	
}

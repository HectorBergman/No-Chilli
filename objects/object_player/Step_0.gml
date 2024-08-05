/// @description Insert description here
// You can write your code in this editor

_keyRight = keyboard_check(vk_right);
_keyLeft = keyboard_check(vk_left);
_keyJump = keyboard_check_pressed(vk_up);
_keyZ = keyboard_check_pressed(ord("z"))
_keySpace = keyboard_check(vk_space);

dashUp = ord("W");
dashLeft = ord("A");
dashDown = ord("S");
dashRight = ord("D");

if (dashCooldown < 1){
	if (keyboard_check(dashUp) || keyboard_check(dashLeft) || 
	keyboard_check(dashDown) || keyboard_check(dashRight) ) {
		if (keyboard_check(dashUp)){
			verticalSpeed = -20;
			horizontalSpeed = 0;
		}
		else if (keyboard_check(dashLeft)){
			horizontalSpeed = -20;
			verticalSpeed = 0;
		}
		else if (keyboard_check(dashDown)){
			verticalSpeed = 20;
			horizontalSpeed = 0;
		}
		else if (keyboard_check(dashRight)){
			horizontalSpeed = 20;
			verticalSpeed = 0;
		}
		dashCooldown = 200;
		state = states.dash;
	}
}

if (keyboard_check(vk_shift)){
	_keyShift = 4;
}else{
	_keyShift--;
}
playerSpriteLogic(self);

if (dashCooldown != 0){
	dashCooldown--
}
switch(state){
	case states.normal: playerStateNormal(); break;
	case states.ring: playerStateRing(); break;
	case states.dead: playerStateDead(); break;
	case states.dash: playerStateDash(); break;
}



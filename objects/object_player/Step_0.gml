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

switch(state){
	case states.normal: playerStateNormal(); break;
	case states.ring: playerStateRing(); break;
	case states.dead: playerStateDead(); break;
}

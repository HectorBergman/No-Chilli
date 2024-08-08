/// @description Insert description here
// You can write your code in this editor

_keyRight = keyboard_check(vk_right);
_keyLeft = keyboard_check(vk_left);
_keyJump = keyboard_check_pressed(vk_up);
_keyZ = keyboard_check_pressed(ord("z"))
_keySpace = keyboard_check(vk_space);

dashUpReqInput = ord("W");
dashLeftReqInput = ord("A");
dashDownReqInput = ord("S");
dashRightReqInput = ord("D");

inputCalculator();
if (dashCooldown < 1){
	if (dashUp || dashLeft || 
		dashDown || dashRight ) {
		if (dashUp){
			verticalSpeed = -20;
			horizontalSpeed = 0;
		}
		else if (dashLeft){
			horizontalSpeed = -20;
			verticalSpeed = 0;
		}
		else if (dashDown){
			verticalSpeed = 20;
			horizontalSpeed = 0;
		}
		else if (dashRight){
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
	case states.mach: playerStateMach(); break;
	case states.machTurn: playerStateMachTurn(); break;
}

inputReset();

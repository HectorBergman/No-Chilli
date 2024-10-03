/// @description Insert description here
// You can write your code in this editor
PAUSE
_keyRight = keyboard_check(vk_right);
_keyLeft = keyboard_check(vk_left);
_keyJump = keyboard_check_pressed(vk_up);
_keyUp = keyboard_check(vk_up);
_keyDown = keyboard_check(vk_down);
_keySpace = keyboard_check(vk_space);

dashUpReqInput = ord("W");
dashLeftReqInput = ord("A");
dashDownReqInput = ord("S");
dashRightReqInput = ord("D");

bugtestcount--
inputCalculator()
//show_debug_message("TD" + string(turnDirection));
//show_debug_message("move " + string(moveRight-moveLeft))
//show_debug_message("moveRight " + string(moveRight))
//show_debug_message("moveLeft " + string(moveLeft))
//show_debug_message("leftHeldTimer " + string(leftHeldTimer))
//show_debug_message("rightHeldTimer " + string(rightHeldTimer))
diveTimer--
slideTimer--
if (dashCooldown < 1 && !(state == states.crash) && !(state == states.dead) && !(state == states.slide)){
	if (dashUp || dashLeft || 
		dashDown || dashRight ) {
		oldHorizontalSpeed = horizontalSpeed;
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
		dashCooldown = dashCooldownTime;
		slideWalking = false;
		oldState = state;
		timeInDash = timeLimitInDash
		state = states.dash;
	}
}
hotsauce();
updateSpeed();

touchingSalad = place_meeting(x, y+2, obj_salad);
	

if (keyboard_check(vk_shift)){
	_keyShift = 4;
}else{
	_keyShift--;
}


if (dashCooldown != 0){
	dashCooldown--
}

if (y > room_height + 200){
	state = states.dead;
}
switch(state){
	case states.normal: playerStateNormal(); break;
	case states.ring: playerStateRing(); break;
	case states.dead: playerStateDead(); break;
	case states.dash: playerStateDash(); break;
	case states.mach: playerStateMach(); break;
	case states.machTurn: playerStateMachTurn(); break;
	case states.bounce: playerStateBounce(); break;
	case states.slide: playerStateSlide(); break;
	case states.crash: playerStateCrash(); break;
	case states.dive: playerStateDive(); break;
	case states.levelcomplete: playerStateLevelcomplete(); break;
	case states.levelstart: playerStateLevelstart(); break;
}
playerSpriteLogic(self);

inputReset();

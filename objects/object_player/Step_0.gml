/// @description Insert description here
// You can write your code in this editor
PAUSE
inputReset();
_keyRight = keyboard_check(vk_right);
_keyLeft = keyboard_check(vk_left);
_keyJump = keyboard_check_pressed(vk_up);
_keyUp = keyboard_check(vk_up);
_keyDown = keyboard_check(vk_down);
_keySpace = keyboard_check(vk_space);
_r = keyboard_check_pressed(ord("R"));

dashUpReqInput = ord("W");
dashLeftReqInput = ord("A");
dashDownReqInput = ord("S");
dashRightReqInput = ord("D");


inputCalculator()

//show_debug_message("TD" + string(turnDirection));
//show_debug_message("move " + string(moveRight-moveLeft))
//show_debug_message("moveRight " + string(moveRight))
//show_debug_message("moveLeft " + string(moveLeft))
//show_debug_message("leftHeldTimer " + string(leftHeldTimer))
//show_debug_message("rightHeldTimer " + string(rightHeldTimer))
goTextLinger--
bugtestcount--
diveTimer--
slideTimer--
ringCooldown--
if (dashCooldown != 0){
	dashCooldown--
}
if (dashCooldown < 1 && !undashable()){
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
if (reset && inLevel){
	resetSpeed()
	state = states.levelstart
	chiliman.diveTimer = 200;
	chiliman.rightHeldTimer = 60;
	chiliman.levelStartTimer = chiliman.levelStartTime;
	chiliman.state = states.levelstart
	chiliman.horizontalSpeed = 0;
	chiliman.verticalSpeed = 0;
	layer_create(-999, "pauseUI");
	initiateRoomTransition(chiliman.state, 0, startingRoom ,noone)
}
/*try{
	show_debug_message(standingOn.id)
}catch(e){
}*/
hotsauce();
updateSpeed();
touchingSalad = place_meeting(x, y+2, obj_salad);
	

if (keyboard_check(vk_shift)){
	_keyShift = 4;
}else{
	_keyShift--;
}




if (y > room_height + 200 && state != states.dead){
	playerDeath()
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
	case states.onball: playerStateBall(); break;
	case states.hotass: playerStateHotass(); break;
	case states.levelcomplete: playerStateLevelcomplete(); break;
	case states.levelstart: playerStateLevelstart(); break;
	case states.oven: playerStateOven(); break;
	case states.roomtransition: playerStateRoomTransition(); break;
}
playerSpriteLogic(self);



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

cheats();

inputCalculator()
stopAudios();


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
if (dashCooldown < 1 && !undashable() && !dashDisabled){
	if (dashUp || dashLeft || 
		dashDown || dashRight ) {
		oldHorizontalSpeed = horizontalSpeed;
		if (dashUp){
			verticalSpeed = -dashSpeed;
			horizontalSpeed = 0;
		}
		else if (dashLeft){
			horizontalSpeed = -dashSpeed;
			verticalSpeed = 0;
		}
		else if (dashDown){
			verticalSpeed = dashSpeed;
			horizontalSpeed = 0;
		}
		else if (dashRight){
			horizontalSpeed = dashSpeed;
			verticalSpeed = 0;
		}
		dashCooldown = dashCooldownTime;
		slideWalking = false;
		oldState = state;
		timeInDash = timeLimitInDash
		state = states.dash;
		audio_play_sound(snd_dash, 0, 0, global.soundfx*global.volume);
	}
	
}
if (reset && inLevel && global.pausable && state != states.dead){
	resetLevel();
}
if (state != states.slide || slideWalking ||onGround < 10){
	audio_stop_sound(snd_glide_1);
}
if (state != states.machTurn){
	audio_stop_sound(brakeSound);
}
/*try{
	show_debug_message(standingOn.id)
}catch(e){
}*/
hotsauce();
updateSpeed();
touchingSalad = place_meeting(x, y+2, obj_salad);
if lastPickupTimer != 0{
	lastPickupTimer -= max(1, floor(sqrt(lastPickupTimer/20))+0.35)
	lastPickupTimer = max(lastPickupTimer, 0);
}

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
	case states.hax: playerStateHax(); break;
}
playerSpriteLogic(self);

if (abs(horizontalSpeed) > topSpeed){
	topSpeed = abs(horizontalSpeed);
}

cloneSaver();


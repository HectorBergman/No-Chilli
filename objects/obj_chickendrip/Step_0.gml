/// @description Insert description here
// You can write your code in this editor
PAUSE
switch(state){
	case dripstates.spawning: spawningState(); break;
	case dripstates.falling: fallingState(); break;
	case dripstates.splashing: splashingState(); break;
}
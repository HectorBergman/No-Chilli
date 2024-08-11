/// @description Insert description here
// You can write your code in this editor
enum states{
	normal,
	ring,
	dead,
	dash,
	mach,
	machTurn,
}

state = states.normal

initiateNormalMovementVariables();

initiateMachVariables()

initiateTurnVariables()

initiateDashVariables();

initiateNormalJumpnFallVariables();

//should put these in a script
rightHeldTimer = 0;
leftHeldTimer = 0;
dead = 0;
move = 0;
lastMove = 0;
wallTouch = 0;
_keyShift = 0;
cam = view_get_camera(0);
depth = 0;

initiateRingVariables()

initiateControlsVariables()
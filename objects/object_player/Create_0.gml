/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
enum states{
	normal,
	ring,
	dead,
	dash,
	mach,
	machTurn,
	bounce,
	slide,
	crash,
	dive,
	onball,
	hotass,
	levelcomplete,
	levelstart,
	oven,
	roomtransition,
}

state = states.normal

initiateSpriteVariables();

initiateNormalMovementVariables();

initiateMachVariables()

initiateTurnVariables()

initiateDashVariables();

initiateNormalJumpnFallVariables();

initiateBounceVariables();

initiateSlideVariables();

initiateCrashVariables();

initiateHotsauceRelatedVariables();

initiateBallVariables();

initiateLevelcompleteVariables();

initiateRoomTransitionVariables();

levelStartTime = 60;
levelStartTimer = -1;
goTextLinger = 0;
goTextLingerTime = 30;

destinationNumber = -99;
destinationY = 0; //offset of Y
touchingSalad = false;

standingOn = noone;

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

bugtestcount = 0;

ovenEntered = false;
ovenState = 0;

initiateRingVariables()

initiateControlsVariables()
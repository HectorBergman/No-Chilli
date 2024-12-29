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
	hax,
}

state = states.normal

startingRoom = rm_lobby_room1;
_r = false;

keyboard_string = "";//from the manuel "This variable holds a string containing the last (at most) 1024 characters typed on the keyboard"
cheat_code = "";

//when starting writing this, i included a while statement in the
//collision that i later regretted. this is to ensure the while statement
//gives up after a while
global.whileFail = 0;
global.whileFailLimit = 1000;
global.preWhileCoord = [0,0];


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

initiateDeathVariables();

initiateSoundVariables();

inLevel = false;
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

topSpeed = 0;
crashCount = 0;

bugtestcount = 0;


ovenEntered = false;
ovenState = 0;

initiateRingVariables()

initiateControlsVariables()
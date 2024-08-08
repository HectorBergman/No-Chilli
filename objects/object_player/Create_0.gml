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

playerGrav = 0.4; //gravity
horizontalSpeed = 0;
verticalSpeed = 0;
walkSpeed = 3;

mach1Start = 60; //how many ticks of shift held until mach 1 starts
mach2Start = 400; // --||-- mach 2 starts
mach1Speed = walkSpeed + 4;
mach2Speed = 2 + mach1Speed;
currentSpeed = 0;
lastMoveGround = 0;
mach = 0;

turn = 0; //-1 for left, 1 for right
turnTime = 30; //time it takes to turn
turnTimer = 0; //the timer for turning
airTime = 0;


dashCooldown = 0;
dash = 0;
dashEndTime = 160;


jumpSpeed = -10;
onGround = 0;
jumpsLeft = 2;
secondJump = 0.8; //% of regular jump on second jump
mediumFall = 12; //speed where chiliman will accelerate slower
maxFall = 25; //speed where chiliman will stop accelerating

rightHeldTimer = 0;
leftHeldTimer = 0;
dead = 0;
move = 0;
lastMove = 0;
wallTouch = 0;
_keyShift = 0;
cam = view_get_camera(0);
depth = 0;

ringHeld = false;
currentRing = noone; //for unholding rings when outside grab area



handX = 0;
handY = 0;
shoulderX = 0;
shoulderY = 0;
ropeAngleVelocity = 0;
ropeAngle = 0;
ropeLength = 0;
ropeAccelerationRate = -0.2;
ropeManualAcceleration = 0.09
ropeX = 0;
ropeY = 0;


//controls
moveLeft = false;
moveRight = false;
jump = false;
dashLeft = false;
dashUp = false;
dashRight = false;
dashDown = false;
grab = false;
run = false;
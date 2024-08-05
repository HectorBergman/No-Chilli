/// @description Insert description here
// You can write your code in this editor
enum states{
	normal,
	ring,
	dead,
	dash,
}

state = states.normal

playerGrav = 0.4; //gravity
horizontalSpeed = 0;
verticalSpeed = 0;
walkSpeed = 3;
mach1Start = 60; //how many ticks of shift held until mach 1 starts
mach2Start = 400; // --||-- mach 2 starts
mach1Speed = walkSpeed + 2;
mach2Speed = 4 + mach1Speed;


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
lastmove = 0;
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


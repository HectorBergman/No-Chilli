/// @description Insert description here
// You can write your code in this editor
enum states{
	normal,
	ring,
	dead,
}

state = states.normal

playerGrav = 0.6; //gravity
horizontalSpeed = 0;
verticalSpeed = 0;
walkSpeed = 4;
jumpSpeed = -10;
onGround = 0;
jumpsLeft = 2;

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
prevRing = noone; //for unholding rings when outside grab area


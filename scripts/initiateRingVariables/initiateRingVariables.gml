// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateRingVariables(){
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
	ringCooldown = 0;
	ringState = states.normal //return to previous state when exiting ring state
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateMachVariables(){
	mach1Start = 60; //how many ticks of shift held until mach 1 starts
	mach2Start = 300; // --||-- mach 2 starts
	mach1SpeedBonus = 3;
	mach2SpeedBonus = 4.5;
	mach1Speed = walkSpeed +3; //these dont do anything but initialize anymore. See: updateSpeed
	mach2Speed = 6 + mach1Speed;
	currentSpeed = 0;
	lastMoveGround = 0;
	mach = 0;
	timeInMach = 0;
	machDirection = 0;
	
	diveTimer = 0;
	diveTime = 20;
	slideTimer = 0;
	slideTime = 15;

	cloudTimer = 0;
}
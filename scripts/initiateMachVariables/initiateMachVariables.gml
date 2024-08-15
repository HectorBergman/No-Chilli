// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateMachVariables(){
	mach1Start = 60; //how many ticks of shift held until mach 1 starts
	mach2Start = 400; // --||-- mach 2 starts
	mach1Speed = walkSpeed + 3;
	mach2Speed = 2 + mach1Speed;
	currentSpeed = 0;
	lastMoveGround = 0;
	mach = 0;
	offLikeAShotSpeed = 20; //horizontal speed right after finishing turn
}
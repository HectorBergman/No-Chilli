// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateNormalJumpnFallVariables(){
	baseJumpSpeed = -10;
	jumpSpeed = baseJumpSpeed;
	onGround = 0;
	jumpsLeft = 2;
	secondJump = 0.9; //% of regular jump on second jump
	baseMediumFall = 12;
	mediumFall = baseMediumFall; //speed where chiliman will accelerate slower
	baseMaxFall = 25;
	maxFall = baseMaxFall; //speed where chiliman will stop accelerating
	baseGrav = 0.4;
	playerGrav = baseGrav; //gravity
	
	horizontalSpeed = 0;
}
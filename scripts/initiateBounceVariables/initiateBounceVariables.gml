// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateBounceVariables(){
	initialBounceVertical = -18;
	secondBounceVertical = -9;
	bounceOneMaxHorizontalSpeed = 9;
	bounceTwoMaxHorizontalSpeed = 20;
	bounceOneBounceOffWallHorizontalSpeed = 5;
	bounceTwoBounceOffWallHorizontalSpeed = 10;
	bounceMaxSpeed = 0;
	bounceNr = 0; //which bounce we're on, 1st or 2nd?
	bounceTimer = 0;
	bounceTime = 20;
	bounceSpeedAdder = 0.8
	bounceWallTouch = true;
	bouncedWall = 0;
	bounceGrav = 0.3;
	
}
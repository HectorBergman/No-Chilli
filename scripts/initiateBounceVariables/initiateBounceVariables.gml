// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateBounceVariables(){
	baseInitialBounceVertical = -18;
	initialBounceVertical = baseInitialBounceVertical
	baseSecondBounceVertical = -9;
	secondBounceVertical = baseSecondBounceVertical;
	baseBounceOneMaxHorizontalSpeed = 9;
	bounceOneMaxHorizontalSpeed = baseBounceOneMaxHorizontalSpeed
	baseBounceTwoMaxHorizontalSpeed = 20;
	bounceTwoMaxHorizontalSpeed = baseBounceTwoMaxHorizontalSpeed;
	baseBounceOneBounceOffWallHorizontalSpeed = 5;
	bounceOneBounceOffWallHorizontalSpeed = baseBounceOneBounceOffWallHorizontalSpeed;
	baseBounceTwoBounceOffWallHorizontalSpeed = 10;
	bounceTwoBounceOffWallHorizontalSpeed = baseBounceTwoBounceOffWallHorizontalSpeed;
	bounceMaxSpeed = 0;
	bounceNr = 0; //which bounce we're on, 1st or 2nd?
	bounceTimer = 0;
	bounceTime = 20;
	baseBounceSpeedAdder = 0.8;
	bounceSpeedAdder = baseBounceSpeedAdder;
	bounceWallTouch = true;
	bouncedWall = 0;
	baseBounceGrav = 0.3;
	bounceGrav = baseBounceGrav;
	
	baseBounce2SpeedLowerLimit = 6; //the lowest speed you can travel to initiate bounce 2
	bounce2SpeedLowerLimit = baseBounce2SpeedLowerLimit;
	
}
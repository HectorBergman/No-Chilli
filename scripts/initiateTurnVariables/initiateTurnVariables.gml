// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateTurnVariables(){
	turn = 0; //-1 for left, 1 for right
	turnTime = 37; //time it takes to turn
	turnTimer = 0; //the timer for turning
	airTime = 0; //time where the player gets to be standing on air after turning.. wile coyote
	givenAirTime = 20; //time given to be able to spend in air
	turnTimerBrakeStop = 20; //time where the braking stops and the turning starts
	baseOLSSpeed = 20;
	offLikeAShotSpeed = baseOLSSpeed; //horizontal speed right after finishing turn
}
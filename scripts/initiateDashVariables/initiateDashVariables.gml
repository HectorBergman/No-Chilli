// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initiateDashVariables(){
	dashCooldown = 0;
	dash = 0;
	dashEndTime = 160;
	dashCooldownTime = 200; //debug, normal value = 200;
	
	//for setting things back to normal once done dashing
	oldState = 0;
	oldHorizontalSpeed = 0;
	
	//if dash only lasts x frames, give dash back, no cooldown
	timeInDash = 0;
	timeLimitInDash = 3;
	
	dashSpeed = 16;
}
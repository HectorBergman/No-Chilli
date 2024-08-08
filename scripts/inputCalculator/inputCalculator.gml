// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function inputCalculator(){ 
	//goes through the keys currently being pressed to figure out what actions are attempted
	//to be taken, then assigns a variable 0 or 1 based on the attempted action, this way,
	//implementing new control schemes is easier.
	if (_keyLeft){
		moveLeft = true;
	}
	if (_keyRight){
		moveRight = true;
	}
	if (_keyJump){
		jump = true;
	}
	if (keyboard_check(dashLeftReqInput)){
		dashLeft = true;
	}
	if (keyboard_check(dashUpReqInput)){
		dashUp = true;
	}
	if (keyboard_check(dashRightReqInput)){
		dashRight = true;
	}
	if (keyboard_check(dashDownReqInput)){
		dashDown = true;
	}
	if (_keySpace){
		grab = true;
	}
	if (_keyShift){
		run = true;
	}

}

function inputReset(){
	moveLeft = false;
	moveRight = false;
	jump = false;
	dashLeft = false;
	dashUp = false;
	dashRight = false;
	dashDown = false;
	grab = false;
	run = false;
}
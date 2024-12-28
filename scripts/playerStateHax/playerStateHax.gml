// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateHax(){
	var haxSpeed = 5;
	if (run){
		haxSpeed = 15
	}
	if (moveLeft){
		x = x - 15
	}
	if (moveRight){
		x = x + 15
	}
	if (up){
		y = y - 15
	}
	if (down){
		y = y + 15
	}
}
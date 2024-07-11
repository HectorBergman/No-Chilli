/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, chiliman) && !touched){
	room_goto(to);
	chiliman.x = nextX;
	chiliman.y = nextY;
}else{
	touched = false;
}
	
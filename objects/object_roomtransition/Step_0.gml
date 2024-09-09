/// @description Insert description here
// You can write your code in this editor
PAUSE
if (place_meeting(x, y, chiliman)){
	room_goto(to);
	chiliman.x = nextX;
	chiliman.y = nextY;
	layer_create(-999, "pauseUI");
}

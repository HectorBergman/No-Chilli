/// @description Insert description here
// You can write your code in this editor
PAUSE
if (place_meeting(x, y, chiliman)){
	room_goto(nextRoom);
	chiliman.destinationNumber = destinationNumber;
	layer_create(-999, "pauseUI");
}

/// @description Insert description here
// You can write your code in this editor
pause_check()
if (place_meeting(x, y, chiliman)){
	chiliman.ovenEntered = true;
	chiliman.ovenState = chiliman.state;
	chiliman.state = states.oven
}
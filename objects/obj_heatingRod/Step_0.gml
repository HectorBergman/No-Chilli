/// @description Insert description here
// You can write your code in this editor
PAUSE

if (heat.on && place_meeting(x,y-1, chiliman)){
	chiliman.verticalSpeed -= 12;
	chiliman.horizontalSpeed += sign(chiliman.horizontalSpeed)*5;
	chiliman.state = states.hotass
}
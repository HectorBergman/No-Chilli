/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, chiliman) && levelstartstate != levelstartstates.inactive){
	levelstartstate = levelstartstates.active;
	chiliman.destinationY = 0;
	resetSpeed();
	chiliman.inLevel = true;
	global.currentLevel = levelname;
	chiliman.topSpeed = 0;
	chiliman.crashCount = 0;
	global.medalRequirements = medalRequirements
}

switch(levelstartstate){
	case levelstartstates.normal: levelstartStateNormal(); break;
	case levelstartstates.active: levelstartStateActive(); break
}
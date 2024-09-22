/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, chiliman)){
	levelstartstate = levelstartstates.active;
	
}

switch(levelstartstate){
	case levelstartstates.normal: levelstartStateNormal(); break;
	case levelstartstates.active: levelstartStateActive(); break
}
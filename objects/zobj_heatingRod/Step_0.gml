/// @description Insert description here
// You can write your code in this editor
PAUSE

if (image_angle == 0 && heat.on && (place_meeting(x,y-chiliman.verticalSpeed, chiliman) || place_meeting(x,y-1, chiliman))  && chiliman.state != states.onball ){
	chiliman.hotassMax = 5;
	show_debug_message("fuck you")
	chiliman.verticalSpeed -= 12;
	chiliman.state = states.hotass
	
	
}else if (image_angle == 90 && heat.on && (place_meeting(x-chiliman.verticalSpeed,y, chiliman) || place_meeting(x-1,y, chiliman) || place_meeting(x+1,y, chiliman)) && chiliman.state != states.onball ){
	var hotassDirection = 0
	if (x < chiliman.x){
		hotassDirection = -1
	}else{
		hotassDirection = 1
	}
	chiliman.hotassMax = 15;
	show_debug_message("hi")
	chiliman.verticalSpeed -= 4;
	chiliman.horizontalSpeed += -hotassDirection*12;
	chiliman.state = states.hotass
}
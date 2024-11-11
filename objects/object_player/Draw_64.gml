/// @description Insert description here
// You can write your code in this edito
PAUSE
var _string = 0;
if (levelStartTimer > 120){
	_string = "Ready?";
}else if (levelStartTimer > 60){
	_string = "Ready?";
}else if (levelStartTimer > 0){
	_string = "1";
}
if (levelStartTimer > 0){
	draw_text_transformed(window_get_width()/2, window_get_height()/2, _string, 8, 8, 0);
	
}else if (levelStartTimer == 0){
	goTextLinger = goTextLingerTime;
	levelStartTimer = -1;
}

if (goTextLinger > 0){
	draw_text_transformed(window_get_width()/2, window_get_height()/2, "GO!", 8, 8, 0);
}

if (state == states.roomtransition){ //roomtransition fade
	var fadeColor = c_black;
	var coolThing = ((roomTransitionTime - sign(roomTransitionTimer)*roomTransitionTimer)/roomTransitionTime)
	draw_set_alpha(coolThing);
	draw_rectangle_colour(0, 0, 9999, 9999, fadeColor, fadeColor, fadeColor, fadeColor, false);
	draw_set_alpha(1);
}
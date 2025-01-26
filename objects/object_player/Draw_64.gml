/// @description Insert description here
// You can write your code in this edito
PAUSE

var _string = 0;
if (levelStartTimer > 120){
	_string = "Ready?";
}else if (levelStartTimer > 60){
	_string = "Ready?";
}else if (levelStartTimer > 0){
	_string = "Ready?";
}
if (levelStartTimer > 0){
	var line = scribble("[scale,8][$eee7e7]" + _string).outline($000023).wrap(1000)
		line.draw(window_get_width()/2-string_width_scribble(_string)*4, window_get_height()/2-string_height_scribble(_string)*4);
	
}else if (levelStartTimer == 0){
	goTextLinger = goTextLingerTime;
	levelStartTimer = -1;
}

if (goTextLinger > 0){
	_string = "GO!"
	
	var line = scribble("[scale,8][$eee7e7]" + _string).outline($000023).wrap(1000)
	line.draw(window_get_width()/2-string_width_scribble(_string)*4, window_get_height()/2-string_height_scribble(_string)*4);
}

if (state == states.roomtransition){ //roomtransition fade
	var fadeColor = c_black;
	var coolThing = ((roomTransitionTime - sign(roomTransitionTimer)*roomTransitionTimer)/roomTransitionTime)
	draw_set_alpha(coolThing);
	draw_rectangle_colour(0, 0, 9999, 9999, fadeColor, fadeColor, fadeColor, fadeColor, false);
	draw_set_alpha(1);
}
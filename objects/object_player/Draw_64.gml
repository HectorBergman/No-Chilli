/// @description Insert description here
// You can write your code in this editor
var _string = 0;
if (levelStartTimer > 120){
	_string = "3";
}else if (levelStartTimer > 60){
	_string = "2";
}else if (levelStartTimer > 0){
	_string = "1";
}
if (levelStartTimer > 0){
	draw_text_transformed(window_get_width()/2, window_get_height()/2, _string, 8, 8, 0);
}
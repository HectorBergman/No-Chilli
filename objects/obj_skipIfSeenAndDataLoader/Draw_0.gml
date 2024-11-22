/// @description Insert description here
// You can write your code in this editor
if (timer < 0 && timer > -180 && skippable){
	var _string = "Press spacebar to skip...";
	var width = string_width(_string);
	var size = 4;
	draw_text_transformed(1920/2-width/2*size, 1080-200, _string, size, size, 0);
	//draw_text_outlined(x, y, outline color, string color, string)  
	//draw_text_outlined(x, y, outline color, string color, string)  

}
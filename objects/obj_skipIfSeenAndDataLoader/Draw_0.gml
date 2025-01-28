/// @description Insert description here
// You can write your code in this editor
if (timer < timerLength && timer > -timerLength && skippable){
	
	var _string = "Press spacebar to skip...";
	var width = string_width(_string);
	var size = 4;
	draw_set_alpha((timerLength-abs(timer))/timerLength);
	var line = scribble("[scale,4][$eee7e7]Press spacebar to skip...").outline($000023).wrap(1200)
	line.draw(1920/2-width/2*size, 20,tipText);
	//draw_text_transformed(1920/2-width/2*size, 1080-200, _string, size, size, 0);
	draw_set_alpha(1);
	//draw_text_outlined(x, y, outline color, string color, string)  
	//draw_text_outlined(x, y, outline color, string color, string)  

}
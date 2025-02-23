
var width = string_width(text);
var size = 4;
draw_set_alpha(image_index);
var line = scribble("[scale,8][$eee7e7][fa_center]" + text).outline($000023).wrap(12000)
line.draw(window_get_width()/2, 200);
//draw_text_transformed(1920/2-width/2*size, 1080-200, _string, size, size, 0);
draw_set_alpha(1);
//draw_text_outlined(x, y, outline color, string color, string)  
//draw_text_outlined(x, y, outline color, string color, string)  

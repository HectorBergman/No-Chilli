


draw_set_halign(fa_center);
draw_self();
var usedName = "";
if (levelname == "[scale,12][$eee7e7]Real[scale,6] [scale,12]G's[scale,6] [scale,12]Move[scale,6] [scale,12]in[scale,6] [scale,12]Silence"){
	usedName = "[$eee7e7]Real G's Move in Silence"
}else{
	usedName = levelname
}
var width = string_width(usedName);
var size = 4;

var line = scribble("[scale,1][fa_center][$dc874d]" + usedName).gradient($5dceee, 1).outline($000023).wrap(12000)
line.draw(x+32, y-80);
//draw_text_transformed(1920/2-width/2*size, 1080-200, _string, size, size, 0);

if (!is_undefined(_time)){
	
	width = string_width(_time);
	size = 4;

	line = scribble("[scale,2][$eee7e7][fa_center]" + _time).outline($000023).wrap(12000)
	line.draw(x+32, y-48);
	//draw_text_transformed(1920/2-width/2*size, 1080-200, _string, size, size, 0);

}
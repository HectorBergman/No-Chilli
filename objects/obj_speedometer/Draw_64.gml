/// @description Insert description here
// You can write your code in this editor
if (drawThis && !global.pause){
	//there is a way better way to do this
	draw_sprite_ext(spr_speedometer, 0, 0, 0, 3, 3, 0, c_white, 1);
	var scale = 3.4*pulse
	var _string = "[scale," + string(scale) + "][$eee7e7]x " + string_format(chiliman.scovilleSpeed, 1, 2);
	var line = scribble(_string).outline($000023);
	line.draw(50, 900-50*pulse);


	draw_sprite_ext(spr_speedometerNeedle, 0, -30, 1075, 3, 3, getNewAngle(), c_white, 1);
}
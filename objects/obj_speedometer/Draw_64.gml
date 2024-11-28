/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_speedometer, 0, 0, 0, 3, 3, 0, c_white, 1);

var _string = "[scale,3.4][$eee7e7]x " + string_format(chiliman.scovilleSpeed, 1, 2);
var line = scribble(_string).outline($000023);
line.draw(50, 850);


draw_sprite_ext(spr_speedometerNeedle, 0, -30, 1075, 3, 3, getNewAngle(), c_white, 1);
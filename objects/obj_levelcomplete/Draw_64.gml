/// @description Insert description here
// You can write your code in this editor
var _string = "[scale,5][$eee7e7]Time: " + string_format(displayedMinutes, 2, 0) + ":" + string_format(displayedSeconds, 2, 2);
var line = scribble(_string).outline($000023);
line.draw(650, 650);

if (displayer && point_distance(x + sprite_width/2, y + (sprite_height-16)/2, chiliman.x, chiliman.y) < 100 && !global.pause){
	var lockConditionString = "[scale,1][$d6cfcf][fa_center]" + lockText
	var lockConditionLine = scribble(lockConditionString).outline($000023).wrap(150);
	lockConditionLine.draw(x + sprite_width/2+textXoffset, y + (sprite_height-16)/2+textYoffset);
}
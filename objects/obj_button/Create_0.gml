/// @description Insert description here
// You can write your code in this editor

sprite_index = spriteName
cam = instance_find(object_zcamera, 0);
baseX = x;
baseY = y;
depth = -9999

click_x = 0
click_y = 0


function isQuirkyRoom(){
	return toRoom == -10 || toRoom == -89
}
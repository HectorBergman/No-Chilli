/// @description Insert description here
// You can write your code in this editor
if (global.pausable && !global.pause){
	if (isParent){
		draw_sprite_part_ext(sprite_index, 0, 0, 0, sprite_width, 0+sprite_height*cooldownPercentage,
		x, y, scale, scale, c_white, 1);
	
	
	}else{
		draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, c_white, image_alpha);
	}
}
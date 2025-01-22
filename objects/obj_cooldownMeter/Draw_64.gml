/// @description Insert description here
// You can write your code in this editor
if (isParent){
	draw_sprite_part_ext(sprite_index, 0, 0, sprite_height-sprite_height*cooldownPercentage, sprite_width, sprite_height,
	-x, y, scale, scale, c_white, 1);
	
	
}else{
	draw_sprite_ext(sprite_index, 0, -x, y, scale, scale, 0, c_white, image_alpha);
}
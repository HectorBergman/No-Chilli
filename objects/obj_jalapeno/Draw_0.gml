/// @description Insert description here
// You can write your code in this editor

if (_depth = -22){
	draw_sprite_tiled(spr_jalapeno, 0, x, y)
	depth =  -999
}else{
	draw_sprite_tiled_ext(spr_jalapeno, 0, x, y, 2, 2, c_white, 1);
	depth = _depth
}
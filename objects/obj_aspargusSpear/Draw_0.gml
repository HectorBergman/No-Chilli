/// @description Insert description here
// You can write your code in this editor

if (parent != noone && instance_exists(parent) && abs(parent.x-x) < 100){
	
	surf = surface_create(960, 540);
	surface_set_target(surf);
	
	if (sign(parent.image_xscale) == 1){
		draw_sprite(spr_aspargusSpear, 0, x-parent.x, y-parent.y);
		surface_reset_target();
		draw_surface(surf, parent.x, parent.y);
	}else{
		draw_sprite_ext(spr_aspargusSpear, 0, x-parent.x+960, y-parent.y, -1, -1, 0, c_white, 1);
		surface_reset_target();
		draw_surface(surf, parent.x-960, parent.y);
	}
	surface_free(surf);
	
}else{
	draw_self();
}
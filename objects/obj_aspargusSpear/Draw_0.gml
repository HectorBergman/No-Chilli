/// @description Insert description here
// You can write your code in this editor
if (parent != noone){
	
	surf = surface_create(960, 540);
	surface_set_target(surf);
	draw_sprite(spr_aspargusSpear, 0, x-parent.x, y-parent.y);
	
	surface_reset_target();
	draw_surface(surf, parent.x, parent.y);
	surface_free(surf);
	
}else{
	draw_self();
}
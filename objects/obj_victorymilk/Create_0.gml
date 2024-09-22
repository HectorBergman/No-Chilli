/// @description Insert description here
// You can write your code in this editor
milkstruct = {
	xscale : self.image_xscale,
	yscale : self.image_yscale,
}
//wall_left = instance_create_depth(x, y, 999, obj_milk_wall_left, milkstruct)
//wall_right = instance_create_depth(x, y, 999, obj_milk_wall_right, milkstruct)
milk_back = instance_create_depth(x, y, 40, obj_milk_back, milkstruct)
sprite_set_speed(spr_milk, 0, spritespeed_framespersecond)

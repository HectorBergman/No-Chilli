//yAxis true for up or down, false for left or right
//thrownDirection 1 or -1, -1 for left or up, 1 for down or right
surf = -1

image_xscale = thrownDirection
image_angle = -yAxis*90
show_debug_message(thrownDirection)
show_debug_message(yAxis)
show_debug_message(yAxis*90*thrownDirection)
show_debug_message(image_angle);
horizontalSpeed = flyingSpeed*thrownDirection;
hurtboxStruct = {
	parent: id
}
hurtBox = instance_create_depth(x, y, 0, obj_aspargusSpear_hurtbox, hurtboxStruct)
timer_start = 0;
timer = 0;
if !(parent == noone){
	image_index = 1;
	timer_start = get_timer()/1000
}
	
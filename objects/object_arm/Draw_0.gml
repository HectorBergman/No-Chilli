/// @description Insert description here
// You can write your code in this editor



newX = parent.x + 15 * cos(-degtorad(parent.angle)+125*pi/180)
newY = parent.y + 15 * sin(-degtorad(parent.angle)+125*pi/180)







surface_set_target(surface)



draw_clear_alpha(0,0)

if (!(chiliman.image_xscale == -1)){
	draw_line_width_color((chiliman.x+shoulderXOffset)/2, (chiliman.y+shoulderYOffset)/2, (newX)/2, (newY)/2, 3, armColorOutline, armColorOutline);
	draw_line_width_color((chiliman.x+shoulderXOffset)/2, (chiliman.y+shoulderYOffset)/2, (newX)/2, (newY)/2, 1, armColorFront, armColorFront);
}else{
	
	draw_line_width_color((chiliman.x+shoulderXOffsetMirror)/2, (chiliman.y+shoulderYOffsetMirror)/2, (newX)/2, (newY)/2, 3, armColorOutline, armColorOutline);
	draw_line_width_color((chiliman.x+shoulderXOffsetMirror)/2, (chiliman.y+shoulderYOffsetMirror)/2, (newX)/2, (newY)/2, 1, armColorBack, armColorBack);
}

surface_reset_target();

draw_surface_stretched(surface, 0, 0, window_get_width()-640, window_get_height()-360)
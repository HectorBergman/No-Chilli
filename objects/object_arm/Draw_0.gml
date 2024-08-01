
/// @description Insert description here
// You can write your code in this editor



newX = parent.x + 15 * cos(-degtorad(parent.angle)+125*pi/180)
newY = parent.y + 15 * sin(-degtorad(parent.angle)+125*pi/180)



surfaceXOffset = parent.x-300
surfaceYOffset = parent.y-300



surface_set_target(surface)



draw_clear_alpha(0,0)

if (!(chiliman.image_xscale == -1)){
	shoulderX = chiliman.x+shoulderXOffset
	shoulderY = chiliman.y+shoulderYOffset
	draw_line_width_color((shoulderX-surfaceXOffset)/2, (shoulderY-surfaceYOffset)/2, (newX-surfaceXOffset)/2, (newY-surfaceYOffset)/2, 3, armColorOutline, armColorOutline);
	draw_line_width_color((shoulderX-surfaceXOffset)/2, (shoulderY-surfaceYOffset)/2, (newX-surfaceXOffset)/2, (newY-surfaceYOffset)/2, 1, armColorFront, armColorFront);
}else{
	shoulderX = chiliman.x+shoulderXOffsetMirror
	shoulderY = chiliman.y+shoulderYOffsetMirror
	draw_line_width_color((shoulderX-surfaceXOffset)/2, (shoulderY-surfaceYOffset)/2, (newX-surfaceXOffset)/2, (newY-surfaceYOffset)/2, 3, armColorOutline, armColorOutline);
	draw_line_width_color((shoulderX-surfaceXOffset)/2, (shoulderY-surfaceYOffset)/2, (newX-surfaceXOffset)/2, (newY-surfaceYOffset)/2, 1, armColorBack, armColorBack);
}

surface_reset_target();

draw_surface_stretched(surface, surfaceXOffset, surfaceYOffset, window_get_width()-585, window_get_height()-333)
/// @description Insert description here
// You can write your code in this editor
if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}
x += (xTo - x);
y += (yTo - y);
camX = round(x-(camWidth*0.5))
camY = round(y-(camHeight*0.5))

camera_set_view_pos(view_camera[0], camX, camY);

show_debug_message(camX);


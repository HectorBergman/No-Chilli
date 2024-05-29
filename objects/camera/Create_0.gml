/// @description Insert description here
// You can write your code in this editor
camWidth = 640;
camHeight = 360;
if view_camera[0] == -1
{
    view_camera[0] = camera_create_view(0, 0, camWidth, camHeight);
}
camera_set_view_size(view_camera[0],camWidth,camHeight)

follow = object_player;

x = follow.x;
y = follow.y;

xTo = x;
yTo = y;
/// @description Insert description here
// You can write your code in this editor

gpu_set_texfilter(false);

camWidth = 960;
camHeight = 540;

windowWidth = 1920
windowHeight = 1080

view_camera[0] = camera_create_view(0, 0, camWidth, camHeight);

camera_set_view_size(view_camera[0],camWidth,camHeight)
window_set_size(windowWidth, windowHeight);


follow = object_player;

x = follow.x;
y = follow.y;

xTo = x;
yTo = y;

camAheadX = 0;
camAheadY = 0;
camAheadStartSpeed = 8; //minimum speed where the camera will start looking ahead
camAheadLimitSpeed = 20;

/*camWidth = 1920;
camHeight = 1080;

global.Camera = camera_create_view(0, 0, camWidth, camHeight);
camera_set_view_border(global.Camera, camWidth, camHeight);
camera_set_view_size(global.Camera,camWidth,camHeight)
camera_set_view_target(global.Camera, object_player)
camera_set_view_speed(global.Camera, 999, 999)

view_enabled = true;
view_visible[0] = true;
view_set_camera(0, global.Camera);

//viewport
window_set_size(1920,1080);
surface_resize(application_surface, 1920, 1080)
window_set_position(display_get_width(), display-get_heig*/



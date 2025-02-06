
camX = cam.x-960;
camY = cam.y;

image_xscale = 1
image_yscale = image_xscale;

/*layer_x("Background", lerp(0, camX, 0.9));
layer_y("Background", lerp(0, camY, 0.9));*/

xPercentage = (camX+640)/(room_width-cam.camWidth/2);
yPercentage = camY/room_height;
show_debug_message(cam.camWidth)
show_debug_message(xPercentage)
x = room_width*xPercentage + 960/2;
y = room_height*(yPercentage) - 540/2;

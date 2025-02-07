
camX = cam.x-cam.camWidth/2;
camY = cam.y;

image_xscale = 1
image_yscale = image_xscale;

/*layer_x("Background", lerp(0, camX, 0.9));
layer_y("Background", lerp(0, camY, 0.9));*/

xPercentage = (camX)/(room_width-cam.camWidth);
yPercentage = camY/room_height;
show_debug_message(camX)
show_debug_message(xPercentage)
//x = (sprite_width-cam.camWidth)*xPercentage + 99999//room_width*xPercentage + 960/2;
//y = room_height*(yPercentage) - 540/2;

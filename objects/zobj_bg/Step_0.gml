
camX = cam.x-960;
camY = cam.y;

image_xscale = 0.0015625*cam.camWidth 
image_xscale = image_yscale;

/*layer_x("Background", lerp(0, camX, 0.9));
layer_y("Background", lerp(0, camY, 0.9));*/

xPercentage = (camX+640)/room_width;
yPercentage = camY/room_height;

x = room_width*xPercentage + 960/2;
y = room_height*(yPercentage) - 540/2;



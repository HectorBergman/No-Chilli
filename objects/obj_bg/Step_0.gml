
camX = cam.x-960;
camY = cam.y;

/*layer_x("Background", lerp(0, camX, 0.9));
layer_y("Background", lerp(0, camY, 0.9));*/
xPercentage = camX/room_width;
yPercentage = camY/room_height;
x = room_width*xPercentage*0.8;
y = room_height*(1-yPercentage)*0.8;
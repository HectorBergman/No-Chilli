sprite_index = bgImage
depth = 999
image_xscale = 0.5;
image_yscale = image_xscale

cam = instance_find(object_zcamera, 0);
camX = cam.x
camY = cam.y

image_xscale = 0.0015625*cam.camWidth 
image_yscale = image_xscale;

image_xscale = 1
image_yscale = image_xscale;

surfW = 1920
surfH = 1080
surf = surface_create(surfW, surfH);

xPercentage = 0;
yPercentage = 0;
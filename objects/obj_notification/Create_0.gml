/// @description Insert description here
// You can write your code in this editor
cam = instance_find(object_zcamera, 0);
image_xscale = 2.5 - 0.0015625*cam.camWidth
image_yscale = 2.5 - 0.00277778*cam.camHeight

offset = 35;

/// @description Insert description here
// You can write your code in this editor
#macro PAUSEVARS prePauseSpeed = 0
global.pause = false;
global.destroy = false;
tempWidth = 0
tempHeight = 0;

global.pausable = true;

depth = -21
activeBorder = noone;
activeJalapeno = noone;

image_xscale = 1;
image_yscale = 1;

cam = instance_find(object_zcamera, 0);


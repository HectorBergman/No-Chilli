/// @description Insert description here
// You can write your code in this editor

x = -99999
y = -99999
tempWidth = 0
tempHeight = 0;


depth = -21
activeBorder = noone;
activeJalapeno = noone;

image_xscale = 1;
image_yscale = 1;


var backStruct =
{
	spriteName : spr_continue,
	toRoom : -6,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
backButton = instance_create_depth(0, 0, 1, obj_button_settings, backStruct);

var volumeMinusStruct =
{
	spriteName : spr_continue,
	toRoom : -7,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
volumeMinusButton = instance_create_depth(000, 400, 1, obj_button_settings, volumeMinusStruct);

var volumePlusStruct =
{
	spriteName : spr_continue,
	toRoom : -8,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
volumePlusButton = instance_create_depth(1200, 400, 1, obj_button_settings, volumePlusStruct);

var fScreenStruct =
{
	spriteName : spr_continue,
	toRoom : -9,
	image_xscale : 3,
	image_yscale : 3,
	parent : id,
}
fScreenButton = instance_create_depth(0, 1000, 1, obj_button_settings, fScreenStruct);




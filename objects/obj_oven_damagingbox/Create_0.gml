/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
image_xscale = parent.image_xscale
image_yscale = parent.image_yscale
collision = noone;
list = ds_list_create();
collision = instance_place_list(x,y, object_wall, list, true);

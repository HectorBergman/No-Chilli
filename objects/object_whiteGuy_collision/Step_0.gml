/// @description Insert description here
// You can write your code in this editor
pause_check()


var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_trait_eatable, _list, false);

if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
		if (!object_is_ancestor(_list[| i].object_index, obj_ovenfamily)){

			objectEaten(_list[| i]);
			instance_destroy(_list[| i]);
		}
    }
}

ds_list_destroy(_list);



/*collided = instance_place(x,y, obj_aspargusSpear);
if (collided != noone){
	objectEaten(collided);
	instance_destroy(collided);
	collided = noone;
}

collided = instance_place(x,y, obj_trait_landable);
if (collided != noone){
	objectEaten(collided);
	instance_destroy(collided);
	collided = noone;
}*/
image_xscale = parent.image_xscale;
image_angle = parent.image_angle;
x = parent.x
y = parent.y
image_index = parent.image_index;
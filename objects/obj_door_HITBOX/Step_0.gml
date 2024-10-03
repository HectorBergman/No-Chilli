
currentDoorFrame = parent.image_index
hitboxCorrector();

var list = ds_list_create();
var num = collision_rectangle_list(x + 4, y + 0, x + 30, y + 63, obj_pushable, false, true, list, false);

if (num > 0)
{
	for(var i = 0; i < num; ++i;){
		list[| i].x += push;
	}
}
if (place_meeting(x, y, chiliman)){
	chiliman.x += push;
}
//spaghetti code af
if (chiliman.y+16< baseY){
	image_xscale = 0;
}else{
	image_xscale = 2;
}

ds_list_destroy(list);
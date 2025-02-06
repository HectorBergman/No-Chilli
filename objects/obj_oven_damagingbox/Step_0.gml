/// @description Insert description here
// You can write your code in this editor
pause_check()

if (!ds_list_empty(list)){
	

	var destroy = ds_list_find_value(list, 0);
	try{
		var destroyparent = object_get_parent(destroy.object_index)
	
		if (destroyparent == object_wall){
			objectEaten(destroy);
			instance_destroy(destroy);
		}
	}
	ds_list_delete(list, 0);
		
}
	
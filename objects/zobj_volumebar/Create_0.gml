
show_debug_message(id);


if (type != "ahh"){
	var barStruct =
	{
		image_index : 1,
		parent : id,
		type : "ahh",
	}
	child = instance_create_depth(x, y, 1, zobj_volumebar, barStruct);	
}else{
	child = noone
}
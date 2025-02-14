array[index] = getPosData();
index++;
if (timer % 5 == 0){
	image_index = irandom_range(0,5);
}
timer++
show_debug_message("mod" + string(timer % interval));
if (timer % interval == 0){
	var ccStruct = {
		parent: id
	}
	instance_create_depth(0, 0, 0, obj_chillicClone, ccStruct)
}
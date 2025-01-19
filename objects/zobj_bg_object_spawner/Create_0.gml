
for(var i = 0; i < room_width; i = i + 100){
	for (var j = 0; j < room_height; j = j + 100){
		if (random(1) < frequency){	
			instance_create_depth(i, j, 0, zobj_bg_object)
		}
	}
}
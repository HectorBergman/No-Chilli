
for(var i = 0; i < room_width; i = i + 100){
	for (var j = 0; j < room_height; j = j + 100){
		if (random(1) < frequency){	
			instance_create_depth(i, j, 0, zobj_bg_object)
		}
	}
}

/*var areaX = 1920;
var areaY = 1080;
for(var i = -areaX/2; i < areaX/2; i = i + 50){
	for (var j = -areaY/2; j < areaY/2; j = j + 50){
		if (random(1) < frequency){	
			instance_create_depth(i+chiliman.x, j+chiliman.y, 0, zobj_bg_object)
		}
	}
}*/
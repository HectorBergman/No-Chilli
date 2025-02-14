cloneData = variable_struct_get(global.cloneData, cloneName);
index = 0;
image_yscale = 1;
length = array_length(cloneData);

freezeTime = 20;
freezeTimer = freezeTime;
freeze = false;
function updatePosition(){
	x = cloneData[index][0];
	y = cloneData[index][1];
	sprite_index = cloneData[index][2];
	image_index = cloneData[index][3];
	image_xscale = cloneData[index][4];
	
}
image_alpha = 0.5;
updatePosition();

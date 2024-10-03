/// @description Insert description here
// You can write your code in this editor
base_width = 32;
base_height = 32;
new_width = base_width *image_xscale;
new_height= base_height *image_yscale;

amountWidth = new_width/base_width;
amountHeight = new_height/base_height;

for (var i = 0; i < amountWidth; i += 1){
	for (var j = 0; j < amountHeight; j += 1){
		blockStruct = {
		}
		instance_create_depth(self.x + xOffset + i*base_width, self.y + yOffset + j*base_height, -20, asset_get_index(object), blockStruct)
	}
}


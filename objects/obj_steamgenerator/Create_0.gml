/// @description Insert description here
// You can write your code in this editor
base_width = 32*10;
base_height = 32*10;


amountWidth = room_width/base_width;
amountHeight = room_height/base_height;

for (var i = 0; i < amountWidth; i += 1){
	for (var j = 0; j < amountHeight; j += 1){
		for (var k = 0; k < 3; k +=1){
			if (random(1) > 0){
				if (random_range(0,1) == 1){
					var leftOrRight = 1;
				}else{
					var leftOrRight = -1;
				}
				xOffset = random(32*5)*leftOrRight;
				if (random_range(0,1) == 1){
					var leftOrRight = 1;
				}else{
					var leftOrRight = -1;
				}
				yOffset = random(32*5)*leftOrRight;
				steamStruct = {
					frame : random_range(1,6),
				}
				instance_create_depth(self.x + i*base_width+xOffset, self.y + j*base_height+yOffset, -20, obj_steam, steamStruct)
			}
		}
	}
}
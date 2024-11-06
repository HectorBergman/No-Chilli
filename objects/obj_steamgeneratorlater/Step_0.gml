/// @description Insert description here
// You can write your code in this editor
if (random(1) > 0.85){
	newX = random(room_width+32*10*2)-32*10
	steamStruct = {
				frame : random_range(1,6),
	}
	instance_create_depth(newX, self.y, -20, obj_steam, steamStruct)
}
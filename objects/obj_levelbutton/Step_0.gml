/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, chiliman) && !pressed){
	image_index = 1;
	cuckooStruct = {
		timer : doorTime,
		button : id,
	}
	cuckoo = instance_create_depth(self.x, self.y, -40, obj_cuckoo, cuckooStruct)
	pressed = true;
}else if (!pressed){
	image_index = 0;
}

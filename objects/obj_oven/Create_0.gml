/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
depth = 30;

closing = false;

animationTime = 120;
animationTimer = 0;
hideStruct = {
	parent: id,
	
}
hide = instance_create_depth(self.x, self.y, -100, obj_oven_hide, hideStruct)

hideStruct = {
	parent: id,
	
}
wall = instance_create_depth(self.x, self.y, -100, obj_oven_roofcoll, hideStruct)

hideStruct = {
	parent: id,
	
}
roof = instance_create_depth(self.x, self.y, -100, obj_oven_wallcoll, hideStruct)
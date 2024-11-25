/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
timer = 0;
drip = noone;

dripStruct = {
		parent: id,
		special: true,
}
drip = instance_create_depth(self.x+32+random_range(-8,5), self.y+27, 10, obj_chickendrip, dripStruct)
/// @description Insert description here
// You can write your code in this editor
intervall = 240;
timer = intervall;

onStruct = {
	parent: id,
	intervall: intervall,
	
}
on = instance_create_depth(self.x, self.y, -100, obj_heatingRodON, onStruct)
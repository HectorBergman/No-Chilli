/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
intervall = 240;
timer = intervall;

heatStruct = {
	parent: id,
	intervall: intervall,
	
}
heat = instance_create_depth(self.x, self.y, -100, obj_heatingRodON, heatStruct)
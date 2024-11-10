/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
intervall = 240;
timer = intervall;

heatStruct = {
	parent: id,
	intervall: intervall,
	
}
heat = instance_create_depth(self.x, self.y, -1, obj_heatingRodON, heatStruct)

actuallyheatStruct = { //ok so the one above is heatingrodON but i made it way before the actual heat object
					   // so i named it kinda bad and tbh i cant rly b fucked to redo all instances even tho
					   //i could just replace everything quickly so this is now called actuallyheat
	parent: heat,
	intervall: intervall,
	
}
actuallyheat = instance_create_depth(self.x, self.y, -5, obj_heatingRod_heat, actuallyheatStruct)
/// @description Insert description here
// You can write your code in this editor
PAUSE
timer++
if timer mod 210 == 0 {
	dripStruct = {
		parent: id,
		special: false,
	}
	drip = instance_create_depth(self.x+32+random_range(-8,5), self.y+27, 10, obj_chickendrip, dripStruct)
}
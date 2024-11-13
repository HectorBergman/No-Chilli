/// @description Insert description here
// You can write your code in this editor
PAUSE
timer++
if timer mod 600 == 0 {
	dripStruct = {
		parent: id,
	}
	drip = instance_create_depth(self.x+32, self.y+24, 10, obj_chickendrip, dripStruct)
}
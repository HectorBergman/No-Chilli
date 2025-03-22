/// @description Insert description here
// You can write your code in this editor

enum levelstartstates{
	normal,
	inactive,
	active,
}
levelstartstate = levelstartstates.normal

medalRequirements = [[platinumRequirement, "platinum"], [goldRequirement, "gold"], [silverRequirement, "silver"], [bronzeRequirement, "bronze"]];

_time = variable_struct_get(global.game_data, levelname)

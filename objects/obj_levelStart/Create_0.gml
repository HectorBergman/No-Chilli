/// @description Insert description here
// You can write your code in this editor

enum levelstartstates{
	normal,
	inactive,
	active,
}
levelstartstate = levelstartstates.normal


_time = variable_struct_get(global.game_data, levelname)

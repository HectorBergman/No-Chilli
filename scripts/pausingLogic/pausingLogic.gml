// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createSettings(){

	var relativeX = -128
	var relativeY = 150
	var settingsStruct =
	{
		spriteName : spr_setti,
		toRoom : -99,
	}
	activeSettings = instance_create_layer(self.x+relativeX, self.y+relativeY, "pauseUI", obj_button, settingsStruct);
}
function createQuit(){

	var relativeX = -130
	var relativeY = 225
	var quitStruct =
	{
		spriteName : spr_quit,
		toRoom : 0,
	}
	activeQuit = instance_create_layer(self.x+relativeX, self.y+relativeY, "pauseUI", obj_button, quitStruct);
}

function createSilly(){
	var relativeX = -130
	var relativeY = 225
	var quitStruct =
	{
		spriteName : spr_sillyman,
		toRoom : -89,
	}
	activeSilly = instance_create_layer(self.x+relativeX, self.y+relativeY, "pauseUI", obj_button, quitStruct);
}

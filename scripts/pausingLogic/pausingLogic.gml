// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createSettings(){
	var relativeX = cam.x-355*(cam.camWidth/640/2)
	var relativeY = cam.y+25*(cam.camHeight/360/2)
	var settingsStruct =
	{
		spriteName : spr_setti,
		toRoom : -99,
	}
	instance_create_layer(relativeX, relativeY, "pauseUI", obj_button, settingsStruct);
}
function createQuit(){

	var relativeX = cam.x-359*(cam.camWidth/640/2)
	var relativeY = cam.y+175*(cam.camHeight/360/2)
	var quitStruct =
	{
		spriteName : spr_quit_pause,
		toRoom : 0,
	}
	instance_create_layer(relativeX, relativeY, "pauseUI", obj_button, quitStruct);
}

function summonSilly(){ //with this treasure i summon
	var relativeX = cam.x+200*(cam.camWidth/640/2)
	var relativeY = cam.y-55*(cam.camHeight/360/2)
	var sillyStruct =
	{
		spriteName : spr_sillyman,
		toRoom : -89,
	}
	instance_create_layer(relativeX, relativeY, "pauseUI", obj_button, sillyStruct);
}


function summonBorder(){
	var relativeX = x
	var relativeY = y
	var borderStruct =
	{
		spriteName : spr_border,
	}
	activeBorder = instance_create_layer(relativeX, relativeY, "pauseUI", obj_border, borderStruct);
}

function summonRepeatingJalapeno(){
	var relativeX = 0
	var relativeY = 0
	var borderStruct =
	{
	}
	activeJalapeno = instance_create_layer(relativeX, relativeY, "pauseUI", obj_jalapeno, borderStruct);
}
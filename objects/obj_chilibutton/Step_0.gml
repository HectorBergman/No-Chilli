/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, chiliman) && !pressed){
	var buttontext = "lol";
	if (instance_exists(text)){
			instance_destroy(text);
		}
	if (global.chillicClones){
		global.chillicClones = false;
		buttontext = "Chilic Clones deactivated..."
	}else{
		global.chillicClones = true;
		buttontext = "Chilic Clones activated..."
	}
	var textStruct = {
			text : buttontext,
			lifetime : 180,
	}
	text = instance_create_depth(0, 0, -40, obj_fading_text, textStruct)
	pressed = true;
	image_index = 1;
	
}else if (!place_meeting(x,y,chiliman)){
	pressed = false;
	image_index = 0;
}
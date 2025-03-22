/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, chiliman) && !pressed){
	var buttontext = "lol";
	if (instance_exists(text)){
			instance_destroy(text);
		}
	if (global.chillicClones){
		global.chillicClones = false;
		saveData("chillicClones", "false")
		buttontext = "[$ad0000]Chili Clones deactivated..."
	}else{
		global.chillicClones = true;
		saveData("chillicClones", "true")
		buttontext = "[$50008f]Chili Clones activated..."
	}
	var textStruct = {
			text : buttontext,
			lifetime : 180,
	}
	text = instance_create_depth(0, 0, -40, obj_fading_text, textStruct)
	pressed = true;
	image_index = 1;
	audio_play_sound(snd_button_push, 0, 0, global.soundfx*global.volume*2, 0, 0.3);
	
}else if (!place_meeting(x,y,chiliman)){
	if (pressed){
		audio_play_sound(snd_button_release, 0, 0, global.soundfx*global.volume*2, 0, 0.3);
	}
	pressed = false;
	image_index = 0;
}
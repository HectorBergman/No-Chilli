/// @description Insert description here
// You can write your code in this editor

sprite_index = spriteName
baseX = x;
baseY = y;
depth = -9999

click_x = 0
click_y = 0

function isClickable(){
	if (toRoom != -14 && toRoom != -15 && toRoom != -16){
		return true
	}
	return false
}

function saveVolume(){
	show_debug_message(global.volume);
	show_debug_message(global.musicvolume);
	show_debug_message(global.soundfx);
	saveData("masterVolume", global.volume);
	saveData("musicVolume", global.musicvolume);
	saveData("sfxVolume", global.soundfx);
	show_debug_message("saved!");
}
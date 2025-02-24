/// @description Insert description here
// You can write your code in this editor
loadAllData();
timerLength = 180;
timer = timerLength;
startingTimer = timerLength*2;
holdTimer = -10;
skippable = false;
tipText = scribble_typist();
tipText.in(6, 999);
show_debug_message(variable_struct_get(global.game_data, "sfxVolume"))
global.playingSong = noone;

if (variable_instance_exists(global.game_data, "cutscene1Seen")){
	skippable = true;
}
saveData("cutscene1Seen", "true");
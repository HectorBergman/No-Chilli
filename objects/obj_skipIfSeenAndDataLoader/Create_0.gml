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
global.playingSong = noone;
if (variable_struct_get(global.game_data, "fullscreen") == true || variable_struct_get(global.game_data, "fullscreen") == undefined ){
	window_set_fullscreen(true);
}else{
	window_set_fullscreen(false);
}
if (variable_instance_exists(global.game_data, "cutscene1Seen")){
	skippable = true;
}
saveData("cutscene1Seen", "true");
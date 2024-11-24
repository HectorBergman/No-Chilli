/// @description Insert description here
// You can write your code in this editor
loadAllData();
timerLength = 60;
timer = timerLength;
startingTimer = timerLength*5;
holdTimer = -10;
skippable = false;
if (variable_instance_exists(global.game_data, "cutscene1Seen")){
	skippable = true;
}
saveData("cutscene1Seen", "true");
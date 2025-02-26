PAUSEVARS
depth = -15
lockText = "";
if (unlockCondition == "none"){
	instance_destroy()
}else if (unlockCondition == "goldLevel"){
	if (global.goldGot){
		instance_destroy();
	}
	lockText = "Get a gold medal in any level to unlock"
}else if (unlockCondition == "tutorialBeat"){
	var time = variable_struct_get(global.game_data, "The Tutorial")
	if (!is_undefined(time)){
		instance_destroy();
	}
	lockText = "Beat The Tutorial to unlock"
}
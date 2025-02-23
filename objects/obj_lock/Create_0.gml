if (unlockCondition == "none"){
	instance_destroy()
}else if (unlockCondition == "goldLevel"){
	
}else if (unlockCondition == "tutorialBeat"){
	var time = variable_struct_get(global.game_data, "The Tutorial")
	if (!is_undefined(time)){
		instance_destroy();
	}
}
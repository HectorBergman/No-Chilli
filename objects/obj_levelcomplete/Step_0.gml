
//checks if time being counted down gets lower than the previous record, and then displays
//new record text by changing an empty string that is already being drawn
if (keyboard_check(vk_space)){ //skip everything if spacebar
	afterDoneTimer = 240
	afterDoneBuffer = 120
	afterDoneIncrement = 4;
	countdownDone = true;
	displayedSecondsTotal = levelSecondsTotal
	displayedMinutes = levelMinutes
	displayedSeconds = levelSeconds;
}

if (!is_undefined(_prevMinutes)){
	if (displayedSecondsTotal < _prevMinutes*60+_prevSeconds){
		newRecordText = "[scale,3][$eece5d]New Record!"
		//TODO: add sound fx
	}
}
countDownTime();
displayedMinutesAndSeconds = timeReformatter(displayedSecondsTotal);
displayedMinutes = displayedMinutesAndSeconds[0];
displayedSeconds = displayedMinutesAndSeconds[1];

if (afterDoneIncrement == 4 && afterDoneTimer == 240){
	show_debug_message("hi")
	buttonStruct = {
		toRoom: -73,
		spriteName: spr_quit,
		image_xscale: 1,
		image_yscale: 1,
		
	}
	instance_create_depth(0, 0, -99, obj_button, buttonStruct)
}

if (countdownDone){
	if (afterDoneBuffer != 120){
		afterDoneBuffer++;
	}else{
		afterDoneTimer++
		if (afterDoneTimer mod afterDoneSpacing == 0){
			afterDoneIncrement++
			//TODO: add sound fx
		}
	}
}

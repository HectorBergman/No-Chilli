
//checks if time being counted down gets lower than the previous record, and then displays
//new record text by changing an empty string that is already being drawn
if (keyboard_check(vk_space)){ //skip everything if spacebar
	afterDoneTimer = afterDoneTimerFinish;
	afterDoneBuffer = 120
	afterDoneIncrement = afterDoneIncrementFinish;
	countdownDone = true;
	displayedSecondsTotal = levelSecondsTotal
	displayedMinutes = levelMinutes
	displayedSeconds = levelSeconds;
	audio_stop_all()
}

if (!is_undefined(_prevMinutes)){
	if (displayedSecondsTotal < _prevMinutes*60+_prevSeconds){
		newRecordText = "[wave][scale,3][$eece5d]New Record!"
	
		
		//TODO: add sound fx
	}
}
countDownTime();
displayedMinutesAndSeconds = timeReformatter(displayedSecondsTotal);
displayedMinutes = displayedMinutesAndSeconds[0];
displayedSeconds = displayedMinutesAndSeconds[1];

if (afterDoneIncrement == afterDoneIncrementFinish && afterDoneTimer == afterDoneTimerFinish){
	show_debug_message("hi")
	buttonStruct = {
		toRoom: -73, // to lobby
		spriteName: spr_quit,
		image_xscale: 3,
		image_yscale: 3,
		
	}
	instance_create_depth(3*50+960, 3*50+35*6, -99, obj_button, buttonStruct)
	buttonStruct = {
		toRoom: -71, //to title
		spriteName: spr_quit,
		image_xscale: 3,
		image_yscale: 3,
		
	}
	instance_create_depth(3*50+960, 3*50+35*6+60*3+30*3, -99, obj_button, buttonStruct)
}

if (countdownDone){
	if (afterDoneBuffer != 120){
		afterDoneBuffer++;
	}else{
		afterDoneTimer++
		if (afterDoneTimer mod afterDoneSpacing == 0){
			afterDoneIncrement++
			if (afterDoneIncrement < 4){
				audio_play_sound(snd_result,0,false);
			}
		}
	}
}


//checks if time being counted down gets lower than the previous record, and then displays
//new record text by changing an empty string that is already being drawn
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

if (countdownDone){
	if (afterDoneBuffer != 180){
		afterDoneBuffer++;
	}else{
		afterDoneTimer++
		if (afterDoneTimer mod afterDoneSpacing == 0){
			afterDoneIncrement++
			//TODO: add sound fx
		}
	}
}
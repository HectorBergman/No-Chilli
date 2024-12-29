

downShift = 180; // to make space for lvl title

function timeReformatter(secondsTotal){
	//give us mins and secs instead of a secondsTotal
	var _minutesAndSeconds = [];
	var minutes = floor(secondsTotal/60)
	var seconds = secondsTotal - minutes*60;
	_minutesAndSeconds[0] = minutes;
	_minutesAndSeconds[1] = seconds
	return _minutesAndSeconds;
}

displayedMinutes = 99;
displayedSeconds = 59.999;
displayedSecondsTotal = 5999.999
displayedMinutesAndSeconds = 0; //list
countdownDone = false;
levelSecondsTotal = global.currentLevelTime
levelMinutes = timeReformatter(levelSecondsTotal)[0]
levelSeconds = timeReformatter(levelSecondsTotal)[1]

newRecordText = "";

//slowly counts down the time from 6000 seconds to the actual time for a suspense effect
function countDownTime(){
	if (levelSecondsTotal != displayedSecondsTotal){
		if (levelSecondsTotal + levelSecondsTotal*0.02 < displayedSecondsTotal){
			displayedSecondsTotal *= 0.98
		}else{
			displayedSecondsTotal = levelSecondsTotal
		}
		//TODO: add sound fx
	}else{
		countdownDone = true;
	}
}


_prevMinutes = variable_struct_get(global.game_data, global.currentLevel + "Minutes")
_prevSeconds = variable_struct_get(global.game_data, global.currentLevel + "Seconds")
levelname =  global.currentLevel;

//after the scrolling of the new time is done, a timer starts to display additional 
//run information. afterDoneIncrement is for each information, afterDoneSpacing is
//the time it takes for the next info to be displayed
//afterDoneBuffer is the time it takes for this to start after countdown is done

afterDoneTimer = 0;
afterDoneIncrement = 0;
afterDoneSpacing = 60;
afterDoneBuffer = 120;

//saves the time
function saveTime(minutes, seconds){
	var timeString = string(minutes) + ":" + string(seconds)
	if (!is_undefined(_prevMinutes)){
		if (_prevMinutes < minutes){
		
		}else{
			if (_prevMinutes == minutes && _prevSeconds <= seconds){
			
			}else{
				saveData(levelname, timeString);
				saveData(levelname + "Minutes", minutes)
				saveData(levelname + "Seconds", seconds);
			}
		}
	}else{
		saveData(levelname, timeString);
		saveData(levelname + "Minutes", minutes)
		saveData(levelname + "Seconds", seconds);
	}
}

//saveTime(levelMinutes, levelSeconds);
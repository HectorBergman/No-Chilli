/// @description Insert description here
// You can write your code in this editor
displayedMinutes = 99;
displayedSeconds = 59.999;
displayedSecondsTotal = 5999.999
displayedMinutesAndSeconds = 0; //list
countdownDone = false;
function countDownTime(){
	if (levelSecondsTotal != displayedSecondsTotal){
		if (levelSecondsTotal + levelSecondsTotal*0.02 < displayedSecondsTotal){
			displayedSecondsTotal *= 0.98
		}else{
			displayedSecondsTotal = levelSecondsTotal
		}
	}else{
		countdownDone = true;
	}
}
function timeReformatter(secondsTotal){
	//give us mins and secs instead of a secondsTotal
	var _minutesAndSeconds = [];
	var minutes = floor(secondsTotal/60)
	var seconds = secondsTotal - minutes*60;
	_minutesAndSeconds[0] = minutes;
	_minutesAndSeconds[1] = seconds
	return _minutesAndSeconds;
}
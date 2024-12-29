

var levelNameString = "[scale,12][$eee7e7]" + levelname;
var levelline = scribble(levelNameString).outline($000023);
levelline.draw(36,48)

var _string = "[scale,9][$eee7e7]Time: " + string_format(displayedMinutes, 2, 0) + ":" + string_format(displayedSeconds, 2, 2);
var line = scribble(_string).outline($000023);
line.draw(48, 48+downShift);

var newRecordLine = scribble(newRecordText).outline($000023);
newRecordLine.draw(894, 132+downShift);
if (!is_undefined(_prevMinutes)){
	var _secondString = "[scale,3][$eece5d]Previous Record: " + string_format(_prevMinutes, 2, 0) + ":" + string_format(_prevSeconds, 2, 2);
	var secondLine = scribble(_secondString).outline($000023);
	secondLine.draw(60, 192+downShift);
}

if (afterDoneIncrement > 0){
	var scovilleString = "[scale,6][$eee7e7]Scoville: " + string(global.scoville);
	var scovilleLine = scribble(scovilleString).outline($000023);
	scovilleLine.draw(60, 264+downShift);
}
if (afterDoneIncrement > 1){
	var speedString = "[scale,6][$eee7e7]Top Speed: " + string(global.topSpeed);
	var speedLine = scribble(speedString).outline($000023);
	speedLine.draw(60, 372+downShift);
}
if (afterDoneIncrement > 2){
	var crashString = "[scale,6][$eee7e7]Crashes: " + string(global.crashCount);
	var crashLine = scribble(crashString).outline($000023);
	crashLine.draw(60, 480+downShift);
}
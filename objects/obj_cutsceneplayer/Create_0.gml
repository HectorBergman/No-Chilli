timer = 0
seconds = 60
nextFrameNumber = 1;
nextFrameTime = 3*seconds;
framesSeen = 1;
defaultTime = 3;
previousFrame = 0;
lastFrameSeen = 56;

function nextFrameInSeconds(time, nextFrame){
	//in time seconds, go to nextFrame number frame
	nextFrameNumber = nextFrame
	nextFrameTime += time*seconds
}

function checkIfNextFrame(){
	return (timer == nextFrameTime)
}
function goNextFrame(){
	previousFrame = image_index;
	image_index = nextFrameNumber;
	if (framesSeen == lastFrameSeen){
		room_goto(rm_title)
	}
	framesSeen++;
}
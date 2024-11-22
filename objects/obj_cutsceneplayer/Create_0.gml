timer = 0
seconds = 60
nextFrameNumber = 1;
nextFrameTime = 3*seconds;
framesSeen = 1;
defaultTime = 3;
previousFrame = 0;

function nextFrameInSeconds(time, nextFrameAdd){
	//in time seconds, go to current frame + nextFrameAdd number frame
	nextFrameNumber += nextFrameAdd
	nextFrameTime += time*seconds
}

function checkIfNextFrame(){
	return (timer == nextFrameTime)
}
function goNextFrame(){
	previousFrame = image_index;
	image_index = nextFrameNumber;
	framesSeen++;
}
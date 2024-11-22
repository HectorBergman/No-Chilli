timer++
show_debug_message(timer)
show_debug_message(nextFrameTime)
show_debug_message(previousFrame)
if (checkIfNextFrame()){
	goNextFrame();
	if (framesSeen == 3){
		nextFrameInSeconds(3, -2)
	}else if framesSeen == 4{
		nextFrameInSeconds(1, 4)
	}else{
		nextFrameInSeconds(defaultTime, 1)
	}
}
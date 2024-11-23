timer++
show_debug_message(timer)
show_debug_message(framesSeen)
if (checkIfNextFrame()){
	goNextFrame();
	if (framesSeen == 3){
		nextFrameInSeconds(defaultTime, 0)
	}else if (framesSeen == 4){
		nextFrameInSeconds(1, 4)
	}else if ((framesSeen >= 7 && framesSeen <= 20)){
		if (framesSeen == 7 ){
			nextFrameInSeconds(defaultTime, 7)
		}else if (framesSeen == 20 ){
			nextFrameInSeconds(0.5, 9)
		}else if (framesSeen mod 2 == 0){
			nextFrameInSeconds(0.5, 7)
		}else{
			nextFrameInSeconds(0.5, 8)
		}
	}else if ((framesSeen >= 21 && framesSeen <= 35)){
		if (framesSeen == 35 ){
			nextFrameInSeconds(0.5, 5)
		}else if (framesSeen mod 2 == 0){
			nextFrameInSeconds(0.5, 9)
		}else{
			nextFrameInSeconds(0.5, 10)
		}
	}else if ((framesSeen >= 36 && framesSeen <= 54)){
		if framesSeen == 36{
			nextFrameInSeconds(defaultTime, 11)
		}else if framesSeen == 54{
			nextFrameInSeconds(0.3, 13)
		}else if (framesSeen mod 2 == 0){
			nextFrameInSeconds(0.3, 11)
		}else{
			nextFrameInSeconds(0.3, 12)
		}
	}else{
		nextFrameInSeconds(defaultTime, nextFrameNumber+1)
	}
}
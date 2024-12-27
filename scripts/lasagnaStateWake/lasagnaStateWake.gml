function lasagnaStateWake(){
	timer = get_timer()/1000 - timer_start //milliseconds
	if (image_index == 6){
		if (timer > awakenFrameSpeed/2){
			state = hiddenLasagnaState.awake;
			timer_start = get_timer()/1000
		}
	}else{
		if (timer > awakenFrameSpeed){
			image_index++
			timer_start = get_timer()/1000
		}
	}
}
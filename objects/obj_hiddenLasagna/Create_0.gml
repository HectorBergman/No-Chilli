enum hiddenLasagnaState{
	sleeping,	//b4 in vision
	wake,
	awake,
	dying,
	dead
}

function wake(){
	if (state = saladState.sleeping){
		state = saladState.wake;
		timer_start = get_timer()/1000
		image_index = 1;
	}
}
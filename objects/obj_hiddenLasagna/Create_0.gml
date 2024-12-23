timer = 0
spearTimer = spearInterval;

state = hiddenLasagnaState.sleeping
if (sign(image_xscale) == -1){
	x = x + 32*sign(image_xscale)
}

enum hiddenLasagnaState{
	sleeping,	//b4 in vision
	wake,
	awake,
}
timer_start = 0;
function wake(){
	if (state = saladState.sleeping){
		state = saladState.wake;
		timer_start = get_timer()/1000
		image_index = 1;
	}
}


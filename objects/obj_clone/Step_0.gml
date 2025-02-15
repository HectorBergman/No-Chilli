PAUSE
if !freeze{
	index++

	if (length > index){
		updatePosition();
	}else{
		if repeatable{
			freeze = true;
		}else{
			instance_destroy();
		}
	}
}else{
	if (freezeTimer == 0){
		freeze = false;
		index = 0
		freezeTimer = freezeTime
		updatePosition();
		image_alpha = 0.5;
	}
	freezeTimer--
	image_alpha -= 0.05;
}
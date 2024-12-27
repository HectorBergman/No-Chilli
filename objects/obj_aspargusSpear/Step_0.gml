if (parent != noone && !instance_exists(parent)){
	parent = noone;
}

if (abs(x) > room_width+500 || abs(y) > room_height+500){
	//500 is arbitrary, i just want them gone a bit after leaving the room
	instance_destroy()
}

if (parent == noone){
	y = y + yAxis*thrownDirection*flyingSpeed;
	x = x + (!yAxis)*thrownDirection*flyingSpeed;
}else{ 
	var timerRequirement = 140
	if !(firstSpear){
		timerRequirement = 70
		
	}
	if(parent.image_index == 6){
	
		y = y + yAxis*thrownDirection*flyingSpeed;
		x = x + (!yAxis)*thrownDirection*flyingSpeed;
	}
}

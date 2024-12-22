if (parent == noone){
	y = y + yAxis*thrownDirection*flyingSpeed;
	x = x + (!yAxis)*thrownDirection*flyingSpeed;
}else{ 
	if(parent.image_index == 6){
		if image_index != 0{
			timer = get_timer()/1000 - timer_start //milliseconds
			if (timer > 100){
				image_index++
				timer_start = get_timer()/1000
			}
		}
		y = y + yAxis*thrownDirection*flyingSpeed;
		x = x + (!yAxis)*thrownDirection*flyingSpeed;
	}
}

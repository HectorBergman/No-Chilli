// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saladStateWake(){
	timer = get_timer()/1000 - timer_start //milliseconds
	if (image_index == 6){
		if (timer > 50){
			state = saladState.awake;
			timer_start = get_timer()/1000
		}
	}else if (image_index != 3){
		if (timer > 100){
			image_index++
			timer_start = get_timer()/1000
		}
	}else if(image_index == 3){
		if (timer > 150){
			image_index++
			timer_start = get_timer()/1000
		}
	}
}
/// @description Insert description here
// You can write your code in this editor
PAUSE



timer = get_timer()/1000 - timer_start //milliseconds
show_debug_message(timer);
show_debug_message(timer_start);
if (image_index == 0 || image_index == 4){
	if (timer > 100){
		image_index++
		timer_start = get_timer()/1000
	}
}else if(image_index mod 2 == 1){
	if (timer > 150){
		image_index++
		timer_start = get_timer()/1000
	}
}else{
	if (timer > 200){
		image_index++
		timer_start = get_timer()/1000
	}
}

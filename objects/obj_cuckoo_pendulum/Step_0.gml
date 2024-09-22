/// @description Insert description here
// You can write your code in this editor
PAUSE



timer = get_timer()/1000 - timer_start

if (image_index == 0 || image_index == 4){
	if (timer > 100){
		image_index++
		timer = 0;
	}
}else if(image_index mod 2 == 1){
	if (timer > 200){
		image_index++
		timer = 0;
	}
}else{
	if (timer > 300){
		image_index++
		timer = 0;
	}
}
show_debug_message(image_index);
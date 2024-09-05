/// @description Insert description here
// You can write your code in this editor

click_x = mouse_x;
click_y = mouse_y;
if (position_meeting(mouse_x, mouse_y, id)){
	image_index = 1;
	if (mouse_check_button_pressed(mb_left)){
		room_goto(toRoom);
	}
}else{
	image_index = 0;
}

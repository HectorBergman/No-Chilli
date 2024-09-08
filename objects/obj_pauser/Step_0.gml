/// @description Insert description here
// You can write your code in this editor
#macro PAUSE if (global.pause) {if (sprite_get_speed(sprite_index) != 0){prePauseSpeed = sprite_get_speed(sprite_index);} sprite_set_speed(sprite_index, 0, spritespeed_framespersecond); exit; }else{ if (sprite_get_speed(sprite_index) == 0){sprite_set_speed(sprite_index, prePauseSpeed, spritespeed_framespersecond);}}
x = cam.x
y = cam.y-250*(cam.camHeight/360/2)
image_xscale = cam.camWidth/640/2
image_yscale = cam.camHeight/360/2
if (keyboard_check_pressed(vk_escape)){
	if (global.pause){
		global.pause = false;
		instance_destroy(obj_button);
	}else{
		global.pause = true;
		createSettings();
		createQuit();
		createSilly();
	}
}

if (global.pause){
	visible= true
}else{
	visible=false
}
if (pauseTheme != noone){
	audio_sound_gain(pauseTheme, 1.4*global.volume*global.musicvolume, 0);
}

if (instance_find(obj_settingser, 0)){
	global.settingser = true;
}else{
	global.settingser = false;
}

cam = instance_find(object_zcamera, 0);// {if (sprite_get_speed(sprite_index) != 0){prePauseSpeed = sprite_get_speed(sprite_index);} sprite_set_speed(sprite_index, 0, spritespeed_framespersecond); exit; }else{ if (sprite_get_speed(sprite_index) == 0){sprite_set_speed(sprite_index, prePauseSpeed, spritespeed_framespersecond);}}
//x = cam.x
//y = cam.y-250*(cam.camHeight/360/2)
layer = layer_create(-999, "pauseUI");
if (instance_exists(object_zcamera)){
	x = cam.x-640*(cam.camWidth/640/2)
	y = cam.y-360*(cam.camHeight/360/2)
}



if (keyboard_check_pressed(vk_escape) && global.pausable){
	if (global.pause){
		global.pause = false;
		destroyMenu()
		cam.camWidth = tempWidth;
		cam.camHeight = tempHeight
		audio_resume_all();
	}else{
		audio_pause_all();
		tempWidth = cam.camWidth;
		tempHeight = cam.camHeight;
		cam.camWidth = cam.camWidthNormal;
		cam.camHeight = cam.camHeightNormal;
		cam.camX = cam.x-(cam.camWidth*0.5)
		cam.camY = cam.y-(cam.camHeight*0.5)
		camera_set_view_size(view_camera[0],cam.camWidth,cam.camHeight)

		camera_set_view_pos(view_camera[0], cam.camX, cam.camY);
		global.pause = true;
		createContinue();
		createSettings();
		createQuit();
		summonSilly();
		summonBorder();
		summonRepeatingJalapeno();
	}
}

if (global.destroy){
	global.destroy = false;
	destroyMenu()
}
if (global.pause && !visible){
	visible=true;
	pauseTheme = audio_play_sound(snd_this_is_the_song_they_have_in_the_elevators_at_Trump_Tower, 0, 1, 1.4*global.volume*global.musicvolume);
}else if (!global.pause){
	visible=false
	audio_stop_sound(pauseTheme);
}
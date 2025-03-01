/// @description Insert description here
// You can write your code in this editor
if (!global.settingser){
	cam = instance_find(object_zcamera, 0);
	if (instance_exists(object_zcamera) && room != menu_score){
		image_xscale = cam.camWidth/640
		image_yscale = cam.camHeight/360
		//x = baseX*cam.camWidth/360
		//y = baseY*cam.camWidth/360
	}
	click_x = mouse_x;
	click_y = mouse_y;
	if (position_meeting(mouse_x, mouse_y, id) && !isQuirkyRoom()){
		image_index = 1;
		if (mouse_check_button_pressed(mb_left)){
			if toRoom == -70{
				game_end();
				exit;
			}
			else if toRoom == -71
			{
				resetEverything()
				instance_destroy(obj_button);
				room_goto(rm_title)
				global.pausable = true;
				exit;
			}else if toRoom == -72{
				instance_create_depth(0,0,0,object_zcamera)
				instance_destroy(obj_button);
				global.pausable = true;
				resetLevel();
				room_goto(chiliman.startingRoom);
				exit;
			}else if toRoom == -73{
				resetEverything(false, false, false)
				instance_destroy(obj_button);
				toRoom = rm_lobby_room1
				global.pausable = true;
				chiliman.destinationNumber = 0;
				chiliman.state = states.normal;
			}
			if (toRoom == rm_title){
				resetEverything()
				destroyMenu()
			
			}
			try{
				room_goto(toRoom);
			}catch(_exception){
				destroyMenu()
				global.pause = false;
			}
			global.pause = false;
			instance_destroy(obj_button);
			audio_play_sound(snd_button_push, 0, 0, global.volume*global.soundfx);
		}
	}else if (position_meeting(mouse_x, mouse_y, id)){
		image_index = 1;
		if (mouse_check_button_pressed(mb_left)){
			if (toRoom == -10){
				show_debug_message("MONEY!");
				instance_create_depth(0,0,1, obj_settingser);
				/*
				if(window_get_fullscreen()){
					window_set_fullscreen(false)
				}else{
					window_set_fullscreen(true)
				}*/
				audio_play_sound(snd_button_push, 0, 0, global.volume*global.soundfx);
			}
		}
	
	}else{
		image_index = 0;
	}
}

// Calculate elapsed time by subtracting start_time from current_time
elapsed_time_ms = current_time - start_time;
elapsed_time = audio_sound_get_track_position(global.playingSong);
elapsed_time_seconds = elapsed_time_ms / 1000;
if (!switched){
	

	if (elapsed_time_seconds >= time2summon){
		instance_create_depth(-999,-999, -1, obj_ts_chilirun);
		switched = true;
		start_time = current_time
		time2summon = time2fade
		newTimer = time2fade
	}
	
}else{
	
	if (elapsed_time >= desired_time-time2fade){
		newTimer = time2summon - elapsed_time_seconds
		if (!instance_exists(obj_ts_chilirun) && room == rm_title_test){
			instance_create_depth(-999,-999, -1, obj_ts_chilirun);
			switched = true;
			start_time = current_time
			time2summon = time2fade
			newTimer = time2fade
		}
		if (room != rm_title && room != rm_title_test){
			instance_destroy();
		}
		
	}else{
		start_time = current_time
		
	}
	if (dieTimer == dieStartTime && room == rm_title){
			show_debug_message("hi");
			dieTimer--
		}
		if (dieTimer < dieStartTime){
			show_debug_message(dieTimer);
			dieTimer--
			if (dieTimer == 0){
				show_debug_message("haaai");
				instance_destroy();
			}
		}
}
if (sideB){
	audio_play_sound(song, 5, loop, 2*global.musicvolume*global.volume);
	instance_destroy(self);
}else{
	audio_stop_sound(global.playingSong);
	startRoom = room;

	paused = false;

	looped = true;
	if songLoop != noone{
		looped = false;
	}

	if looped{
		songPlaying = audio_play_sound(song, 5, loop, 2*global.musicvolume*global.volume);
	}else{
		songPlaying = audio_play_sound(song, 5, 0, 2*global.musicvolume*global.volume);
	}
	global.playingSong = songPlaying;

	
}
function whenToStop(){
	
	if (startRoom == rm_title || startRoom == rm_lobby_room1 || startRoom == rm_deathscreen || startRoom == rm_title_test){
		if room != startRoom{
			return true;
		}
		return false;
	}else{
		if (room == rm_title || room == rm_lobby_room1 || room == rm_deathscreen){
			return true;
		}
		return false;
	}
}
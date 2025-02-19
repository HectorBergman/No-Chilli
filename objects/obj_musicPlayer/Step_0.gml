/*if global.pause && !paused{
	audio_pause_sound(songPlaying);
}else if !global.pause && paused{
	audio_resume_sound(songPlaying);
}*/
audio_sound_gain(song, 2*global.musicvolume*global.volume, 0);
try{
	if (chiliman.state == states.levelcomplete){
		instance_destroy();
	}
}catch(e){
	instance_destroy();
}
if (room == rm_title || room == rm_lobby_room1 || room == rm_deathscreen){
	instance_destroy();
}
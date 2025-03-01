/*if global.pause && !paused{
	audio_pause_sound(songPlaying);
}else if !global.pause && paused{
	audio_resume_sound(songPlaying);
}*/

if (!looped && !audio_is_playing(songPlaying)){

	songPlaying = audio_play_sound(songLoop, 5, loop, 2*global.musicvolume*global.volume);
	looped = true;
	global.playingSong = songPlaying;
}
audio_sound_gain(songPlaying, 2*global.musicvolume*global.volume, 0);
try{
	if (chiliman.state == states.levelcomplete){
		instance_destroy();
	}
}catch(e){
}
if (whenToStop()){
	audio_stop_sound(songPlaying);
	instance_destroy();
}
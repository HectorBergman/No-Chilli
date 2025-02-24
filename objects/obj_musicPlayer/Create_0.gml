audio_stop_sound(global.playingSong);
songPlaying = audio_play_sound(song, 5, 1, 2*global.musicvolume*global.volume);
global.playingSong = songPlaying;
paused = false;
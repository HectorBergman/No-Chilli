// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerDeath(){
	//death shit here
	try{
		var currentSong = audio_get_name(global.playingSong);
		var failSong = asset_get_index(currentSong + "_fail");
		audio_play_sound(failSong, 0,false, global.musicvolume*global.volume);
	}catch(e){}
	
	audio_stop_sound(global.playingSong);
	
	objectEaten(self);
	deadTimer = deadTime
	dead = 1;
	state = states.dead;

}

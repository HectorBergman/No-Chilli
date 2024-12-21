function audioFunctions(){

}

function stopAudios(){
	if (state != states.crash){
		audio_stop_sound(crashLoop);
		crashLoop = noone;
	}
	if (state != states.normal){
		audio_stop_sound(snd_walk);
	}
	if(state != states.mach){
		audio_stop_sound(snd_trainRun)
	}
}
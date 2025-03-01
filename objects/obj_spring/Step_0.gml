
PAUSE
lifeTimeLeft--;
currentGain = 50/abs(max(point_distance(x, y, chiliman.x, chiliman.y),50));
audio_sound_gain(currentAudio, currentGain*0.5, 0);
switch(state){
	case springStates.normal: normalState(); break;
	case springStates.bounce: bounceState(); break;
}
if (lifeTimeLeft < 0){
	instance_destroy(self);
}


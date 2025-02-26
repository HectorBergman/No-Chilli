/// @description Insert description here
// You can write your code in this editor
PAUSE



timer--
if (animationTimer < -10){ //animations for the cuckoo bird + unaliving itself
	animationTimer--
	if (animationTimer < -60){
		gib();
		
		instance_destroy(pendulum);
		button.pressed = false;
		
		instance_destroy(self);
	}
	else if (animationTimer < -40){
		image_index = 12;
	}else if (animationTimer < -30){
		image_index = 11;
	}else if (animationTimer < -20){
		image_index = 10; //could simplify this all but fuck it lol
	}else{
		image_index = 9;
	}
}else if (timer <= 0){ //timer finished
	if (!doorLowered){
		audio_play_sound(snd_tok, 0, 0, global.volume*global.soundfx);
		audio_play_sound(snd_cuckoo_pop, 0, 0, global.volume*global.soundfx);
		theDoor.startLowering = true;
		doorLowered = true;
	}
	animationTimer--
	if (animationTimer < 0){
		image_index = 8;
	}else{
		image_index = 7;
	}
}else if (timer < starttime/4){ //timer 3/4 done
	if progress == 2{
			audio_play_sound(snd_tik, 0, 0, global.volume*global.soundfx);
			progress++
	}
	animationTimer--
	if (animationTimer < 0 || image_index == 6){
		
		animationTimer = animationTime
		image_index = 6;
		
	}else{

		image_index = 5;
	}
}else if (timer < starttime/2){ //timer half done
	if progress == 1{
			audio_play_sound(snd_tok, 0, 0, global.volume*global.soundfx);
			progress++
	}
	animationTimer--
	if (animationTimer < 0 || image_index == 4){
		animationTimer = animationTime
		image_index = 4;
	}else{
		image_index = 3;
	}
}else if (timer < (starttime/4)*3){ //timer 1/4 done
	if progress == 0{
			audio_play_sound(snd_tik, 0, 0, global.volume*global.soundfx);
			progress++
	}
	animationTimer--
	if (animationTimer < 0 || image_index == 2){
		animationTimer = animationTime
		image_index = 2;
	}else{
		
		image_index = 1;
	}
}else{ //timer less than 1/4 done
	image_index = 0;
}
	
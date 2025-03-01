function lasagnaStateSleeping(){
	if (collision_rectangle(x+sign(image_xscale)*300, y+100, x+sign(image_xscale)*64, y-100, chiliman, false, true)){
		wake()
		spearStruct = {
			parent: id,
			thrownDirection: sign(image_xscale),
			firstSpear: true,
			flyingSpeed: flyingSpeed
		}
		firstSpear = instance_create_depth(x-10, y+25, 0, obj_aspargusSpear, spearStruct)
		audio_play_sound_at(snd_shoot, x, y, 0, 100, 300, 0, 0, global.soundfx*global.volume);
	}
}
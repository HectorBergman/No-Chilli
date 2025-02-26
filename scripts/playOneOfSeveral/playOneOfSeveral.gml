function playOneOfSeveral(soundString, amount, gain = 1){
	var soundVariant = irandom(amount-1)+1
	var newString = soundString + string(soundVariant);
	return audio_play_sound(asset_get_index(newString), 1, false, gain*global.soundfx*global.volume);
}
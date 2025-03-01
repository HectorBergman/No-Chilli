function playOneOfSeveral(soundString, amount, gain = 1){
	var soundVariant = irandom(amount-1)+1
	var newString = soundString + string(soundVariant);
	return audio_play_sound(asset_get_index(newString), 1, false, gain*global.soundfx*global.volume);
}

function playOneOfSeveralLocation(soundString, amount, gain = 1, _x = 0, _y = 0){
	var soundVariant = irandom(amount-1)+1
	var newString = soundString + string(soundVariant);
	return audio_play_sound_at(asset_get_index(newString), -_x, -_y, 0, 200, 400, 1, 0, 0, gain*global.soundfx*global.volume);
}

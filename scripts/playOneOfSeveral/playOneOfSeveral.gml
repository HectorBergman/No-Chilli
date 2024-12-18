function playOneOfSeveral(soundString, amount){
	var soundVariant = irandom(amount-1)+1
	var newString = soundString + string(soundVariant);
	audio_play_sound(asset_get_index(newString), 1, false);
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hotsauce(){
	var collidedHotsauce = instance_place(x, y , object_hotsauce)
	if (collidedHotsauce != noone){
		audio_play_sound(snd_pickupSauce_2, 0, 0, 1, 0, calculatePickupPitch());
		lastPickupTimer += 15;
		scoville += collidedHotsauce.scoville
		scovilleSpeed += collidedHotsauce.scovilleSpeedAdder;
		decreaseTimer = decreaseTime;
		instance_destroy(collidedHotsauce);
	}
}

function calculatePickupPitch(){
	return (1 + lastPickupTimer/150);
}

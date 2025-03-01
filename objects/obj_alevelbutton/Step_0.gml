/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, chiliman) && !pressed){
	audio_play_sound(snd_button_push, 0, 0, global.soundfx*global.volume);
	image_index = 1;
	cuckooStruct = {
		timer : doorTime,
		button : id,
		theDoor : doorInstance,
	}
	cuckoo = instance_create_depth(self.x, self.y, -40, obj_cuckoo, cuckooStruct)
	pressed = true;
	doorInstance.startRising = true;

	
}else if (place_meeting(x, y, chiliman) && pressed && !cuckoo.doorLowered){
	cuckoo.animationTimer = cuckoo.animationTime;
	cuckoo.timer = doorTime;
}



if (!pressed){
	image_index = 0;
}
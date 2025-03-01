/// @description Insert description here
// You can write your code in this editor


rising = false;
startRising = false;
riseStart = 0;

lowering = false;
startLowering = false;
lowerStart = 0;

msPerRisingFrame = 75;
msPerLoweringFrame = 100;

hitboxStruct = {
	sprite : spr_door_hitbox,
	parent : id,
	push : push,
}
instance_create_depth(self.x, self.y, 30, obj_door_HITBOX, hitboxStruct)

function rise(){
	if (startRising){
		riseStart = get_timer()/1000
		startRising = false;
		rising = true;
	}
	var currentTime = get_timer()/1000 - riseStart
	if (rising){
		
		if (currentTime > msPerRisingFrame){
			riseStart = get_timer()/1000
			image_index += 1;
			if (image_index == 10){
				rising = false;
			}
		}
	}
	
}

function lower(){
	if (startLowering){
		
		lowerStart = get_timer()/1000
		startLowering = false;
		lowering = true;
	}
	var currentTime = get_timer()/1000 - lowerStart
	if (lowering){
		
		if (currentTime > msPerLoweringFrame){
			lowerStart = get_timer()/1000
			image_index -= 1;
			if (image_index == 0){
				lowering = false;
			}
		}
	}
}

for(var i = 0; i < 999; i += 1){
	button = instance_find(obj_alevelbutton, i);
	if (button == noone){
		show_debug_message("fml") //forgor how to make custom exceptions in gms2
		return;
	}else if (button.door == doorNumber){
		button.doorInstance = id;
		return;
	}
}





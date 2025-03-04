depth = 70
switched = false;
function defineSprite(){
	if type == 0{
		sprite_index = spr_signLeft
	}else if type == 1{
		sprite_index = spr_signDown
	}else if type == 2{
		sprite_index = spr_signRight
	}else if type == 4{
		sprite_index = spr_signTurnaround
	}else{
	}
}
defineSprite();
button = noone;
if buttonNumber != -1{
	for(var i = 0; i < 999; i += 1){
		button = instance_find(obj_alevelbutton, i);
		if (button == noone){
			show_debug_message("fml") //forgor how to make custom exceptions in gms2
			return;
		}else if (button.door == buttonNumber){
			return
		}
	}
}
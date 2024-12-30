/// @description Insert description here
// You can write your code in this editor
if (abs(x-chiliman.x) > 16){
	image_xscale = sign(x - chiliman.x);
}
found = collision_rectangle(x-40, y+20, x+40, y-10, object_player, false, true);
if (found != noone && !instance_exists(obj_textboxl) && (!(chiliman.state == states.mach)  || !funnymode)){
	var textstruct = {
		boxText : text
	}
	createdText = instance_create_depth(0,0,-999, obj_textboxl, textstruct)
}else if(found != noone && !instance_exists(obj_textboxl) && funnymode && chiliman.state == states.mach){
	var textstruct = {
		boxText : "YOUCANSTOPBYLETTINGGOOFFSHIF-"
	}
	createdText = instance_create_depth(0,0,-999, obj_textboxl, textstruct)
}else if(found = noone && instance_exists(obj_textboxl)){
	instance_destroy(createdText);
	
}
	
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hotsauce(){
	var collidedHotsauce = instance_place(x, y , object_hotsauce)
	if (collidedHotsauce != noone){
		scoville += collidedHotsauce.scoville
		instance_destroy(collidedHotsauce);
	}
}



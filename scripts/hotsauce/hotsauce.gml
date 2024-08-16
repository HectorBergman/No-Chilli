// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hotsauce(){
	var collidedHotsauce = instance_place(x, y , object_hotsauce)
	if (collidedHotsauce != noone){
		scoville += collidedHotsauce.scoville
		instance_destroy(collidedHotsauce);
	}
}


function scovilleSpeedCalculator(){
	scovilleSpeed = sqrt(sqrt(scoville/3000)); //this sets 1,5 mill scoville at a little over 2x speed
}
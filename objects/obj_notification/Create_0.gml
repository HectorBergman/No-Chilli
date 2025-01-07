/// @description Insert description here
// You can write your code in this editor
cam = instance_find(object_zcamera, 0);
image_xscale = 2.5 - 0.0015625*cam.camWidth
image_yscale = 2.5 - 0.00277778*cam.camHeight

offset = 35;


function determineTruOffset(offset, angle){
	var x_offset = 0;
	var y_offset = 0;
	if (angle == 0){
		y_offset = -offset
	}else if(angle == 90){
		x_offset = -offset
	}else if(angle == 180){
		y_offset = offset
	}else if(angle == 270){
		x_offset = offset
	}else if (angle == 45){
		x_offset = -offset*0.7071;
		y_offset = -offset*0.7071;
	}else if (angle == 135){
		x_offset = -offset*0.7071;
		y_offset = offset*0.7071;
	}else if (angle == 225){
		x_offset = offset*0.7071;
		y_offset = offset*0.7071;
	}else if (angle == 315){
		x_offset = offset*0.7071;
		y_offset = -offset*0.7071;
	}
	return [x_offset, y_offset];
}
/// @description Insert description here
// You can write your code in this editor

//The offsets for where the arm will be when hanging on
armX = -8
armY = 32


if (held){
	//offsetting the angle since on the sprite the hand is turned 45 deg
	var startangle = -45;


	var a = chiliman.x + armX - self.x
	var b = chiliman.y + armY - self.y
	var c = sqrt((power(a,2) + power(b,2)))


	//code for the ring to track when attached
	if (a < 0){
		if (b < 0){
			//4 quadrant
			angle = radtodeg(arccos(abs(b)/c)) + 270 + startangle 
			image_angle = angle
		}else{
			//1 quadrant
			angle = radtodeg(-arccos(abs(b)/c)) + 90 + startangle
			image_angle = angle
		}
	}
	else{
		if (b < 0){
			//3 quadrant
			angle = radtodeg(-arccos(abs(b)/c)) + 270 + startangle
			image_angle = angle;
			//quadrant 1 and 3 math makes no sense but it works so lol
		}else{
			//2 quadrant
			angle = radtodeg(arccos(abs(b)/c)) + 90 + startangle
			image_angle = angle;
		}
	}
}else{
	instance_destroy(arm);
}


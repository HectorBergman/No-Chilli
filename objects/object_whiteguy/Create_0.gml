//speed at which whiteguy will approach target point
approachSpeed = 0;

approachPointIndex = 0;
//x and y of target point
targetX = 0
targetY = 0

//distance from target point and whiteguy pos
distanceX = 0;
distanceY = 0

//how much you should go on the y axis and how much on the x axis, basically
//its how much further away X is from Y and vice versa
ratioX = 1
ratioY = 1

done = false;

collided = noone;

//approachSpeed *scoville
truSpeed = 0;

collisionStruct = {
	parent: id,
}
collision = instance_create_depth(self.x, self.y, -1, object_whiteGuy_collision, collisionStruct)



function facingLogic(){
	if (sign(ratioX) != 0){
		image_xscale = sign(ratioX)*abs(image_xscale)
	}

	if (abs(ratioX)+0.1 >= abs(ratioY)){ //slight bias towards facing the x-direction
		image_angle = 0
	
	}else{
		if (sign(ratioY) == 1){
			image_angle = -90*sign(image_xscale);
		}else{
			image_angle = 90*sign(image_xscale);
		}
	}
}
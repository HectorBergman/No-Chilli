// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStartSwing(ring){
	if(image_xscale == 1){
		ropeX = x-8;
		ropeY = y+30;
	}else{
		ropeX = x-3;
		ropeY = y+32;
	}
	
	handX = ring.x + 15 * cos(-degtorad(ring.angle)+125*pi/180)
	handY = ring.y + 15 * sin(-degtorad(ring.angle)+125*pi/180)
	//show_debug_message(string_concat("ropeX: ",ropeX))
	//show_debug_message(string_concat("ropeY: ",ropeY))

	ropeAngle = point_direction(handX, handY, ropeX, ropeY);
	ropeLength = point_distance(handX, handY, ropeX, ropeY);
	ropeAngleVelocity = 0//(sign(horizontalSpeed)*sqrt(abs(horizontalSpeed)) + ((-2*(x > handX))+1)*
	//sign(verticalSpeed)*sqrt(abs(verticalSpeed)))/ropeLength*8;
	
	
	
}

function playerSwing(_player){	
	//shoulderX = currentRing.arm.shoulderX;
	//shoulderY = currentRing.arm.shoulderY;
	var _ropeAngleAcceleration = ropeAccelerationRate * dcos(ropeAngle);
	_ropeAngleAcceleration += (moveRight - moveLeft) * ropeManualAcceleration
	ropeAngleVelocity += _ropeAngleAcceleration;
	
	
	ropeAngle += ropeAngleVelocity;
	ropeAngleVelocity *= 0.99;  //dampening
	
	ropeX = handX + lengthdir_x(ropeLength, ropeAngle);
	ropeY = handY + lengthdir_y(ropeLength, ropeAngle);
	
	
	
	if(image_xscale == 1){
		horizontalSpeed = ropeX - x+8;
		verticalSpeed = ropeY - y-30;
	}else{
		horizontalSpeed = ropeX - x+3;
		verticalSpeed = ropeY - y-32;
	}

	show_debug_message("_______________")
	show_debug_message(string_concat("handX: ",handX))
	show_debug_message(string_concat("handY: ",handY))
	show_debug_message(string_concat("shoulderX: ",shoulderX))
	show_debug_message(string_concat("shoulderY: ",shoulderY))
	show_debug_message(string_concat("ropeAngleVelocity: ",ropeAngleVelocity))
	show_debug_message(string_concat("ropeAngle: ",ropeAngle))
	show_debug_message(string_concat("ropeLength: ",ropeLength))
	show_debug_message(string_concat("ropeAccelerationRate: ",ropeAccelerationRate))
	show_debug_message(string_concat("ropeManualAcceleration: ",ropeManualAcceleration))
	show_debug_message(string_concat("ropeX: ",ropeX))
	show_debug_message(string_concat("ropeY: ",ropeY))
	show_debug_message(string_concat("X: ", x))
	show_debug_message(string_concat("Y: ", y))
	show_debug_message(string_concat("horizontalSpeed: ", horizontalSpeed))
	show_debug_message(string_concat("verticalSpeed: ", verticalSpeed))

	
}
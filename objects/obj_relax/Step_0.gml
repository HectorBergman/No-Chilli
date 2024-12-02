

mouseHorizontalSpeed = mouse_x-prevMouseX
mouseVerticalSpeed = mouse_y-prevMouseY
verticalSpeed += grav

if (place_meeting(x, y, obj_relaxWater))
{
	if (liquidTouchCounter == 0){
		surface_y = y
	}
	verticalSpeed -= 0.1 + -(surface_y - y)/100
	liquidTouchCounter++;
    verticalSpeed *= 0.98
	horizontalSpeed *= 0.975
	
}else{
	liquidTouchCounter = 0;
	verticalSpeed *= 0.995
	horizontalSpeed *= 0.995
}

if instance_position(mouse_x, mouse_y, self){
	var newHSpeed = sign(mouseHorizontalSpeed)*sqrt(abs(mouseHorizontalSpeed))*2;
	var newVSpeed = sign(mouseVerticalSpeed)*sqrt(abs(mouseVerticalSpeed))*1.8;
	horizontalSpeed = newHSpeed;
	verticalSpeed = newVSpeed
}

relaxoHorizontalCollision();
relaxoVerticalCollision()


y += verticalSpeed
x += horizontalSpeed;


prevMouseX = mouse_x;
prevMouseY = mouse_y;

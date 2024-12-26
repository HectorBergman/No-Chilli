/// @description Insert description here
// You can write your code in this editor
PAUSE

facingLogic();
show_debug_message(done);
truSpeed = approachSpeed*chiliman.scovilleSpeed
if ((x != targetX || y != targetY) && !done){
	show_debug_message("targetX: " + string(targetX) + " x: " + string(x))
	show_debug_message("targetY: " + string(targetY) + " y: " + string(y))
	distanceX = targetX - x
	distanceY = targetY - y
	if (!(distanceX == 0) || !(distanceY == 0)){ //me no likey division by 0
		ratioX = distanceX/(abs(distanceX)+abs(distanceY))
		ratioY = distanceY/(abs(distanceX)+abs(distanceY))
	}else{
		ratioX = 1
		ratioY = 1
	}
	if (abs(distanceX) < truSpeed*ratioX){
		x = targetX
	}else{
		x = x + truSpeed*ratioX
	}
	if (abs(distanceY) < truSpeed*ratioY){
		y = targetY
	}else{
		y = y + truSpeed*ratioY
	}
	show_debug_message(ratioX);
}else{
	if (approachPointIndex+1 < array_length(approachPoints)){
		show_debug_message(approachPointIndex+1)
		show_debug_message(array_length(approachPoints))
		approachPointIndex++
		targetX = approachPoints[approachPointIndex].x
		targetY = approachPoints[approachPointIndex].y
		approachSpeed = approachPoints[approachPointIndex].approachSpeed
		
	}else{
		done = true;
	}
}

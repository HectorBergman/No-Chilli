/// @description Insert description here
// You can write your code in this editor
PAUSE
show_debug_message(image_index);
if (floor(image_index) % 18 == 17 && !bit){
	show_debug_message("hi");
	biteAudio = playOneOfSeveralLocation("snd_bite", 5, 1, x, y);
	bit = true;
}
if (floor(image_index) % 18 == 0){
	bit = false;
}
facingLogic();

truSpeed = approachSpeed*chiliman.scovilleSpeed
if ((x != targetX || y != targetY) && !done){

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

}else{
	if (approachPointIndex+1 < array_length(approachPoints)){

		approachPointIndex++
		targetX = approachPoints[approachPointIndex].x
		targetY = approachPoints[approachPointIndex].y
		approachSpeed = approachPoints[approachPointIndex].approachSpeed
		
	}else{
		done = true;
	}
}

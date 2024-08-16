// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateSpeed(){
	scovilleSpeedCalculator();
	walkSpeed = baseSpeed*scovilleSpeed
	mach1Speed = walkSpeed + 3*scovilleSpeed;
	mach2Speed = mach1Speed + 2*scovilleSpeed;
	if (scovilleSpeed/2 > 1){
		playerGrav = baseGrav*scovilleSpeed/2; //TODO: also update slowfall
		offLikeAShotSpeed = baseOLSSpeed*scovilleSpeed/2;
		mediumFall = baseMediumFall*scovilleSpeed/2;
		maxFall = baseMaxFall*scovilleSpeed/2;
	}
	if (scovilleSpeed/3 > 1){
		jumpSpeed = baseJumpSpeed*scovilleSpeed/3;
	}
}

function resetSpeed(){
	walkSpeed = baseSpeed;
	mach1Speed = walkSpeed + 3;
	mach2Speed = mach1Speed + 2;
	playerGrav = baseGrav;
	offLikeAShotSpeed = baseOLSSpeed;
	scoville = 3000;
	scovilleSpeed = 1;
}
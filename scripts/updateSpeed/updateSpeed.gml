// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateSpeed(){
	scovilleSpeedCalculator();
	walkSpeed = baseSpeed*scovilleSpeed
	mach1Speed = walkSpeed + 3*scovilleSpeed;
	mach2Speed = mach1Speed + 6*scovilleSpeed;
	offLikeAShotSpeed = baseOLSSpeed*scovilleSpeed*1.2;
	
		playerGrav = baseGrav*sqrt(scovilleSpeed)
		
		mediumFall = baseMediumFall*scovilleSpeed
		maxFall = baseMaxFall*scovilleSpeed
		jumpSpeed = baseJumpSpeed*sqrt(scovilleSpeed)
	
	
	switch(state){
		case states.normal: 
			scovilleSpriteSpeed(defaultSpriteSpeedWalk);
		break;
		case states.mach: 
			scovilleSpriteSpeed(defaultSpriteSpeedMach1);
		break;
		default: 
			scovilleSpriteSpeed(defaultSpriteSpeedWalk);
		break;
	}
	if (instance_exists(object_whiteGuy)){
		object_whiteGuy.path_speed = 5*scovilleSpeed
		sprite_set_speed(sprite_whiteGuy, 10*sqrt(scovilleSpeed), spritespeed_framespersecond)
		
	}
	//show_debug_message(string(scovilleSpeed));
}

function scovilleSpeedCalculator(){
	scovilleSpeed = sqrt(sqrt(sqrt(scoville/3000))); //this sets 1,5 mill scoville at a little over 2x speed
}

function scovilleSpriteSpeed(usedSpriteSpeed)
{
		spriteSpeed = usedSpriteSpeed* scovilleSpeed
	
}

function resetSpeed(){
	walkSpeed = baseSpeed;
	mach1Speed = walkSpeed + 3;
	mach2Speed = mach1Speed + 2;
	playerGrav = baseGrav;
	offLikeAShotSpeed = baseOLSSpeed;
	scoville = 3000;
	scovilleSpeed = 1;
	object_whiteGuy.path_speed = 5;
}
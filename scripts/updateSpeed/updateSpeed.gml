// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateSpeed(){
	scovilleOvertimeLowerer();
	scovilleSpeedCalculator();
	//normal + mach
	walkSpeed = baseSpeed*scovilleSpeed
	mach1Speed = walkSpeed + mach1SpeedBonus*scovilleSpeed;
	mach2Speed = mach1Speed + mach2SpeedBonus*scovilleSpeed;
	offLikeAShotSpeed = baseOLSSpeed*scovilleSpeed*1.2;
	
	//bounce horizontal + startup
	bounceOneMaxHorizontalSpeed = baseBounceOneMaxHorizontalSpeed*scovilleSpeed;
	bounceTwoMaxHorizontalSpeed = baseBounceTwoMaxHorizontalSpeed*scovilleSpeed;
	bounceSpeedAdder = baseBounceSpeedAdder*scovilleSpeed;
	startUpIncrement = baseStartUpIncrement*scovilleSpeed;
	bounceSpeedAdder = baseBounceSpeedAdder*scovilleSpeed;
	bounceOneBounceOffWallHorizontalSpeed = baseBounceOneBounceOffWallHorizontalSpeed*scovilleSpeed;
	bounceTwoBounceOffWallHorizontalSpeed = baseBounceTwoBounceOffWallHorizontalSpeed*scovilleSpeed;
	bounce2SpeedLowerLimit = baseBounce2SpeedLowerLimit*scovilleSpeed;
	
	//bounce vertical
	secondBounceVertical = baseSecondBounceVertical*sqrt(scovilleSpeed);
	initialBounceVertical = baseInitialBounceVertical*sqrt(scovilleSpeed);
	bounceGrav = baseBounceGrav*sqrt(scovilleSpeed);

	
	//normal vertical
	playerGrav = baseGrav*sqrt(scovilleSpeed)
	mediumFall = baseMediumFall*scovilleSpeed
	maxFall = baseMaxFall*scovilleSpeed
	jumpSpeed = baseJumpSpeed*sqrt(scovilleSpeed)
	turnGrav = baseTurnGrav*sqrt(scovilleSpeed);
	
	audio_sound_pitch(snd_walk, sqrt(scovilleSpeed));
	
	switch(state){
		case states.normal: 
			scovilleSpriteSpeed(defaultSpriteSpeedWalk);
		break;
		case states.mach: 
			scovilleSpriteSpeed(defaultSpriteSpeedMach1);
		break;
		default:
			scovilleSpriteSpeed(defaultSpriteSpeedMach1);
		break;
	}
	if (instance_exists(object_whiteGuy)){
		object_whiteGuy.path_speed = 5*scovilleSpeed
		sprite_set_speed(sprite_whiteGuy, 10*sqrt(scovilleSpeed), spritespeed_framespersecond)
		
	}
	//show_debug_message(string(scovilleSpeed));
}

function scovilleSpeedCalculator(){
	//scovilleSpeed = sqrt(sqrt(sqrt(scoville/3000))); //this sets 1,5 mill scoville at a little over 2x speed
}

function scovilleSpriteSpeed(usedSpriteSpeed)
{
		spriteSpeed = usedSpriteSpeed* scovilleSpeed
	
}

function scovilleOvertimeLowerer(){
	decreaseTimer--;
	if (decreaseTimer < 1){
		scoville -= scovilleLoweringAmount;
		if (scoville < scovilleLowest){
			scoville = scovilleLowest;
		}
	}
}

function resetSpeed(){
	scoville = 3000;
	scovilleSpeed = 1;
}
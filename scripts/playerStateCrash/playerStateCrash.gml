// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerStateCrash(){
	if (crashTimer-- == crashTime-1){
		horizontalSpeed = crashSpeed;
		verticalSpeed = crashHeight;
		if (!specialCrash){
			if (crashLoop == noone){
				crashLoop = audio_play_sound(snd_dizzy, 1, true)
			}
	
			
			if (crashTimer > 65){
				audio_play_sound(snd_crash_mega1, 1, false);
			}else if (crashTimer > 48){
				playOneOfSeveral("snd_crash_big", 3)
			}else{
				playOneOfSeveral("snd_crash", 2)
			}
		}
	}else if (crashTimer == 0){
		if (!specialCrash){
			dropGips(crashDirection);
		}
		baseGrav = trueBaseGrav;
		state = states.normal;
	}
	playerCheckForOnGround()
	if (onGround-- > 8){
		horizontalSpeed *= 0.95
	}
	playerFall(self);
	playerVerticalCollision(self);
	playerHorizontalCollision(self);
	playerWhiteguyCollision(self);

}

function initiateCrash(timeCrashed, parent){ // timeCrashed <= 0 for automatic crashtime
	crashCount++;
	leftHeldTimer = 0;
	rightHeldTimer = 0;

	if (timeCrashed <= 0){
		crashTime = 20 + abs(floor(horizontalSpeed))*3;
		specialCrash = false;
		crashDirection = sign(horizontalSpeed);
		crashSpeed = -sign(horizontalSpeed)*sqrt(abs(horizontalSpeed));
		crashHeight = -sqrt(abs(horizontalSpeed))*2;
	}
	else{
		crashTime = timeCrashed
		baseGrav = 0.2;
		specialCrash = true;
		crashDirection = sign(parent.horizontalSpeed);
		crashSpeed = parent.horizontalSpeed;
		crashHeight = -sqrt(abs(crashSpeed))*3;
	}

	crashTimer = crashTime
	state = states.crash;
}

function dropGips(theMove){
	for(var i = 1; i <= 4; i += 1){
		gipsStruct =
		{
			//verticalSpeed : verSpeed,
			//horizontalSpeed : horSpeed,
			spriteName: "spr_gips_" + string(i),
			spriteDirection: theMove,
			lifeTime: random_range(500, 900),
		};
		instance_create_depth(x, y, -4-i, object_gips, gipsStruct);
	}
}
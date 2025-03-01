// This is easily the most confusing state, and likely the cause of many bugs. If I could do it
// all over again I would change this 100%, but it's too central to all movement that changing it
// is painful af.
function playerStateMach(){

	timeInMach++
	
	mach = machCalculator()
	
	//if you're both on the ground and turning the opposite direction to the mach direction, skip this if
	
	if !(onGround >= 10 &&  //note to self, do not write !-ifs, they're confusing af
	((moveRight-moveLeft == -machDirection) || moveRight-moveLeft == 0 || 
	!((moveRight-moveLeft) == sign(horizontalSpeed)))){
		//this basically means, if you're on the ground and attempting to turn, skip this if, else, enter the if
		//so if you're in the air, this if will always play.
		runClouds();

		if (!audio_is_playing(snd_trainRun) && onGround > 9){
			audio_play_sound(snd_trainRun,1 ,1, global.soundfx*global.volume*0.5, 0, 1.5)
		}else if (audio_is_playing(snd_trainRun) && onGround < 10){
			audio_stop_sound(snd_trainRun)
		}
	
		determineMove();
		
		//see: script playerMovement
		machHorizontalMovement(self);
		
		if (airTime < 1){
			playerFall(self);
			playerJump(self);
			playerVerticalCollision(self);
		}else if (place_meeting(x, y + 4, obj_trait_landable)){
				airTime = 0;
		}else{
				jumpsLeft = 0;
		}	
		
		airTime--
		
		
		checkForSlide();
		if (place_meeting(x + horizontalSpeed, y, object_wall)){

			if (timeInMach > 20){
				initiateCrash(-99, noone); //these variables mean it will be a regular crash, nothing fancy
			}else{
				returnToNormalStateFromMach();
			}
		}
		//see: script playerCollision
		playerHorizontalCollision(self);
		playerWhiteguyCollision(self);
		playerRingCollision(self);
		testForBounce();
	
		if ((!(_keyShift > 0) || (!(moveLeft) && !(moveRight))) && onGround >= 10){
			
			turn = -sign(horizontalSpeed)
			startTurn(turn, true);	
		}else if (onGround <= 9 && down && diveTimer < 1 && !diveDisabled){
			diveSound = audio_play_sound(snd_dive, 0, 0, global.soundfx*global.volume);
			state = states.dive
			var totalSpeed = ((horizontalSpeed + sign(horizontalSpeed)*abs(verticalSpeed)));
			horizontalSpeed = totalSpeed;
			verticalSpeed = abs(totalSpeed);
		}
		//show_debug_message("rightHeldTimer: " + string(rightHeldTimer));
		//show_debug_message("leftHeldTimer: " + string(leftHeldTimer));
	}else{
		if (run){
			dropShiftTurn = false;
		}else{
			dropShiftTurn = true;
		}
		determineTurnDirectionAndTurn(true);
	}
}

function determineMachLevel(){
}

function machLogic(){
}
function determineTurnDirectionAndTurn(half){
	if (half){
		turn = -sign(horizontalSpeed);
	}else{
		turn = -sign(horizontalSpeed);//this is stupid
	}
	if (half || !turnDisabled){
		startTurn(turn, half);
	}else{
		startTurn(turn, true);
	}
}

function runClouds(){
	cloudTimer++;
	if abs(horizontalSpeed) >= 10{
		var cloudOccurenceRate = cloudTimer % 1 == 0
	}else if abs(horizontalSpeed) >= 9{
		var cloudOccurenceRate = cloudTimer % 2 == 0
	}else if abs(horizontalSpeed) >= 8{
		var cloudOccurenceRate = cloudTimer % 3 == 0
	}else if abs(horizontalSpeed) >= 7{
		var cloudOccurenceRate = cloudTimer % 5 == 0
	}else{
		var cloudOccurenceRate = false;
	}
	if cloudOccurenceRate && onGround == 10 && place_meeting(x, y+2, object_wall){
		cloudsStruct =
		{
			//verticalSpeed : verSpeed,
			//horizontalSpeed : horSpeed,
			lifeTime: random_range(20, 70),
			
			spriteNumber : random_range(0,5),
		};
		instance_create_depth(x, y+76, 70, object_runClouds, cloudsStruct);
	}
}

function returnToNormalStateFromMach(){
	horizontalSpeed = 0;
	downPressed = false;
	rightHeldTimer = 0;
	leftHeldTimer = 0;
	state = states.normal;
}
	
/// @description Insert description here
// You can write your code in this editor
timer = 0;
image_xscale = 3;
image_yscale = 3;
x = 0
y = 0
previousAngle = -75;
angleJump = 2;

pulse = 1;
function needleAngle(_x){
	//lagrange formula/revealed to me in a dream
	//_x is abs of horizontalSpeed
	if (_x > 30){
		_x = 30;
	}
	var desiredAngle = -(power(_x, 6) / 562500) + (power(_x, 5) / 6250) - (23 * power(_x, 4) / 4500) + (power(_x, 3) / 15) - (61 * power(_x, 2) / 225) + (67 * _x / 30) - 75
	return desiredAngle
	
	

}

function approachCorrectAngle(currentAngle, desiredAngle){
	
	
	if ((abs(currentAngle)-abs(desiredAngle)) < angleJump && (abs(desiredAngle)-abs(currentAngle)) < angleJump ){
		currentAngle = desiredAngle;
	}else{
		currentAngle += sign(abs(currentAngle)-abs(desiredAngle))*angleJump
		//instead of the needle immediately jumping to the desired angle, 
		//it will increment the angle until it's close enough.
	}
	return currentAngle
}

function getNewAngle(){
	var desiredAngle = needleAngle(abs(chiliman.horizontalSpeed))
	previousAngle = approachCorrectAngle(previousAngle, desiredAngle);
	
	var returnAngle = previousAngle
	if (abs(chiliman.horizontalSpeed) != 0){
		returnAngle += sin (0.1 * timer) + sin(pi*0.05 * timer)*0.4 *sqrt(abs(chiliman.horizontalSpeed))
		//this is apparently aperiodic, and we use it as noise to make the speedometer
		//appear to be more realistic, and not stay static on a single value, but sway a little
	}
	
	return returnAngle
}

function lowerPulse(){
	if pulse != 1{
		if pulse > 1.02{
			if pulse > 1.1{
				pulse *= 0.96
			}else{
				pulse *= 0.99
			}
		}else{
			pulse = 1;
		}
	}
}

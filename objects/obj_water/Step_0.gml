/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i <= springCount; i++){
	var _a = -k * springs[i] - d * springsVelocity[i];
	springsVelocity[i] += _a;
	springs[i] += springsVelocity[i];
}

for (var i = 0; i <= springCount; i++){
	if (i > 0){
		springDeltaL[i] = spread * (springs[i] - springs[i-1]);
		springsVelocity[i-1] += springDeltaL[i];
	}
	if (i < springCount){
		springDeltaR[i] = spread * (springs[i] - springs[i+1]);
		springsVelocity[i+1] += springDeltaR[i];
	}
}

for (var i = 0; i <= springCount; i++){
	if (i > 0){
		springs[i-1] += springDeltaL[i]
	}
	if(i < springCount){
		springs[i+1] += springDeltaR[i]
	}
}

//Put in step
if place_meeting(x,y,relaxDude) and meeting == false {


	springs[(round(-((x-relaxDude.x))/waterDivision))] -= 20+relaxDude.verticalSpeed; //Make water fall down when colide
	springsVelocity[(round(-((x-relaxDude.x))/waterDivision))] -= 10+relaxDude.verticalSpeed; //Changes waves speed 

	spread = 0.25; //Waves Spread

	meeting = true;
} else {
	meeting = false;
}
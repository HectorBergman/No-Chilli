/// @description Insert description here
// You can write your code in this editor
if (verticalSpeed > -verticalSpeedCap && random_range(0,20) > 12){
	verticalSpeed -= random(0.02);
}
if (random_range(0,20) > 16){
	verticalSpeed += random(0.02);
}


y = y + verticalSpeed


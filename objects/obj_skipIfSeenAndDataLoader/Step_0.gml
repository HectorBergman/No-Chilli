/// @description Insert description here
// You can write your code in this editor

startingTimer--
holdTimer--
if (startingTimer < 0 && holdTimer < 0){
	timer--
}
if (timer == 0 && holdTimer <= -10){
	holdTimer = timerLength*2
}
if (timer < 0){
	tipText.out(6, 999);
}

if keyboard_check(vk_space) && skippable {
	room_goto(rm_title_test)
}
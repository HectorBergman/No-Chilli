/// @description Insert description here
// You can write your code in this editor
if (stage == 0){
	chiliman.dashDisabled = true;
	chiliman.turnDisabled = true;
	chiliman.diveDisabled = true;
	chiliman.wallBounceDisabled = true;
}else if (stage == 1){
	chiliman.dashDisabled = true;
	chiliman.turnDisabled = false;
	chiliman.diveDisabled = true;
	chiliman.wallBounceDisabled = true;
}else if (stage == 2){
	chiliman.dashDisabled = false;
	chiliman.turnDisabled = false;
	chiliman.diveDisabled = true;
	chiliman.wallBounceDisabled = true;
}else if (stage == 3){
	chiliman.dashDisabled = false;
	chiliman.turnDisabled = false;
	chiliman.diveDisabled = true;
	chiliman.wallBounceDisabled = false;
}else if (stage == 4){
	chiliman.dashDisabled = false;
	chiliman.turnDisabled = false;
	chiliman.diveDisabled = false;
	chiliman.wallBounceDisabled = false;
}
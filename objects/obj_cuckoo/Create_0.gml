/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
progress = 0;
pendulumStruct = {
	parent : self
}
pendulum = instance_create_depth(self.x, self.y, -30, obj_cuckoo_pendulum, pendulumStruct)

doorLowered = false;
starttime = timer;

x = chiliman.x
y = chiliman.y

animationTime = 6;
animationTimer = animationTime;


function gib(){
	remainsStruct = {
		sprite : spr_cuckoobody,
		verticalSpeed : random_range(-2,-6),
		horizontalSpeed : random_range(-5, 1),
		lifeTime : random_range(500,1000),
			
	}
	instance_create_depth(self.x, self.y, -30, obj_cuckooremains, remainsStruct)
	remainsStruct = {
		sprite : spr_cuckoohead,
		verticalSpeed : random_range(-2,-6),
		horizontalSpeed : random_range(-1, 5),
		lifeTime : random_range(750,1250),
	}
	instance_create_depth(self.x, self.y, -30, obj_cuckooremains, remainsStruct)
	for(var i = 0; i < floor(random_range(1,3)); i += 1){
		
		remainsStruct = {
			sprite : spr_spring,
			verticalSpeed : random_range(-2,-6),
			horizontalSpeed : random_range(-4, 4),
			lifeTime : random_range(2500,5000),
		}
		instance_create_depth(self.x, self.y, -30, obj_spring, remainsStruct)
	}
	for(var i = 0; i < 6; i += 1){
		if (random_range(0,1) > 0.3){
			remainsStruct = {
				sprite : "spr_cuckooparts_",
				spriteNumber :  i+1,
				verticalSpeed : 0,
				spin : random_range(-2, 2),
				horizontalSpeed : random_range(-1, 1),
				lifeTime : random_range(325,750),
			}
			instance_create_depth(self.x, self.y, random_range(-35, -25), obj_cuckooparts, remainsStruct)
		}
		
	}
}
/// @description Insert description here
// You can write your code in this editor
PAUSEVARS
pendulumStruct = {
	parent : self
}
pendulum = instance_create_depth(self.x, self.y, -30, obj_cuckoo_pendulum, pendulumStruct)

show_debug_message(self);

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
		lifeTime : random_range(1000,2000),
			
	}
	instance_create_depth(self.x, self.y, -30, obj_cuckooremains, remainsStruct)
	remainsStruct = {
		sprite : spr_cuckoohead,
		verticalSpeed : random_range(-2,-6),
		horizontalSpeed : random_range(-1, 5),
		lifeTime : random_range(1500,2500),
	}
	instance_create_depth(self.x, self.y, -30, obj_cuckooremains, remainsStruct)
	remainsStruct = {
		sprite : spr_spring,
		verticalSpeed : random_range(-1,-2),
		horizontalSpeed : random_range(2, 2),
		lifeTime : random_range(1000,5000),
	}
	instance_create_depth(self.x, self.y, -30, obj_spring, remainsStruct)
}
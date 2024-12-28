/// @description Insert description here
// You can write your code in this editor

PAUSE
collided = instance_place(x, y, object_wall);
if (collided != noone && object_get_parent(collided.object_index) != obj_ovenfamily){ //&& collided != chiliman && collided.object_index != object_debris) {
	objectEaten(collided);
	instance_destroy(collided);
	collided = noone;
}

collided = instance_place(x,y, obj_aspargusSpear);
if (collided != noone){
	objectEaten(collided);
	instance_destroy(collided);
	collided = noone;
}

collided = instance_place(x,y, obj_trait_landable);
if (collided != noone){
	objectEaten(collided);
	instance_destroy(collided);
	collided = noone;
}
image_xscale = parent.image_xscale;
image_angle = parent.image_angle;
x = parent.x
y = parent.y
image_index = parent.image_index;
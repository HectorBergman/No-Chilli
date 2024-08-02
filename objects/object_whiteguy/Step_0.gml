/// @description Insert description here
// You can write your code in this editor
collided = instance_place(x, y, object_wall);
if (collided != noone){ //&& collided != chiliman && collided.object_index != object_debris) {
	objectEaten(collided);
	instance_destroy(collided);
	collided = noone;
}

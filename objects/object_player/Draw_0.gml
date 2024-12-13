/// @description Insert description here
// You can write your code in this editor
if (state != states.dead){ 
	draw_self();
}
draw_rectangle_color(handX-1, handY-1, handX+1, handY+1, c_blue, c_blue, c_blue, c_blue, false);
draw_rectangle_color(ropeX-1, ropeY-1, ropeX+1, ropeY+1, c_blue, c_blue, c_blue, c_blue, false);
//draw a blue rectangle at start and end points of rope


//debug numbers

draw_text(x-20, y, string(horizontalSpeed)); //display horizontal speed
draw_text(x+20, y, string(verticalSpeed));

//draw_rectangle_color(x-1, y-1, x+1, y+1, c_green, c_green, c_green, c_green, false);
//draw a green rectangle at players true X and Y
if (switched && elapsed_time >= desired_time-time2fade){ //roomtransition fade
	var coolThing = ((time2summon - sign(newTimer)*newTimer)/time2summon)
	draw_set_alpha(coolThing);
	draw_rectangle_colour(0, 0, 9999, 9999, fadeColor, fadeColor, fadeColor, fadeColor, false);
	draw_set_alpha(1);
}
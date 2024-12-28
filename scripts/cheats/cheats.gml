// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cheats(){


	//the event to check what cheat string is entered (most likely on enter pressed key)
	cheat_code = keyboard_string;
	var last_five = string_copy(cheat_code, string_length(cheat_code) - 4, 5);
	switch(last_five)
	{
	    case "haaax":
	        state = states.hax
			show_debug_message("HAAAAAAAAAAAAAX!")
	    break;

	   default: break;
	}
}



draw_set_halign(fa_center);
draw_self();
var _time = variable_struct_get(global.game_data, levelname)
if (!is_undefined(_time)){
	draw_text_transformed(x+16, y-50, _time, 2, 2, 0);
}
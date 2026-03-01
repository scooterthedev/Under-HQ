draw_set_font(-1)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text(16, 16, "Lives: " + string(global.lives))

if (game_over) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_colour(c_yellow)
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Good Game!")
}

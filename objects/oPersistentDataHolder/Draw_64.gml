/// @description Draw pause screen

if (global.isPaused) {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, w, h, 0);
	draw_set_halign(fa_center);
	draw_set_font(fMenu);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(w_half, h_half, "GAME PAUSED");

	draw_text(w_half, h_half + 50, pauseMenuCursor == 0 ? string_insert("> ", pauseMenuItems[0], 0) : pauseMenuItems[0]);
	draw_text(w_half, h_half + 100, pauseMenuCursor == 1 ? string_insert("> ", pauseMenuItems[1], 0) : pauseMenuItems[1]);
}

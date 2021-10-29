/// @description Draw pause screen

if (global.isPaused) {
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(fMenu);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(room_width / 2, room_height / 2, "GAME PAUSED");

	draw_text(room_width / 2, room_height / 2 + 50, pauseMenuCursor == 0 ? string_insert("> ", pauseMenuItems[0], 0) : pauseMenuItems[0]);
	draw_text(room_width / 2, room_height / 2 + 100, pauseMenuCursor == 1 ? string_insert("> ", pauseMenuItems[1], 0) : pauseMenuItems[1]);
}

/// @description Draw black bars

draw_set_color(c_red);
draw_set_alpha(0.7);
draw_rectangle(0, 0, w, percent * h_half, false);
draw_rectangle(0, h, w, h - (percent * h_half), false);
draw_set_alpha(1);

if (percent == 1) {
	draw_set_font(fMenu);
	
	var text = "You died!";
	var offset = 2;
	draw_set_color(c_black)
	draw_text(w_half-offset, h_half, text);
	draw_text(w_half+offset, h_half, text);
	draw_text(w_half, h_half-offset, text);
	draw_text(w_half, h_half+offset, text);
	draw_set_color(c_white);
	draw_text(w_half, h_half, text);
	
	draw_set_halign(fa_center);
	draw_set_font(fMenu);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(room_width / 2, room_height / 2 + 50, "Press R to restart level");
	draw_text(room_width / 2, room_height / 2 + 100, "Press ESC to return to menu");

	if (keyboard_check_pressed(vk_escape)) {
		SlidesTransition(TRANS_MODE.GOTO, rMenu);
	}
	if (keyboard_check_pressed(ord("R"))) {
		SlidesTransition(TRANS_MODE.RESTART, global.previousLevel);	
	}
}

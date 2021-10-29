/// @description Draw black bars

draw_set_color(c_red);
draw_set_alpha(0.7);
draw_rectangle(0, 0, w, percent * h_half, false);
draw_rectangle(0, h, w, h - (percent * h_half), false);
draw_set_alpha(1);

if (percent == 1) {
	draw_set_font(fMenu);
	
	var text = "You died!\n\nPress ESC to return to menu.";
	var offset = 2;
	draw_set_color(c_black)
	draw_text(w_half-offset, h_half, text);
	draw_text(w_half+offset, h_half, text);
	draw_text(w_half, h_half-offset, text);
	draw_text(w_half, h_half+offset, text);
	draw_set_color(c_white);
	draw_text(w_half, h_half, text);

	if (keyboard_check_pressed(vk_escape)) {
		SlidesTransition(TRANS_MODE.GOTO, rMenu);
	}
}

/// @description Draw black bars

draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(0, 0, w, percent * h_half, false);
draw_rectangle(0, h, w, h - (percent * h_half), false);
draw_set_alpha(1);

if (percent == 1) {
	draw_set_font(fMenu);
	
	var text = "Congratulations!\n\n"
		+ "You have successfully defeated all\n\nyour food demons.\n\n"
		+ "Manhood doesn’t seem that\n\nfar of a reach anymore!\n\n"
		+ "Now it’s time to wake up\n\nand start a new day...";
	var offset = 2;
	var textPosOffset = 180;
	draw_set_color(c_black);
	draw_text(w_half-offset, h_half + textPosOffset, text);
	draw_text(w_half+offset, h_half + textPosOffset, text);
	draw_text(w_half, h_half-offset + textPosOffset, text);
	draw_text(w_half, h_half+offset + textPosOffset, text);
	draw_set_color(c_white);
	draw_text(w_half, h_half + textPosOffset, text);
	
	draw_set_halign(fa_center);
	draw_set_font(fMenu);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(w_half, h_half + textPosOffset + 100, "Press ESC to return to menu");

	if (keyboard_check_pressed(vk_escape)) {
		SlidesTransition(TRANS_MODE.GOTO, rMenu);
	}
}

/// @description Draw menu

draw_set_font(fInstructions);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++) {
	var offset = 2;
	var txt = menu[i];

	var col = c_white;

	var xx = menu_x;
	var yy = menu_y + (menu_itemheight * i * 2);

	draw_set_color(c_black);
	draw_text(xx-offset, yy, txt);
	draw_text(xx+offset, yy, txt);
	draw_text(xx, yy-offset, txt);
	draw_text(xx, yy+offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
}

draw_set_halign(fa_right);
btn_x = gui_width;
btn_y = gui_height - gui_margin;
draw_set_color(c_black);
draw_text(btn_x-2, btn_y, done_btn);
draw_text(btn_x+2, btn_y, done_btn);
draw_text(btn_x, btn_y-2, done_btn);
draw_text(btn_x, btn_y+2, done_btn);
draw_set_color(c_white);
draw_text(btn_x, btn_y, done_btn);
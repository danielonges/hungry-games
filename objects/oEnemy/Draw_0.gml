// @description: Flash enemy
draw_self();
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_font(fHealthEnergy);
draw_set_color(c_black);
draw_text(x, bbox_top - 5, "Health: " + string(hp) + "/" + string(max_hp));

if (flash > 0) {
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}


// @description: Flash enemy
draw_self();
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_color(c_white);

if (state != ENEMYSTATE.DEAD) {
	maxHBarScale =  0.15 * max_hp;
	hBarScale = maxHBarScale * (hp / max_hp);
	yBarScale = 0.25;
	draw_sprite_ext(sEnemyHealthBackground, 0, x, bbox_top - 15, maxHBarScale, yBarScale, 0, c_white, 1);
	draw_sprite_ext(sEnemyHealthBar, 0, x - (maxHBarScale * 64 / 2), bbox_top - 15, hBarScale, yBarScale, 0, c_white, 1);
	draw_sprite_ext(sEnemyHealthBorder, 0, x, bbox_top - 15, maxHBarScale, yBarScale, 0, c_white, 1);
	draw_outlined_text(x, bbox_top - 9, fEnemyHealth, string(hp) + "/" + string(max_hp), 0.07, 1);
}

if (flash > 0) {
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

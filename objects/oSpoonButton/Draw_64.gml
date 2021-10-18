/// @description Draw spoon button as GUI
buttonSize = 60;

// show sprite with green overlay when using spoon
if (oPlayer.state == PLAYERSTATE.ATTACK_SPOON) {
	draw_sprite_stretched(sSpoonUseButton, 0, x, y, buttonSize, buttonSize);
} else {
	draw_sprite_stretched(sSpoonButton, 0, x, y, buttonSize, buttonSize);
}

// draw cooldown animation
if (oPlayer.alarm[0] != -1) {
	originalCooldown = oPlayer.spoon_cooldown * room_speed;
	draw_cooldown(x, y, x + buttonSize, y + buttonSize, 1 - (oPlayer.alarm[0] / originalCooldown));
}

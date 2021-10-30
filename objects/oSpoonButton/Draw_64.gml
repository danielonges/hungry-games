/// @description Draw spoon button as GUI
buttonSize = 75;
yOffset = 5;
yWithOffset = y - yOffset;

// show sprite with green overlay when using spoon
if (oPlayer.state == PLAYERSTATE.ATTACK_SPOON) {
	draw_sprite_stretched(sSpoonUseButton, 0, x, yWithOffset, buttonSize, buttonSize);
} else {
	draw_sprite_stretched(sSpoonButton, 0, x, yWithOffset, buttonSize, buttonSize);
}

// draw cooldown animation
if (oPlayer.alarm[0] != -1) {
	originalCooldown = oPlayer.spoon_cooldown * room_speed;
	draw_cooldown(x, yWithOffset, x + buttonSize, yWithOffset + buttonSize, 1 - (oPlayer.alarm[0] / originalCooldown));
}

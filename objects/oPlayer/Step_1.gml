/// @description Check if player is dead

if (global.hp <= 0) {
	oPlayerDying.is_player_dead = true;
	image_angle = 90;
} else {
	oPlayerDying.is_player_dead = false;
}

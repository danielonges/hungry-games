/// @description Progress the transition

if (global.hp <= 0) {
	is_player_dead = true;	
} else {
	is_player_dead = false;
}

if (is_player_dead) {
	percent = min(1, percent + max(((1 - percent) / 10), 0.005));
} else {
	percent = max(0, percent - max((percent / 10), 0.005));
}
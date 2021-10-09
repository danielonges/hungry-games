/// @description Collide with enemy when attacking
if (state == PLAYERSTATE.ATTACK_SPOON || state == PLAYERSTATE.ATTACK_FORK) {
	with (other) {
		hit_from = sign(x - other.x);
		hsp = 0;
	}
}

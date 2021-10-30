function PlayerState_Attack_Spoon() {
	
	player_movement();
	image_speed = 1;

	// start of attack
	if (sprite_index != player_spoon_sprite) {
		sprite_index = player_spoon_sprite;
		image_index = 0;
		
		ds_list_clear(hitByAttack);
	}

	//// use attack hitbox and check for hits
	mask_index = player_spoon_spriteHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oEnemy, hitByAttackNow, false);
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			// if this instance has not yet been hit by this attack
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with (hitID) {
					EnemyHit(other.spoon_dmg);
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = player_sprite;
	
	if (animation_end()) {
		sprite_index = player_sprite;
		state = PLAYERSTATE.FREE;
		can_spoon = false;
		alarm[0] = room_speed * spoon_cooldown;
	}
}
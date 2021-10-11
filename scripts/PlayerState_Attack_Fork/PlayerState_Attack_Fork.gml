// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Fork(){
	
	player_movement();
	image_speed = 1;

	// start of attack
	if (sprite_index != sPlayer_Attack_Fork) {
		sprite_index = sPlayer_Attack_Fork;
		image_index = 0;
		
		ds_list_clear(hitByAttack);
	}

	//// use attack hitbox and check for hits
	mask_index = sPlayer_Attack_ForkHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oEnemy, hitByAttackNow, false);
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			// if this instance has not yet been hit by this attack
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with (hitID) {
					// replace with spoon damage
					EnemyHit(other.fork_dmg);
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlayer;
	
	if (animation_end()) {
		sprite_index = sPlayer;
		state = PLAYERSTATE.FREE;
		can_fork = false;
		alarm[1] = room_speed * fork_cooldown;
	}

}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_EnemyProjectile(){
	
	hsp = 0;
	vsp = 0;
	
	image_speed = 1;
	
	if (sprite_index != attacking_sprite) {
		sprite_index = attacking_sprite;
		image_index = 0;
	}
	
	switch (enemy_spawn_generator) {
		case 1:
			enemy_spawn = oCarb_Level2;
			break;
		case 2:
			enemy_spawn = oProtein_Level2;
			break;
		case 3:
			enemy_spawn = oFat_Level2;
			break;
		default:
			enemy_spawn = oFat_Level2;
	}
	
	if (enemy_spawn_generator >= 3) {
		enemy_spawn_generator = 1;
	} else {
		enemy_spawn_generator++;
	}
			
	
	if (animation_end()) {
		with (instance_create_layer(x, y, "Projectile", enemy_spawn)) {
			hsp = sign(other.image_xscale) * 5;
			image_xscale = other.image_xscale;
		}
		sprite_index = default_sprite;
		enemy_projectile_attack = false;
		attack_distance = 10;
		state = ENEMYSTATE.FREE;
	}
}
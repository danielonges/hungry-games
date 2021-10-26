// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_ProjectileAttack(){
	
	hsp = 0;
	vsp = 0;
	
	image_speed = 1;
	
	if (sprite_index != projectile_attack_sprite) {
		sprite_index = projectile_attack_sprite;
		image_index = 0;
	}
	
	if (animation_end()) {
		with (instance_create_layer(x, y, "Projectile", projectile)) {
			speed = 10;
			direction = other.image_xscale > 0 ? 180 : 0;
			image_xscale = other.image_xscale;
		}
		sprite_index = default_sprite;
		state = ENEMYSTATE.FREE;
	}
}
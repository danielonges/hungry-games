// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attacking(){
	
	//if (jump > 0) {
	//	enemy_movement(jump);
	//} else {
	//	enemy_movement();
	//}
	hsp = 0;
	vsp = 0;
	
	image_speed = 1;
	
	// switch sprite index to the attacking one
	if (sprite_index != attacking_sprite) {
		sprite_index = attacking_sprite;
		image_index = 0;
	}
	
	
	
	// using the attack hitbox
	mask_index = attacking_HB;
	
	if (place_meeting(x, y, oPlayer) && !has_hit_player) {
		has_hit_player = true;
		with (oPlayer) {
			PlayerHit(other.attack_dmg);
		}
	}
	
	mask_index = default_sprite;
	
	// use animation end
	if (animation_end() || sprite_get_number(attacking_sprite) == 1) {
		sprite_index = default_sprite;
		alarm[3] = room_speed * attack_cooldown;
		can_attack = false
		state = ENEMYSTATE.FREE;
		has_hit_player = false;
	}
}
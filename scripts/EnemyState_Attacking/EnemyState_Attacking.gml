// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Attacking(){
	
	enemy_movement();
	
	// switch sprite index to the attacking one
	//if (sprite_index != attacking_sprite) {
	//	sprite_index = attacking_sprite;
	//	image_index = 0;
	//}
	
	// using the attack hitbox
	//mask_index = attacking_HB;
	
	if (place_meeting(x, y, oPlayer)) {

		with (oPlayer) {
			// kickback player
			hit_from = sign(x - other.x) * 3;
			global.hp = clamp(global.hp - other.attack_dmg, 0, 30);		
		}
	}
	
	//mask_index = default_sprite;
	
	// use animation end
	//if (animation_end()) {
	//	sprite_index = default_sprite;
	//	state = ENEMYSTATE.FREE;
	//}
	state = ENEMYSTATE.FREE;
}
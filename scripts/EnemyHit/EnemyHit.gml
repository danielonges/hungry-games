// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(_damage){
	
	hp -= _damage;
	flash = 3;
	hit_from = sign(x - oPlayer.x) * 3;
	
	if (hp <= 0 && state != ENEMYSTATE.DEAD) {
		state = ENEMYSTATE.DEAD;
		switch (enemy_type) {
			case ENEMYTYPE.CARB:
				global.energy = clamp(global.energy + max_hp, 0, 30);
				with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
					changeAmt = other.max_hp;
					changeType = CHANGE_TYPE.GAIN_ENERGY;
				}
				break;
			case ENEMYTYPE.BOSS:
			case ENEMYTYPE.PROTEIN:
				global.hp = clamp(global.hp + max_hp, 0, 30);
				with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
					changeAmt = other.max_hp;
					changeType = CHANGE_TYPE.GAIN_HEALTH;
				}
				break;
			case ENEMYTYPE.FAT:
				global.hp = clamp(global.hp + max_hp, 0, 30);
				global.energy = clamp(global.energy + max_hp, 0, 30);
				with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
					changeAmt = other.max_hp;
					changeType = CHANGE_TYPE.GAIN_HEALTH;
				}
				with (instance_create_layer(x, y, "Player", oHealthEnergyFeedback)) {
					changeAmt = other.max_hp;
					changeType = CHANGE_TYPE.GAIN_ENERGY;
				}
				break;
			}
	}
}
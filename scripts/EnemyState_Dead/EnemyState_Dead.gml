// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Dead(enemy_type, max_hp){
	switch (enemy_type) {
		case ENEMYTYPE.FAT:
			global.hp += max_hp;
			break;
		case ENEMYTYPE.PROTEIN:
			global.energy += max_hp;
			break;
		case ENEMYTYPE.CARB:
			global.hp += max_hp;
			break;
	}
}
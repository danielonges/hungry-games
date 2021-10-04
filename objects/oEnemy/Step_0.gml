/// @description Core Player Logic
// You can write your code in this editor

// get player inputs
switch (state) {
	case ENEMYSTATE.FREE:
		EnemyState_Free();
		break;
	case ENEMYSTATE.HIT:
		EnemyState_Hit();
		break;
	case ENEMYSTATE.DEAD:
		EnemyState_Dead(enemy_type, max_hp);
		break;
}
/// @description Core Enemy Logic
if (global.isPaused) { exit; }

// get player inputs
switch (state) {
	case ENEMYSTATE.FREE:
		EnemyState_Free();
		break;
	case ENEMYSTATE.ATTACKING:
		EnemyState_Attacking();
		break;
	case ENEMYSTATE.DEAD:
		EnemyState_Dead();
		break;
}
/// @description

// get player inputs
switch (state) {
	case ENEMYSTATE.FREE:
		EnemyState_Free();
		break;
	case ENEMYSTATE.ATTACKING: {
		if (attack_count < 3) {
			EnemyState_Attacking();
		} else {
			attack_count = 0;
			EnemyState_ProjectileAttack();
		}
		break;
	}
	case ENEMYSTATE.DEAD:
		EnemyState_Dead();
		break;
}

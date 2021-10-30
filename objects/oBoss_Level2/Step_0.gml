/// @description
if (!alarm[9] && !projectile_attack) {
	alarm[9] = room_speed * 8;	
}

// get player inputs
switch (state) {
	case ENEMYSTATE.FREE:
		EnemyState_Free();
		break;
	case ENEMYSTATE.ATTACKING: {
		if (!projectile_attack) {
			EnemyState_Attacking();
		} else {
			EnemyState_ProjectileAttack();
		}
		break;
	}
	case ENEMYSTATE.DEAD:
		EnemyState_Dead();
		break;
}
/// @description ?

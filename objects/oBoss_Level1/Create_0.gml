/// @description ?

// Inherit the parent event
event_inherited();

attack_dmg = 2;

hp = 20;
max_hp = hp;

detect_distance = 1000;
attack_distance = 10;

default_sprite = sBoss_Level1;
walking_sprite = sBoss_Level1;
attacking_sprite = sBoss_Level1_Attacking;
attacking_HB = sBoss_Level1_AttackingHB;
dead_obj = oBoss_Level1_Dead;

projectile_attack_sprite = sBoss_Level1_Projectile;
projectile = oProjectile_Fries;

projectile_attack = false;

enemy_type = ENEMYTYPE.BOSS;
/// @description ?

// Inherit the parent event
event_inherited();

walksp = 2;

attack_dmg = 3;

hp = 35;
max_hp = hp;

jump = 2;

detect_distance = 600;
attack_distance = 10;

default_sprite = sBoss_Level3;
walking_sprite = sBoss_Level3;
attacking_sprite = sBoss_Level3_Attacking;
attacking_HB = sBoss_Level3_Attacking;
dead_obj = oBoss_Level3_Dead;

projectile_attack_sprite = sBoss_Level3_Projectile;
projectile = oProjectile_Blueberries;

projectile_attack = false;

enemy_projectile_attack = false;
enemy_spawn_generator = 1;

enemy_type = ENEMYTYPE.BOSS;
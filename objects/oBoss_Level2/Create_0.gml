/// @description ?

// Inherit the parent event
event_inherited();

attack_dmg = 2;

hp = 25;
max_hp = hp;

jump = 10;

detect_distance = 600;
attack_distance = 10;

default_sprite = sBoss_Level2;
walking_sprite = sBoss_Level2;
attacking_sprite = sBoss_Level2;
attacking_HB = sBoss_Level2;
dead_obj = oBoss_Level2_Dead;

projectile_attack_sprite = sBoss_Level2_Projectile;
projectile = oProjectile_Sprinkles;

projectile_attack = false;

enemy_type = ENEMYTYPE.BOSS;
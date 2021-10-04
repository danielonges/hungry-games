/// @description Establish some key variables
// You can write your code in this editor

// horizontal speed
hsp = 0
// vertical speed
vsp = 0;
// gravity
grv = 0.3;
// walking speed
walksp = 3;
// jumping speed
jumpsp = 6;

hp = 30;
max_hp = hp;

spoon_cooldown = 0.3;

can_spoon = true;
can_fork = true;
can_knife = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE {
	FREE,
	ATTACK_SPOON,
	ATTACK_FORK,
	ATTACK_KNIFE
}

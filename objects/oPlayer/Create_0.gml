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
jumpsp = 6.5;

flash = 0;

prev_sp = 0;
is_knockbacked = false;
hit_from = 0;
knockback_fr = 0.2;

max_hp = global.hp;

spoon_cooldown = 0.3;
fork_cooldown = 5;
knife_cooldown = 10;

spoon_dmg = 1;
fork_dmg = 3;
knife_dmg = 6;

fork_energy = 2;
knife_energy = 3;

on_ladder = false;

// cooldown variables
can_spoon = true;
can_fork = true;
can_knife = true;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE {
	FREE,
	ATTACK_SPOON,
	ATTACK_FORK,
	ATTACK_KNIFE,
	DEAD
}

// tutorial variables
global.in_tutorial = room == rTutorial;
tutorial_state = TUTORIALSTATE.INITIAL;
has_not_spooned = true;

enum TUTORIALSTATE {
	INITIAL,
	ATTACK,
	KILLED_ONE,
	KILLED_TWO,
	KILLED_THREE
}

/// @description Core Player Logic
if (global.isPaused) { exit; }

// get player inputs
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);
key_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
key_down = keyboard_check(ord("S")) || keyboard_check(vk_down);

key_attack_spoon = keyboard_check(ord("J"));
key_attack_fork = keyboard_check(ord("K"));
key_attack_knife = keyboard_check(ord("L"));

switch (state) {
	case PLAYERSTATE.FREE:
		PlayerState_Free();
		break;
	case PLAYERSTATE.ATTACK_SPOON:
		PlayerState_Attack_Spoon();
		break;
	case PLAYERSTATE.ATTACK_FORK:
		PlayerState_Attack_Fork();
		break;
	case PLAYERSTATE.ATTACK_KNIFE:
		PlayerState_Attack_Knife();
		break;
	case PLAYERSTATE.DEAD:
		PlayerState_Dead();
		break;
}

// tutorial logic
if (global.in_tutorial && global.energy == 0) {
	global.energy = 15;
}
if (place_meeting(x, y, oTutorialTrigger) && !has_spooned) {
	tutorial_state = TUTORIALSTATE.ATTACK;
}
if (key_attack_spoon && !has_spooned) {
	tutorial_state = TUTORIALSTATE.KILLED_ONE;
	has_spooned = true;
}
if (key_attack_fork && !has_forked && has_spooned) {
	tutorial_state = TUTORIALSTATE.KILLED_TWO;
	has_forked = true;
}
if (key_attack_knife && !has_knifed && has_spooned && has_forked) {
	tutorial_state = TUTORIALSTATE.KILLED_THREE;
	has_knifed = true;
}
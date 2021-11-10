/// @description Control menu
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
	startIdx = 0;
	endIdx = firstPageIdx;
	next_btn = "Press Down to go to next page";
}
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
	startIdx = firstPageIdx;
	endIdx = secondPageIdx;
	next_btn = "Press Up to go to previous page";
}
if (keyboard_check_pressed(vk_escape)) {
	SlidesTransition(TRANS_MODE.GOTO, rMenu);
}

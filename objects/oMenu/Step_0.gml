/// @description Control menu

// item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

// keyboard controls
if (menu_control) {
	if (keyboard_check_pressed(vk_up)) {
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down)) {
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter)) {
		menu_x_target = gui_width + 400;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1) {
	switch (menu_committed) {
		case 4: default: SlidesTransition(TRANS_MODE.GOTO, rGameStart); break;
		case 3: SlidesTransition(TRANS_MODE.GOTO, rInstructions); break;
		case 2: SlidesTransition(TRANS_MODE.GOTO, rTutorial); break;
		case 1: SlidesTransition(TRANS_MODE.GOTO, rCredits); break;
		case 0: game_end(); break;
	}
}
		

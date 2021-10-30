/// @description Set pause
if (room != rMenu && room != rInstructions && room != rCredits) {
	if (keyboard_check_pressed(vk_escape) && global.hp > 0) {
		global.isPaused = !global.isPaused;
		isInPauseMenu = true;
		pauseMenuCursor = 0;
		pauseMenuSelection = -1;
	}
} else {
	global.isPaused = false;
}

if (global.isPaused) {
	// alarms will keep going even if obj paused
	// if alarms running, need to increase each step while paused
	// so when you unpause, it ends up the same value before pause
	for (var i = 0; i < 3; i++) {
		if (oPlayer.alarm[i] != -1) {
			oPlayer.alarm[i]++;
		}
	}
	if (instance_exists(oHealthEnergyFeedback)) {
		if (oHealthEnergyFeedback.alarm[0] != -1) {
			oHealthEnergyFeedback.alarm[0]++;
		}
	}

	// stop animations
	oPlayer.image_speed = 0;
	oEnemy.image_speed = 0;

	// keyboard controls
	if (isInPauseMenu) {
		if (keyboard_check_pressed(vk_up)) {
			pauseMenuCursor = clamp(pauseMenuCursor - 1, 0, array_length(pauseMenuItems));
		}
		if (keyboard_check_pressed(vk_down)) {
			pauseMenuCursor = clamp(pauseMenuCursor + 1, 0, array_length(pauseMenuItems));
		}
		if (keyboard_check_pressed(vk_enter)) {
			pauseMenuSelection = pauseMenuCursor;
			isInPauseMenu = false;
		}
	}

	if (pauseMenuSelection != -1) {
		switch (pauseMenuSelection) {
			case 0: default: global.isPaused = false; break;
			case 1: SlidesTransition(TRANS_MODE.GOTO, rMenu); break;
		}
	}
}

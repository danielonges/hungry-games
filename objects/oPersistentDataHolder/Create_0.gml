/// @description Persistent object to hold global data
// Just needs to be instantiated once in the first room, before the player
global.hp = 30;
global.energy = 0;
global.isPaused = false;
global.previousLevel = Room1;
global.hasFinishedGame = false;

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;
w_half = w / 2;

isInPauseMenu = false;
idx = 0;
pauseMenuItems[idx++] = "Resume";
pauseMenuItems[idx++] = "Exit to Menu";

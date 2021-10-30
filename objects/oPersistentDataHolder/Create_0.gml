/// @description Persistent object to hold global data
// Just needs to be instantiated once in the first room, before the player
global.hp = 30;
global.energy = 0;
global.isPaused = false;
global.previousLevel = Room1;

isInPauseMenu = false;
idx = 0;
pauseMenuItems[idx++] = "Resume";
pauseMenuItems[idx++] = "Exit to Menu";

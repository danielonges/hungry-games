/// @description Draw tutorial messages

// calculate position of GUI element to be above player
playerGuiCoords = get_player_gui_coords();
xx = playerGuiCoords[0];
yy = playerGuiCoords[1];

if (place_meeting(x, y, oLevelEnd) && (room == Room2 || room == Room4)) {
	if (oLevelEnd.has_boss && !instance_exists(oLevelEnd.dead_boss)) {
		guiCoords = get_player_gui_coords();
		draw_gui_message_box(guiCoords[0] - 80, guiCoords[1], "Kill Boss to Proceed!", fGeneral, make_color_rgb(235, 42, 42));
	}
}

if (global.in_tutorial) {
	textToDisplay = "";
	switch (tutorial_state) {
		case TUTORIALSTATE.INITIAL:
			textToDisplay = "Killing enemies gives you energy and/or health.";
			break;
		case TUTORIALSTATE.ATTACK:
			textToDisplay = "Press J for a spoon attack!\n\nDeals 1 damage\nUses no energy\nNo cooldown";
			break;
		case TUTORIALSTATE.KILLED_ONE:
			textToDisplay = "Press K for a fork attack!\n\nDeals 3 damage\nUses 2 energy\n5 second cooldown";
			break;
		case TUTORIALSTATE.KILLED_TWO:
			textToDisplay = "Press L for a knife attack!\n\nDeals 6 damage\nUses 3 energy\n10 second cooldown";
			break;
		case TUTORIALSTATE.KILLED_THREE:
			textToDisplay = "Feel free to go ahead to return to the menu, or explore more!";
			break;
		default:
			// should not reach here, but just in case
			textToDisplay = "Explore the room!";
			break;
	}
	draw_gui_message_box(xx, yy, textToDisplay, fGeneral, c_gray);
}

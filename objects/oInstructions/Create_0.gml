/// @description GUI/Vars/Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 36;

menu_x = gui_margin;
menu_y = gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fInstructions;
menu_itemheight = font_get_size(fInstructions);
menu_committed = -1;

i = 0;
menu[i++] = "Goal:";
menu[i++] = "Defeat enemies and bosses on platforms, to progress through the levels!";
menu[i++] = "";
menu[i++] = "How to achieve the goal:";
menu[i++] = "Use weapons to attack enemies and consume them for Energy.";
menu[i++] = "Defeating different enemies will give";
menu[i++] = "different amounts of Health or Energy.";
menu[i++] = "";
menu[i++] = "How the game progresses:";
menu[i++] = "As you clear more levels, the enemies are tougher";
menu[i++] = "and the platforming gets more complex!";
menu[i++] = "";
menu[i++] = "Controls:";
menu[i++] = "WASD or Arrow Keys - Movement";
menu[i++] = "Spacebar - Jump";
menu[i++] = "J - Spoon attack (no cooldown, uses 0 Energy)";
menu[i++] = "K - Fork attack (5s cooldown, uses 2 Energy)";
menu[i++] = "L - Knife attack (10s cooldown, uses 3 Energy)";
menu[i++] = "Esc - Back to main menu";

done_btn = "> Press Esc to return to main menu";

menu_items = array_length(menu);

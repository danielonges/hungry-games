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
menu[i++] = "[HUNGRY GAMES, 2021]";
menu[i++] = "[MAIN CREDITS]";
menu[i++] = "Daniel Ong Ee Shaeon - Lead Programmer";
menu[i++] = "Joel Chin Jin En - Designer, Artist";
menu[i++] = "Tay Wan Tian, Celeste - Producer, Lead Artist";
menu[i++] = "Wong Chi Shan - QA Tester, Programmer";
menu[i++] = "";
menu[i++] = "[ADDITIONAL CREDITS]";
menu[i++] = "Player Damaged Sounds - 'Human Voice Clip 89 & 99, Voice Clip Male 329' on Epidemic Sound";
menu[i++] = "https://www.epidemicsound.com/track/9LaIohCe3t/";
menu[i++] = "https://www.epidemicsound.com/track/vXqDkVWxnu/";
menu[i++] = "";
menu[i++] = "Weapon Attack Sounds & Enemy Damaged Sound - 'Knives & Swords' on Epidemic Sound";
menu[i++] = "https://www.epidemicsound.com/sound-effects/knives-swords/";
menu[i++] = "";
menu[i++] = "Enemy Death Sound - 'Ketchup Squish' on Epidemic Sound";
menu[i++] = "https://www.epidemicsound.com/track/8Io49tuzUK/";
menu[i++] = "";
menu[i++] = "Player Death Sounds - 'Human Grunt 8, 13, 18' on Epidemic Sound";
menu[i++] = "https://www.epidemicsound.com/track/2XszzSdXv6/";


done_btn = "> Press Esc to return to main menu";

menu_items = array_length(menu);

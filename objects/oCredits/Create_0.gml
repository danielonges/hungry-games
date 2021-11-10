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

firstPageIdx = 0;
menu[firstPageIdx++] = "[HUNGRY GAMES, 2021]";
menu[firstPageIdx++] = "";
menu[firstPageIdx++] = "[MAIN CREDITS]";
menu[firstPageIdx++] = "Daniel Ong Ee Shaeon - Lead Programmer";
menu[firstPageIdx++] = "Joel Chin Jin En - Designer, Artist";
menu[firstPageIdx++] = "Tay Wan Tian, Celeste - Producer, Lead Artist";
menu[firstPageIdx++] = "Wong Chi Shan - QA Tester, Programmer";
menu[firstPageIdx++] = "";
menu[firstPageIdx++] = "[SOUND EFFECTS CREDITS]";
menu[firstPageIdx++] = "Player Damaged Sounds - 'Human Voice Clip 89 & 99, Voice Clip Male 329' on Epidemic Sound";
menu[firstPageIdx++] = "https://www.epidemicsound.com/track/9LaIohCe3t/";
menu[firstPageIdx++] = "https://www.epidemicsound.com/track/hw5r3FKxX3/";
menu[firstPageIdx++] = "https://www.epidemicsound.com/track/vXqDkVWxnu/";
menu[firstPageIdx++] = "";
menu[firstPageIdx++] = "Weapon Attack Sounds & Enemy Damaged Sound - 'Knives & Swords' on Epidemic Sound";
menu[firstPageIdx++] = "https://www.epidemicsound.com/sound-effects/knives-swords/";
menu[firstPageIdx++] = "";
menu[firstPageIdx++] = "Enemy Death Sound - 'Ketchup Squish' on Epidemic Sound";
menu[firstPageIdx++] = "https://www.epidemicsound.com/track/8Io49tuzUK/";
menu[firstPageIdx++] = "";
menu[firstPageIdx++] = "Player Death Sounds - 'Human Grunt 8, 13, 18' on Epidemic Sound";
menu[firstPageIdx++] = "https://www.epidemicsound.com/track/2XszzSdXv6/";
menu[firstPageIdx++] = "https://www.epidemicsound.com/track/BzL6W0W31m/";
menu[firstPageIdx++] = "https://www.epidemicsound.com/track/dd2CZq90vG/";

secondPageIdx = firstPageIdx;
menu[secondPageIdx++] = "[BACKGROUND MUSIC CREDITS]";
menu[secondPageIdx++] = "Main Menu Music - 'Alleyways of Seoul' by Josef Bel Habib on Epidemic Sound";
menu[secondPageIdx++] = "https://www.epidemicsound.com/track/xKB50wsE1D/";
menu[secondPageIdx++] = "";
menu[secondPageIdx++] = "Level 1 Music - 'Gotta Catch That Unicorn' by Josef Bel Habib on Epidemic Sound";
menu[secondPageIdx++] = "https://www.epidemicsound.com/track/apXeZRHTC7/";
menu[secondPageIdx++] = "";
menu[secondPageIdx++] = "Boss 1 Music - 'Time to Level Up' by Josef Bel Habib on Epidemic Sound";
menu[secondPageIdx++] = "https://www.epidemicsound.com/track/8IxkFZTOS9/";
menu[secondPageIdx++] = "";
menu[secondPageIdx++] = "Level 2 Music - 'Albatross' by Lexica on Epidemic Sound";
menu[secondPageIdx++] = "https://www.epidemicsound.com/track/Q8BUY0Z6AE/ ";
menu[secondPageIdx++] = "";
menu[secondPageIdx++] = "Boss 2 Music - 'Game On' by Tricycle Riot on Epidemic Sound";
menu[secondPageIdx++] = "https://www.epidemicsound.com/track/EX9nypzKii/";
menu[secondPageIdx++] = "";
menu[secondPageIdx++] = "Level 3 Music - 'Tiger Tracks' by Lexica on Epidemic Sound";
menu[secondPageIdx++] = "https://www.epidemicsound.com/track/JptbYTDPQv/";
menu[secondPageIdx++] = "";
menu[secondPageIdx++] = "Boss 3 Music - 'Dreamz' by Jerry Lacey on Epidemic Sound";
menu[secondPageIdx++] = "https://www.epidemicsound.com/track/7zEqpTVSaG/";
menu[secondPageIdx++] = "";
menu[secondPageIdx++] = "Finish Game Music - 'Final Phaze' by Jerry Lacey on Epidemic Sound";
menu[secondPageIdx++] = "https://www.epidemicsound.com/track/TwbmUKx66m/";

startIdx = 0;
endIdx = firstPageIdx;

next_btn = "Press Down to go to next page";
done_btn = "Press Esc to return to main menu";

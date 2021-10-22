// textScale can be 1 and outlineOffset can be 2 if no preference
// textScale introduced because if you draw_text in the room,
// since our room is zoomed in, the text becomes really pixelated for small fonts
// solution is to have large font and scale down
function draw_outlined_text(posX, posY, font, text, textScale, outlineOffset) {

draw_set_font(font);
textColour = c_white;

// text outline
draw_set_color(c_dkgray);
draw_text_transformed(posX - outlineOffset, posY, text, textScale, textScale, 0);
draw_text_transformed(posX + outlineOffset, posY, text, textScale, textScale, 0);
draw_text_transformed(posX, posY - outlineOffset, text, textScale, textScale, 0);
draw_text_transformed(posX, posY + outlineOffset, text, textScale, textScale, 0);

// actual text
draw_set_color(textColour);
draw_text_transformed(posX, posY, text, textScale, textScale, 0);

}

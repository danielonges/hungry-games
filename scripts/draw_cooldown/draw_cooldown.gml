// Script credit: https://yal.cc/gamemaker-circular-cooldown-rectangle/
function draw_cooldown(topLeftX, topLeftY, bottomRightX, bottomRightY, value){
var xMid, yMid, angle, xVector, xVector, vl;
v = value;

if (v <= 0) return 0 // nothing to be drawn
if (v >= 1) return draw_rectangle(topLeftX, topLeftY, bottomRightX, bottomRightY, false) // entirely filled

 // middle point
xMid = (topLeftX + bottomRightX) / 2;
yMid = (topLeftY + bottomRightY) / 2;

draw_set_color(c_maroon);
draw_set_alpha(0.5);

draw_primitive_begin(pr_trianglefan);
draw_vertex(xMid, yMid);
draw_vertex(xMid, topLeftY);

// draw corners:
if (v >= 0.125) draw_vertex(bottomRightX, topLeftY);
if (v >= 0.375) draw_vertex(bottomRightX, bottomRightY);
if (v >= 0.625) draw_vertex(topLeftX, bottomRightY);
if (v >= 0.875) draw_vertex(topLeftX, topLeftY);

// calculate angle & vector from value:
angle = pi * (v * 2 - 0.5);
xVector = cos(angle);
yVector = sin(angle);

// normalize the vector, so it hits -1+1 at either side:
vl = max(abs(xVector), abs(yVector));

if (vl < 1) {
    xVector /= vl;
    yVector /= vl;
}
draw_vertex(xMid + xVector * (bottomRightX - topLeftX) / 2, yMid + yVector * (bottomRightY - topLeftY) / 2);
draw_primitive_end();

draw_set_alpha(1); // reset opacity so other elements not affected
}

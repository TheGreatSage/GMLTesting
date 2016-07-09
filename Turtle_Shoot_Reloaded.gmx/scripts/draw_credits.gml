draw_default();
draw_set_alpha(.75);

var title;
x1=(vw/3);
y1=(vh/3);
x2=(vw)-vw/3;
y2=(vh)-(vh/5);
spc=16;
title='CREDITS'
cy1s = clamp(cy1s,y1s-spc,y2s-spc);
cy2s = clamp(cy2s,y1s,y2s);
// Credits Box
x1=(vw/3);
y1=(vh/3);
x2=(vw)-vw/3;
y2=(vh)-(vh/5);
// Scrolling Track
tx1=x2-(spc*3);
ty1=y1+(spc*4);
tx2=x2-(spc*2);
ty2=y2-(spc*5);
// Slider
sx1=x2-(spc*3);
sy1=y1+(spc*4);
sx2=x2-(spc*2);
sy2=sy1+spc;
// Retard Variables
slidersize=spc;
tracksize=ty2-ty1+slidersize;
slidedist=sy2-ty1;

draw_rectangle(x1,y1,x2,y2,false);

//scroll bar
draw_set_alpha(1);
draw_set_colour(c_black);

draw_rectangle(tx1,ty1,tx2,ty2,false); // Track

draw_set_colour(c_gray);
draw_rectangle(cx1s,cy1s,cx2s,cy2s,false); // Slider
//Sides
draw_set_alpha(1);
draw_set_colour(c_green);
draw_rectangle(x1,y1,x2,y1+string_height(title), false); // top
draw_rectangle(x1,y1,x1+3,y2,false);                    // left
draw_rectangle(x1,y2-3,x2,y2,false);                   // bottom
draw_rectangle(x2-3,y1,x2,y2,false);                  // right
// Font
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_colour(c_white);
// List
draw_text(vw/2,y1,title);
var crs,crsss,crrs,crrss;
crrs=cy2s-cy1s;
crsss=y2s-y1s+crrs;
crrss=cy2s-y1s;
crs=crrss/crsss;
crs = clamp(crs,0,1);
draw_default();

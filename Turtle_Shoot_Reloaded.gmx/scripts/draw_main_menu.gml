var title = '[Insert Title]';

draw_default();

draw_set_alpha(.25);
draw_rectangle((room_width/2)-(room_width*.2),(room_height*.1)-(string_height(title)*2),(room_width/2)+(room_width*.2),(room_height*.1/2)+(string_height(title)*2),false);

draw_default();

draw_set_halign(fa_center);
draw_text_transformed(250,y/2,title, 2, 2, -1); // Fnt size 12

draw_default();

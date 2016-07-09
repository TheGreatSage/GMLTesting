///draw_words(text, x, y, scale, alpha)

text=argument0;
posx=argument1;
posy=argument2;
scale=argument3;
alpha=argument4;

fnt = font_add_sprite_ext(spr_font,'-AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz', true, 0);
draw_default();
draw_set_font(fnt);


draw_set_color(c_white);
draw_set_alpha(alpha)
draw_text_transformed(posx,posy,text,scale,scale,0);
font_delete(fnt);

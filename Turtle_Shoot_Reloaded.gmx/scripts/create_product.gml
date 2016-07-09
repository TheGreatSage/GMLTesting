///create_product(product,x,y);
p=argument0;
posx=argument1;
posy=argument2;
draw_default();

draw_set_alpha(.75);
draw_sprite(spr_select_product, 0, posx, posy);
draw_set_colour(c_white);

//Name
draw_set_halign(fa_right);
draw_text(posx+60,posy+114,product[p,0]);
//Inventory
draw_set_halign(fa_left);
draw_text(posx-55,posy+114,product[p,1]);
//Temp
draw_text(posx-40,posy+10, product[p,2]);


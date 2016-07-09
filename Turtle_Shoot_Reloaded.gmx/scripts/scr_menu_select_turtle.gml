p=argument1;
surface_set_target(argument0);
    if p!=true {draw_clear_alpha(c_black,.1);} else {draw_clear(c_white);}
    draw_default();  
    if p==true { draw_set_alpha(1); } else { draw_set_alpha(.5); }
    draw_sprite(spr_select_turtleshoot,0,64,0);
    draw_set_alpha(1);
    draw_text(64,5,'Shooting Range');
    draw_default();
    draw_set_colour(c_green);    
    if p==true { draw_set_alpha(1); } else { draw_set_alpha(0.5); }
    draw_rectangle(0,116,128,128,false);
    draw_default();
    draw_set_alpha(1);
    draw_sprite(spr_player,0,120,96)
    draw_sprite_ext(spr_minigun_1,rot,89,95,1,1,0,-1,1)
    draw_default();
    draw_set_colour(c_yellow);
    if p==true { draw_set_alpha(.8); } else { draw_set_alpha(.4); }
    draw_line_width(89,103,0,103+(random_range(-2.5,2.5)),1)
    draw_default();
surface_reset_target();

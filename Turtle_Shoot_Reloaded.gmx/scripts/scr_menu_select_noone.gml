p=argument1;
surface_set_target(argument0);
    draw_default();
    if p!=true {draw_clear_alpha(c_black,.25);} else {draw_clear(c_white);}  
    if p==true { draw_set_alpha(1); } else { draw_set_alpha(.5); }
    draw_sprite(spr_select_turtleshoot,0,64,0);
    draw_set_alpha(1);
    draw_text(64,5,'---------');
surface_reset_target();

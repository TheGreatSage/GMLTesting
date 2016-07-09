p=argument1;
///Drawing for menu select
surface_set_target(argument0);
    draw_default();
    if p!=true { draw_clear_alpha(c_black,.25); } else { draw_clear(c_white); }  
    if p==true { draw_set_alpha(1); } else { draw_set_alpha(.5); }
    draw_sprite(spr_select_turtleshoot,0,64,0);
    draw_set_alpha(1);
    draw_text(64,5,'Gun Editor');
    draw_default();
    draw_sprite_ext(spr_pistol,-1,15, 25,2,2,0,-1,1);
    draw_sprite_ext(spr_hammer_1,rot,85, 25,2,2,0,-1,1);
    draw_sprite_ext(spr_flamer_1,rot,15, 45,2,2,0,-1,1);
    draw_sprite_ext(spr_minigun_1,rot,45, 85,2,2,0,-1,1);
surface_reset_target();

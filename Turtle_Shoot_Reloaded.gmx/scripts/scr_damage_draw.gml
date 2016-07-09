switch type {
       default:
               draw_self(); break;
       case 'projectile':
            switch stype{
                   default: draw_self(); break;
                   case 'flame':
                        draw_sprite_ext(spr_flame_t,image_index, x, y,size*xscale,size*yscale,image_angle,c_white,image_alpha);
                        break;
                   case 'line':
                        draw_set_alpha(.25);
                        draw_set_color(c_white);
                        draw_line_width(x,y,xstart,ystart,1);
                        draw_set_alpha(1);
                        break;
            }
}

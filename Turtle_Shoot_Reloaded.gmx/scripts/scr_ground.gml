switch argument0 {
       default:
               if y>=grassh {
                  scr_gore_create(1); // Ground Hitting
               }
               break;
       case 3:
            if y>=grassh+2 {
               scr_gore_create(3);
            }
            break;
       case 4:
            if y>=grassh {
               expl = instance_create(x, y, ob_damage);
               expl.sprite_index = spr_explosion;
               expl.type = 'explosion';
               expl.stype = 'normal';
               with self {instance_destroy();}
               
            }
            break;
       case 5:
            if y>=grassh {
                  scr_gore_create(6); // Ground Hitting No removal
                  self.lnhit=true;
               }
            break;
       case 6:
            if y>=grassh {
               expl = instance_create(x, y, ob_damage);
               expl.sprite_index = spr_explosion;
               expl.type = 'explosion';
               expl.stype = 'normal';
               lnhit=true;
               
            }
            break;
}

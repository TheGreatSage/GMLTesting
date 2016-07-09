switch other.type {
       default:
               switch other.stype {
                      default:
                              with other {instance_destroy();}
                              hp -= other.dmg;
                              scr_gore_create(2);
                              break;
                      case 'flame':
                             scr_gore_create(3);
                             break; 
                      case 'gravity':
                           with other {instance_destroy();}
                           expl = instance_create(other.x, other.y, ob_damage);
                           expl.sprite_index = spr_explosion;
                           expl.type = 'explosion';
                           expl.stype = 'normal';
                           break;
                      case 'exploding':
                           with other {instance_destroy();}
                           expl = instance_create(other.x, other.y, ob_damage);
                           expl.sprite_index = spr_explosion;
                           expl.type = 'explosion';
                           expl.stype = 'normal';
                           break;
                      case 'line':
                           other.lnhit=true;
                           with other {instance_destroy();}
                           hp -= other.dmg;
                           scr_gore_create(2);
                           break;
                                      
               }
       case 'explosion':
              hp -= other.dmg;
              break;





}

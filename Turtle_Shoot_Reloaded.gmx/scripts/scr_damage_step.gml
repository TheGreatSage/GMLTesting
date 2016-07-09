switch type {
       default: // Default is projectile
                switch stype {
                       default: // Default is normal
                                scr_ground(1);
                                break;
                       case 'line':
                            if lnalph <= 0 {
                               with self {instance_destroy()}
                            }
                            if lnhit {
                               lnalph-=.1;
                               dmg=0;
                               speed=0;
                            }
                            scr_ground(6);
                            break;
                       case 'flame':
                            hp -= 0.75;
                            image_angle+=4;
                            if size<8 {
                               size+=random(0.05)+.1;
                            }
                            if size>8 {
                               hp-=1;
                            }
                            scr_ground(3);
                            if hp < 0 {
                               with self {instance_destroy()}
                            }
                            if speed <= 6 {
                               speed += .1;
                            }
                            break;
                       case 'gravity':
                            gravity_direction = 270;
                            gravity = .4;
                            image_angle=direction;
                            scr_ground(4); // Explosion
                            break;
                      case 'exploding':
                           scr_ground(4);
                           break;             
                }
       break;
       case 'explosion':
            dmg = MAX;
            image_speed = espeed;
            image_xscale = exscale;
            image_yscale = eyscale;
            if image_index == image_number-1 {
               with self {instance_destroy()}
            }
       break;
}
if self.visible == false {
   visible = true;
}

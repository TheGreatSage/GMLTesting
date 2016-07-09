switch type {
       default: break;
       case 'explosion':
            if image_index == image_number-1 {
               with self {instance_destroy()}
            }
            image_speed = sdd;
            image_xscale = exscale;
            image_yscale = eyscale;
       break;
       
       case 'cloud':
            move_wrap(true, false, sprite_width/2);
            if hp <= 0 {
               direction = choose(0, 180);
               speed = random(3);
               hp = 500;
            } else {
              hp -= 1;
            }
            if waterlevel > 0 {
               scr_gore_create(5);
               waterlevel -= 1;
            } else {
              if watertimer < 0 {
                 litr = irandom(1000);
                 if litr == 4 {
                    waterlevel = random(1000);
                 } else {
                 watertimer = 2000;
                 }
              } else {
                watertimer -= 1;
              }
            }
       break;
            
}

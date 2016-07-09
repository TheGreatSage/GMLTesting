dmg = 1;  //dmg variable
hp = 1;  // Hp variable
type = 'projectile'; // Type of damage applied or created
stype = 'normal'; // Secondary type for damage type
size = 1; // Size if needed
xscale = .125; // Size Modifiers if needed
yscale = .125;  //
exscale = .25; // Explosion Size Modifiers
eyscale = .25; //
espeed = .5; // Exploasion Image Speed

lnalph=.25; // Line Alpha
lnhit=false;

switch type { // Damage Tpye
    default: // The Default is a projectile
             switch stype{
                    default: // Default is normal
                             dmg = 1;
                             image_angle = direction;
                             break;
                    case 'flame':
                         hp = 100; //Life
                         image_angle = random(360);
                         image_speed = 0;
                         speed = 1; // Start Speed;
                         break;  
                   case 'gravity':
                        image_angle=direction;
                        break;  
                   case 'exploding':
                        image_angle = direction;
                        break;         
             }
    break; // Break default
    case 'explosion':
         switch stype {
                default: // Normal;
                         dmg = MAX;
                        image_speed = espeed;
                        image_xscale = exscale;
                        image_yscale = eyscale;
                        break;
                case 'turtle bomb':
                     dmg = 0;
                     image_speed = espeed;
                     image_xscale = exscale;
                     image_yscale = eyscale;
                     scr_gore_create(4);
                     break;      
         }
    break;
    case 'line':
         switch stype {
                default:
                        dmg=1;     
                break;
         }
    break;
}

if self.visible == false {
   visible = true;
}

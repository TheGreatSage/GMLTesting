randomize();


switch argument0{

    default: // Ground
             var aa;
             aa = irandom_range(12, 100);
             for (i=0;i<aa;i+=1) {
                 g = instance_create(x, grassh, ob_gore);
                 g.sprite_index = spr_ground_gore;
                 g.image_index = irandom(2);
                 g.direction = (random_range(0, 180));
                 g.speed = random(min(random(speed), random(speed/2)));
             }
             with self {instance_destroy();}
             break;


    case 2: // Blood
         var aa;
         aa = irandom_range(12, 100);
         for (i=0;i<aa;i+=1) {
             g = instance_create((other.x), (other.y), ob_gore);
             g.sprite_index = spr_blood_gore;
             g.image_index = irandom(2);
             g.direction = (random_range(0, 180));
             g.speed = random(min(random(other.speed), random(other.speed/2))); // Speed Of Bullet
         }
         break;


    case 3: //Sparks
         var aa;
         aa = irandom_range(12, 13);
         for (i=0;i<aa;i+=1) {
             g = instance_create((self.x), (self.y), ob_gore);
             g.sprite_index = spr_flame;
             g.image_index = irandom(5);
             g.direction = (random_range(0, 180));
             g.speed = random(min(random(other.speed), random(other.speed*2))); // Speed of Flame
         }
         with other {instance_destroy();} // Other is Mob
         break;

    case 4: // Turtle Parts
    var aa;
    aa = 8;
    for (i=0;i<aa;i+=1) {
        g = instance_create((other.x), (other.y), ob_gore);
        g.sprite_index = spr_turtle_gore;
        g.image_index = i;
        g.direction = (random_range(0, 180));
        g.speed = 6;
 
    }
    break; 
    
    case 5: // Rain
         var aa;
         aa = irandom_range(12, 30);
         for (i=0;i<aa;i+=1) {
             g = instance_create((self.x-(sprite_width/2)+(random(sprite_width))), (self.y-random(sprite_height/2)), ob_gore);
             g.sprite_index = spr_rain_gore;
             g.image_index = 0;
             g.direction = 270;
             g.speed = 2; //
         }
         self.waterlevel -= 1;
         break;
    
    case 6: // Ground, No Removal
         var aa;
             aa = irandom_range(12, 100);
             for (i=0;i<aa;i+=1) {
                 g = instance_create(x, grassh, ob_gore);
                 g.sprite_index = spr_ground_gore;
                 g.image_index = irandom(2);
                 g.direction = (random_range(0, 180));
                 g.speed = random(min(random(speed), random(speed/2)));
             }
             break;
         
}

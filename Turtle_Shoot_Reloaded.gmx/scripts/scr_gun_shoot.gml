/** VARIABLES TO KNOW
0 = spr
1 = posx
2 = posy
3 = img_speed
4 = img_index
5 = Ammo
6 = Max Ammo
7 = Can Shoot
8 = BarrelX
9 =  Reload Time
10 = Bullet SPEED
11 = Bullet Wait
12 = Bullet Timer
13 = Accuracy
14 = Reload Timer
15 = Extra Var 1
16 = Unlocked
***/
switch gun{
default:
if (GUN[gun, 7] != false) {
   bullet = instance_create((x)-lengthdir_x(-GUN[gun, 8], image_angle+GUN[gun, 8]),((y)-lengthdir_y(-GUN[gun, 8], image_angle+GUN[gun, 8])), ob_damage);     
   bullet.sprite_index = spr_bullet;
   bullet.speed = GUN[gun,10];
   bullet.image_angle = image_angle;
   bullet.direction = (image_angle)+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
   bullet.dmg = GUN[gun, 18]
   GUN[gun, 12] = GUN[gun, 11];
   GUN[gun, 5] -= 1;
} break;

case 2:
if (GUN[gun, 7] != false) { //Grenade ?
         bullet = instance_create((x)-lengthdir_x(-GUN[gun, 8], image_angle+GUN[gun, 8]),((y)-lengthdir_y(-GUN[gun, 8], image_angle+GUN[gun, 8])), ob_damage);     
         bullet.stype = 'gravity' // Gravity
         bullet.sprite_index = spr_gnade; 
         bullet.image_angle = random(360);
         bullet.direction = image_angle+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
         bullet.image_index = 0;
         bullet.speed = GUN[gun,10]; 
         bullet.dmg = GUN[gun, 18];
         GUN[gun, 12] = GUN[gun, 11];
         GUN[gun, 5] -= 1;
}
     break;
     
case 3:
if (GUN[gun, 7] != false) { //RPG
   bullet = instance_create((x)-lengthdir_x(-GUN[gun, 1], image_angle-GUN[gun, 2]),((y)-lengthdir_y(-GUN[gun, 1], image_angle-(GUN[gun, 2]))), ob_damage);     
   bullet.stype = 'exploding';
   bullet.sprite_index = spr_rocket_1;
   bullet.speed = GUN[gun,10];
   bullet.image_angle = image_angle;
   bullet.direction = (image_angle);
   bullet.dmg = GUN[gun, 18]
   GUN[gun, 12] = GUN[gun, 11];
   GUN[gun, 5] -= 1;
} break;
     
case 4:
if (GUN[gun, 7] != false) { // Hammer
         bullet = instance_create((x)-lengthdir_x(-GUN[gun, 8], image_angle+GUN[gun, 8]),((y)-lengthdir_y(-GUN[gun, 8], image_angle+GUN[gun, 8])), ob_damage);     
         bullet.stype = 'gravity' // Gravity
         bullet.sprite_index = spr_mortor 
         bullet.image_angle = image_angle;
         bullet.direction = image_angle+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
         bullet.image_index = 0;
         bullet.speed = GUN[gun,10]; 
         bullet.dmg = GUN[gun, 18];
         GUN[gun, 12] = GUN[gun, 11];
         GUN[gun, 5] -= 1;
}
     break;

case 5: // Shotgun
if (GUN[gun, 7] != false) {
   for (i=0;i<8;i++) {
   bullet = instance_create((x)-lengthdir_x(-GUN[gun, 1], image_angle-GUN[gun, 2]),((y)-lengthdir_y(-GUN[gun, 1], image_angle-(GUN[gun, 2]))), ob_damage);     
   bullet.sprite_index = spr_musket_gore;
   bullet.speed = GUN[gun,10];
   bullet.image_angle = image_angle;
   bullet.direction = (image_angle)+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
   bullet.dmg = GUN[gun, 18]
   GUN[gun, 12] = GUN[gun, 11];
   GUN[gun, 5] -= 1;
   }
} break;

case 6: // Revolver/Musket
if (GUN[gun, 7] != false) {
   for (i=0;i<3;i++) {
       g = instance_create((x)-lengthdir_x(-GUN[gun, 1], image_angle-GUN[gun, 2]),((y)-lengthdir_y(-GUN[gun, 1], image_angle-(GUN[gun, 2]))), ob_gore); 
       g.sprite_index = spr_smoke;
       g.direction = (random_range(image_angle-10, image_angle+10));
       g.speed = 6;  
   }
   bullet = instance_create((x)-lengthdir_x(-GUN[gun, 1], image_angle-GUN[gun, 2]),((y)-lengthdir_y(-GUN[gun, 1], image_angle-(GUN[gun, 2]))), ob_damage);     
   bullet.sprite_index = spr_musket_ball;
   bullet.speed = GUN[gun,10];
   bullet.image_angle = image_angle;
   bullet.direction = (image_angle)+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
   bullet.dmg = GUN[gun, 18]
   GUN[gun, 12] = GUN[gun, 11];
   GUN[gun, 5] -= 1;
} break;

case 8: //Sniper
if (GUN[gun, 7] != false) {
   bullet = instance_create((x)-lengthdir_x(-GUN[gun, 2], image_angle-GUN[gun, 2]),((y)-lengthdir_y(-GUN[gun, 2], image_angle-(GUN[gun, 2]))), ob_damage);     
   bullet.stype = 'line';
   bullet.sprite_index = spr_bullet;
   bullet.speed = GUN[gun,10];
   bullet.image_angle = image_angle;
   bullet.direction = (image_angle)+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
   bullet.dmg = GUN[gun, 18]
   GUN[gun, 12] = GUN[gun, 11];
   GUN[gun, 5] -= 1;
} break;

case 9: // FlameThrower
     for (f=0;f<10;f+=1){
         bullet = instance_create((x)+lengthdir_x(GUN[gun, 1], image_angle-GUN[gun, 1]+GUN[gun, 8]),((y)+lengthdir_y(GUN[gun, 1], image_angle-GUN[gun,1]+GUN[gun, 8])), ob_damage);     
         bullet.sprite_index = spr_flame_t;
         bullet.stype = 'flame'; // Flame
         bullet.image_angle = image_angle;
         bullet.direction = image_angle+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
         bullet.speed = GUN[gun, 10];
         bullet.image_index = 0;
         bullet.hp = random_range(2, 30);
         bullet.dmg = GUN[gun, 18];
     } 
     break;

case 10: // Minigun
     bullet = instance_create((x)-lengthdir_x(-GUN[gun, 8], image_angle+GUN[gun, 8]),((y)-lengthdir_y(-GUN[gun, 8], image_angle+GUN[gun, 8])), ob_damage);
     /** Normal Bullet     
     bullet.sprite_index = spr_bullet;
     bullet.speed = GUN[gun,10]; 
     bullet.image_angle = image_angle;
     bullet.dmg = GUN[gun, 18];
     bullet.direction = image_angle+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
     */
     // Line Bullet
     bullet.stype = 'line';
     bullet.sprite_index = spr_bullet;
     bullet.speed = GUN[gun, 10];
     bullet.dmg = GUN[gun, 18];
     bullet.direction = image_angle+(choose(random(GUN[gun,13]),random(-GUN[gun,13])));
     // Casing
      g = instance_create(x-lengthdir_x(-12, image_angle-(GUN[gun, 2]-16)),((y)-lengthdir_y(-12, image_angle-(GUN[gun, 2]-16))), ob_gore); 
      g.depth = -10;
      g.sprite_index = spr_casing_gore;
      g.direction = -(random_range(25, 45));
      g.speed = 4;
     
     GUN[gun, 12] = GUN[gun, 11];
     GUN[gun, 15] = true;
     GUN[gun, 5] = -1;
break;
}

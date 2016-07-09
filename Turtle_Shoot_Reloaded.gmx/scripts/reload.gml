typer = argument0;
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

switch typer{


    case 'semi': // Semi Auto
         if GUN[gun, 5] <= 0 { 
            if GUN[gun, 14] != 0 {
               GUN[gun, 14] -= 1; 
               GUN[gun, 7] = false; // No Shooting
            } else {
               GUN[gun,14] = GUN[gun,9]; // Stop Timer
               GUN[gun, 5] = GUN[gun, 6]; // Reload
               GUN[gun, 7] = true; // Shooting
            }
               
         } 

    case 'mini':
         if GUN[gun, 5] <= 0 {
            if GUN[gun, 14] != 0 {
               GUN[gun, 14] -= 1; 
               GUN[gun, 3] = 0;
               GUN[gun, 7] = false;
            } else {
               GUN[gun,14] = GUN[gun,9]; // Stop Timer
               GUN[gun, 5] = GUN[gun, 6]; // Reload
               GUN[gun, 2] = 1;
               GUN[gun, 7] = true;
            }
         }
















}

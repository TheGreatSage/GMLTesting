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


// Default Settings
god.temps=sprite_duplicate(GUN[gun, 0]); // Sprite
self.sprite_index = god.temps;
if GUN[gun,3] == 0 { self.image_index = GUN[gun, 4]; } // index if needed
self.image_speed = GUN[gun, 3]; // Speed
self.x = playx; // x
self.y = playy // y
self.image_xscale = -1; // flip x
self.image_yscale = -1; // flip y
sprite_set_offset(god.temps, GUN[gun, 1], GUN[gun, 2]); // Orgin
self.image_angle = point_direction(self.x, self.y, mouse_x, mouse_y); // angle


scr_shoot();


// Semi Auto or Auto
if GUN[gun, 12] < 0 {GUN[gun, 12]=0;} 
else if GUN[gun, 12] > 0 { 
   GUN[gun, 7] = false; //Stop Shooting
   GUN[gun, 12] -= 1; 
} else if GUN[gun, 12] == 0 { 
   GUN[gun, 7] = true; // Allow Shooting

}

/**
// Reloading
if gun == 1 {reload('semi')} else if gun == 10 {reload('mini')} 
**/

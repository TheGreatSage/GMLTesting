self.x = view_xview[0];
self.y = view_yview[0];
var ptime=0;
if gun == 8 {
   if view_xview[0] != 0 {
      view_xview[0] -= 5;
      view_wview[0] += 5;
      view_yview[0] -= 5;
      view_hview[0] += 5;
   }
} else {
   if view_xview[0] != 320 {
      view_xview[0] += 5;
      view_wview[0] -= 5;
      view_yview[0] += 5;
      view_hview[0] -= 5;
   }
}

if keyboard_check(vk_space) {
   instance_create(random(room_height), grassh-8, ob_enemy);
}
if pause==true && ptime==0 {
   instance_deactivate_all(true);
   pause=true;
   ptime=15;
} else if pause==false && ptime == 0 {
    pause=false;
    instance_activate_all();
    ptime=15;
}
if keyboard_check_pressed(ord('P')) {
    pause=!pause;
}
if mouse_check_button_pressed(mb_left) {
   if point_in_rectangle(mouse_x, mouse_y, view_xview[0], view_yview[0], view_xview[0]+16, view_yview[0]+16) {
      pause=!pause;
   }
}
if ptime > 0 {
   ptime-=1;
} else if ptime < 0 {
  ptime+=1;
}

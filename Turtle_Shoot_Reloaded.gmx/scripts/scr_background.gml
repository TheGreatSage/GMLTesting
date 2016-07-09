
if time == 0 {
   background_vspeed[0] = random_range(0.1,2); // Never 0
   background_hspeed[0] = random_range(0.1,2); // Never 0
   time=1;
}
if time >= 261 {
   background_vspeed[0] = random_range(0.1,2); // Never 0
   background_hspeed[0] = random_range(0.1,2); // Never 0
   time=1;
} else {
  time+=1;
}

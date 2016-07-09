pause=false;
credits=false;
repeat(10){
          cloud = instance_create(random(room_width), random(190), ob_effect);
          cloud.type = 'cloud'
          cloud.speed = random(4);
          cloud.image_speed = 0;
          cloud.direction = choose(0, 180);
          cloud.sprite_index = spr_cloud;
          cloud.image_xscale = .25;
          cloud.image_yscale = .25;
          cloud.watertimer = random(100);
          cloud.waterlevel = 0;
}

var xx2,spc,x2,y1,y2,xx2;
vh=view_hview[view_current]+view_yview[view_current];
vw=view_wview[view_current]+view_xview[view_current];
spc=16;
x2=vw/4;
y1=vh/3;
y2=vh-(vh/5);
xx2=(vw-(vw/3))
cx1s=xx2-(spc*3);
cy1s=y1+(spc*4);
cx2s=xx2-(spc*2);
cy2s=y1+(spc*5);
x1s=cx1s; // Max x1
x2s=cx2s; // Max x2
y1s=cy1s; // Max y1
y2s=y2-(spc*5); // Max y2


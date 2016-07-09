type  = 'none'
//stype = 'normal'
hp = 500;
raining = false;
watertimer = 0;
waterlevel = 0;
sdd = .5;
exscale = .25;
eyscale = .25;
switch type {

       case 'explosion':
            image_speed = sdd;
            image_xscale = exscale;
            image_yscale = eyscale;
            sprite_index = spr_explosion;
       break;
       
       case 'cloud':
            sprite_index = spr_cloud;
            speed = random(4);
            direction = choose(180,0);
       break;
            
            
}

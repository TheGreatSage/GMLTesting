if hp <= 0 {
   with self {instance_destroy();}
   expl = instance_create(x, y, ob_effect);
   expl.sprite_index = spr_explosion;
   expl.type = 'explosion';
   scr_gore_create(4);
}

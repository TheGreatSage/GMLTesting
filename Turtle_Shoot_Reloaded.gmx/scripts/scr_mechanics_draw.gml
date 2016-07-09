draw_default();
draw_text(x,y,'Version: ' + string(version));
if !pause {
   draw_sprite(spr_pause, 0, view_xview[0], view_yview[0]);
} else {
  draw_sprite(spr_pause, 1, view_xview[0], view_yview[0]);
}

///edit_product(product, x, y);
p=argument0;
px=argument1;
py=argument2;

if mouse_check_button_pressed(mb_left) {
    if point_in_rectangle(mouse_x,mouse_y,px-64,py,px-44,py+21) {
       product[p,2]+=1;
    }
    if point_in_rectangle(mouse_x,mouse_y,px+44,py,px+64,py+21) {
       product[p,2]-=1;
    }
}


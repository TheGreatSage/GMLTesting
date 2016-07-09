switch gun {
       default: 
                if mouse_check_button(mb_left) {script_execute(GUN[gun, 17])};
                break;
       case 10:
            if mouse_check_button(mb_left) {script_execute(GUN[gun, 17]); GUN[gun, 3] = 1;} else {if GUN[gun, 3] == 0 {} else {GUN[gun, 3] -= .02;}}
            break;
       case 4:
            if mouse_check_button(mb_left) {script_execute(GUN[gun, 17]); GUN[gun, 3] = .1;} else  { GUN[gun, 3] = 0; } 
            break;
}

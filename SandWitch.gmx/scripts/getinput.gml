///getinput()
//player control
right = keyboard_check (ord ("D"));
left = keyboard_check (ord ("A"));
up = keyboard_check (ord ("W"));
down = keyboard_check (ord ("S"));
pause = keyboard_check_pressed (vk_escape);
dashkey = keyboard_check_pressed(vk_shift);
spellattack = mouse_check_button_pressed(mb_left);

hspddir = right - left;
vspddir = down - up;

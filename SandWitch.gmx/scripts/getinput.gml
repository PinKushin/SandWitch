///getinput()
//player control
right = keyboard_check (ord ("D"));
left = keyboard_check (ord ("A"));
up = keyboard_check (ord ("W"));
down = keyboard_check (ord ("S"));
pause = keyboard_check_pressed (vk_escape);

hspddir = right - left;
vspddir = down - up;

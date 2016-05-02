///dashstate()

///get length
len = dashspd;

///set hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

///move
move(hspd, vspd, osolidpar)

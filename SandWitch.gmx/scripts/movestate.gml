///movestate()
getinput();

//get direction
dir = point_direction (0, 0, hspddir, vspddir);
dxspd = lengthdir_x (spd, dir);
dyspd = lengthdir_y (spd, dir);

///move
if hspddir != 0 {
   hspd = hspddir * spd;
   
   if hspd > dxspd { hspd = dxspd }
   if hspd < -dxspd { hspd = dxspd }
}else{
     hspd = 0;
}

if vspddir != 0 {
   vspd = vspddir * spd;
   
   if vspd > dyspd { vspd = dyspd }
   if vspd < -dyspd { vspd = dyspd }
}else{
      vspd = 0;
}
move(osolidpar)

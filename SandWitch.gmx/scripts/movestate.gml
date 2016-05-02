///movestate()
getinput();

//get direction
dir = point_direction (0, 0, hspddir, vspddir);
dxspd = lengthdir_x (spd, dir);
dyspd = lengthdir_y (spd, dir);

///get length
if hspddir == 0 && vspd == 0 {
   len = 0
}else{
      len = spd;
      //facing();
}

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
move(hspd, vspd, osolidpar)

///animate sprite and face the right direction
//animatesprite();

///dash
if dashkey && oplayerstats.stamina >= dashcost {
   oplayerstats.stamina -= dashcost
   state = dashstate;
   ///set alarms
   alarm[DASH] = room_speed / 3;
   alarm[STAMINA] = room_speed;
}else if oplayerstats.stamina < oplayerstats.maxstamina && alarm[STAMINA] <= 0 {
      //regen stamina
      oplayerstats.stamina += 0.1;
}

//attacking
if spellattack && global.spellcost <= oplayerstats.mana {
   state = spellstate;
}

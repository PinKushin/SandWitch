///spellstate()

///attack
if alarm[SPELL] <= 0 {
   instance_create(x, y, global.spell);
   //oplayerstats.mana -= global.spellcost;
}

if alarm[SPELL] > 0{
   state = movestate;
}


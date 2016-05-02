///move(hspd, vspd, collision_object)
var hspd = argument0;
var vspd = argument1;
var collision_object = argument2;
    
//Horizontal collisions
if place_meeting (x + hspd, y, collision_object){
   while !place_meeting (x + sign (hspd), y, collision_object) {
        x += sign (hspd);
   } 
    hspd = 0;
}
///move
x += hspd

//Vertical collisions
if place_meeting (x, y + vspd, collision_object) {
    while !place_meeting (x , y + sign (vspd), collision_object) {
        y += sign (vspd);
    } 
    vspd = 0;
}
///move
y += vspd


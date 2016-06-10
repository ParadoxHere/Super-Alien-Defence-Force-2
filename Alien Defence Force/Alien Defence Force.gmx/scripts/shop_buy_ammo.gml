///shop_buy_ammo(amount, weapon)
var amount = argument0;
var weapon = argument1;
if(global.weaponArray[weapon, 10]) {
    global.weaponArray[weapon, 8] += amount;
    return true;
} 

return false;

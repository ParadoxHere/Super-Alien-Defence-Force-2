///shop_buy_gun(bool, weapon)
var bool = argument0;
var weapon = argument1;
if(!global.weaponArray[weapon, 10]) {
    global.weaponArray[weapon, 10] = bool;
    return true;
} else {
    return false
}

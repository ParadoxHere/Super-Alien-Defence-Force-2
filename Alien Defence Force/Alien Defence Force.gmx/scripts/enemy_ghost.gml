enemy_base(damage);

if((!collision_line(x, y, x + (room_width * dir), y, obj_enemy_attack, false, true))) {
    if(obj_player.image_xscale != dir) && (collision_line(x - room_width, y, x + room_width, y, obj_player, false, true)) {
        hspd = 0;
        attack = false;
        sprite_index = spr_ghost_eye_cover;
    }
}

///enemy_bomber()
enemy_base(0);
if(sprite_index == deathAnimation) {
    if(floor(image_index) >= 5) {
        if(!deathBoom) {
            audio_play_sound(snd_explode, 10, false);
                if(distance_to_object(obj_player) <= sprite_width) {
                    if((collision_line(x, y, x + (room_width * dir), y, obj_player, false, true))) {
                        global.Health -= damage; 
                    }
                }
            deathBoom = true;
        }
    }
}

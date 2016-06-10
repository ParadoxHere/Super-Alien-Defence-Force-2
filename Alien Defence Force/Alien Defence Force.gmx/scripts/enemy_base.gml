///enemy_base(damage)

var damage = argument0;

if(fadeAway) {
    image_alpha -= 0.06;
    image_speed = 0;
    if(image_alpha <= 0) {
        instance_destroy();
    }
} 


if(sprite_index != deathAnimation) {
    apply_gravity();
    if(place_meeting(x, y, obj_enemy_attack)) {
            hspd = 0;
            attack = true;
            image_speed = attackSpeed;
            sprite_index = attackAnimation;  
            if(obj_player.x < x) {
                dir = -1;   
            } else if(obj_player.x > x) {
                dir = 1;
            }  
    } else {
        hspd = dir * mspd;   
        image_speed = walkSpeed;
        sprite_index = walkAnimation;
        attack = false;
    }
    
    if(attack) {
        if(floor(image_index) == 4) {
            if(shoot == true) {
                audio_play_sound(snd_enemy_attack, 10, false);
                if(place_meeting(x, y, obj_player)) {
                    global.Health -= damage; 
                }
                shoot = false;      
            }
        } else {
            shoot = true;
        }
    }
    
    enemy_platform_collision();
    image_xscale = dir;
    
}

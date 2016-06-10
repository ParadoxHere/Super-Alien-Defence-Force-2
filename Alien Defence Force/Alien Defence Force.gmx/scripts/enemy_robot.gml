///enemy_robot()
enemy_base(0);
if(sprite_index != deathAnimation) {
    if(attack) {
        if(floor(image_index) == 4) {
            if(shoot == true) {
                create_enemy_bullet(x, y, point_direction(0, 0, image_xscale, 0), damage);
                shoot = false;                    
            }
        } else {
            shoot = true;
        }
    }
}

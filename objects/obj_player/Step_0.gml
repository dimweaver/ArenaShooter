// Initialize sprite facing right
image_xscale = 1;

// Movement
if (keyboard_check(vk_right))
{
    x += spd;
    // Flip the sprite to face right
    image_xscale = 1;
}
if (keyboard_check(vk_left))
{
    x -= spd;
    // Flip the sprite to face left
    image_xscale = -1;
}
if (keyboard_check(vk_up)) y -= spd;
if (keyboard_check(vk_down)) y += spd;

// Shooting
if (mouse_check_button(mb_left) && (cooldown < 1))
{
    instance_create_layer(x, y, "Bullet_Layer", obj_bullet);
    cooldown = 15;
}
cooldown = cooldown - 1;
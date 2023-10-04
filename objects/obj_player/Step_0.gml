//Movement 

if (keyboard_check(vk_right)) x += spd;
if (keyboard_check(vk_left)) x -= spd;
if (keyboard_check(vk_up)) y -= spd;
if (keyboard_check(vk_down)) y += spd;

image_angle = point_direction(x, y, mouse_x, mouse_y);

// Shooting

if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x, y, "Bullet_Layer", obj_bullet);
	cooldown = 20;
}
cooldown = cooldown - 1;
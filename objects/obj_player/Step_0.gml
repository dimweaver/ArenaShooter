// Initialize sprite facing right
image_xscale = 1;

var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var _is_moving = _right || _left || _up || _down;
if (_is_moving)
{ 
	sprite_index = spr_player_run
	} else {
		sprite_index = spr_player
		};

var _xinput = _right - _left;
var _yinput = _down - _up

// Set the image_xscale based on the direction the player is facing
if (_xinput > 0) {
    image_xscale = 1; // Facing right
} else if (_xinput < 0) {
    image_xscale = -1; // Facing left
}

move_and_collide(_xinput * spd, _yinput * spd, obj_wall)

// Shooting
if (mouse_check_button(mb_left) && (cooldown < 1))
{
    instance_create_layer(x, y, "Bullet_Layer", obj_bullet);
    cooldown = 25;
}
cooldown = cooldown - 1;

// Die code


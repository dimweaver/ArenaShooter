// Check if the player object exists
if (instance_exists(obj_player))
{
    // Move towards the player
    move_towards_point(obj_player.x, obj_player.y, spd);
    
    // Set sprite direction based on player's position
    if (x < obj_player.x)
    {
        // Face right when the player is to the right
        image_xscale = 1;
    }
    else
    {
        // Face left when the player is to the left
        image_xscale = -1;
    }
}

// image_angle = direction;

if (hp <= 0)
{
    instance_destroy();
}
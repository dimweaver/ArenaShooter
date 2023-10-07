

//Keep score relative to the camera
var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);
var _cw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_score);
draw_set_colour(c_white);
draw_text(_cx + (_cw / 2), _cy + 25, string(thescore));

//Handle pause screen
if paused == true
{
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
        instance_deactivate_all(true);
        }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }
else
    {
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }
};
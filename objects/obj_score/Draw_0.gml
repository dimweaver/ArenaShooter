

//Keep score relative to the camera
var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);
var _cw = camera_get_view_width(view_camera[0]);

draw_set_font(fnt_score);
draw_set_colour(c_white);
draw_text(_cx + (_cw / 2), _cy + 25, string(thescore));

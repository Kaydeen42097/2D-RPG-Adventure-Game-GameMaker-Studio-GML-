var _camx = camera_get_view_x(view_camera[0])
var _camy = camera_get_view_y(view_camera[0])

var _p = 1

//draw_sprite_tiled_ext(spr_bg_sky_black, image_index, _camx*_p - 100, y + 50, 1, 1, c_white, 1);

_p = 0.5

draw_sprite_tiled_ext(spr_bg_trees_close_5, 0, _camx*_p + 650, y, 1, 1, c_white, 1);

_p = 0.4

draw_sprite_tiled_ext(spr_bg_trees_close_4, 0, _camx*_p + 650, y, 1, 1, c_white, 1);

_p = 0.3

draw_sprite_tiled_ext(spr_bg_trees_close_3, 0, _camx*_p + 650, y, 1, 1, c_white, 1);

_p = 0.25
//draw_sprite_tiled_ext(spr_fireflies_light, image_index, _camx*_p + 600, y - 45, -1, 1, c_white, 1);

_p = 0.2

draw_sprite_tiled_ext(spr_bg_trees_close_2, 0, _camx*_p + 650, y, 1, 1, c_white, 1);

_p = 0.15

draw_sprite_tiled_ext(spr_fireflies, image_index, _camx*_p + 650, y - 45, 1, 1, c_white, 1);

_p = 0.08

draw_sprite_tiled_ext(spr_bg_trees_close_1, 0, _camx*_p + 650, y, 1, 1, c_white, 1);









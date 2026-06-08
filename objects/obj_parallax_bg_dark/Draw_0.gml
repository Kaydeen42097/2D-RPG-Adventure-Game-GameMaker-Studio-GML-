var _camx = camera_get_view_x(view_camera[0]) + 65
var _camy = camera_get_view_y(view_camera[0])

var _p = 1

draw_sprite_tiled_ext(spr_bg_sky_dark, image_index, _camx*_p, _camy*_p, 0.75, 0.75, c_white, 1);

draw_sprite_tiled_ext(spr_bg_stars_1, image_index, _camx*_p, _camy*_p, 0.75, 0.75, c_white, 1);

_p = 0.85

//draw_sprite_tiled(spr_bg_mountain_bg, 0, _camx*_p, _camy*_p);

_p = 0.8

//draw_sprite_tiled(spr_bg_mountains_fg, 0, _camx*_p, _camy*_p);

_p = 0.7

//draw_sprite_tiled(spr_bg_trees_bg_dark, 0, _camx*_p, _camy*_p);

_p = 0.6

//draw_sprite_tiled(spr_bg_trees_fg_dark, 0, _camx*_p, _camy*_p);


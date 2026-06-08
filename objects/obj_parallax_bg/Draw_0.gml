var _camx = camera_get_view_x(view_camera[0])
var _camy = camera_get_view_y(view_camera[0])

var _p = 1

draw_sprite_tiled(spr_bg_sky, image_index, _camx*_p, _camy*_p);

draw_sprite_tiled(spr_bg_stars_1, image_index, _camx*_p, _camy*_p);

_p = 0.85

draw_sprite_tiled(spr_bg_mountain_bg, 0, _camx*_p, _camy*_p);

_p = 0.8

draw_sprite_tiled(spr_bg_mountains_fg, 0, _camx*_p, _camy*_p);

_p = 0.7

draw_sprite_tiled(spr_bg_trees_bg, 0, _camx*_p, _camy*_p);

_p = 0.6

draw_sprite_tiled(spr_bg_trees_fg, 0, _camx*_p, _camy*_p);


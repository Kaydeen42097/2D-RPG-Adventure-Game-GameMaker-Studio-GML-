var _camx = camera_get_view_x(view_camera[0])
var _camy = camera_get_view_y(view_camera[0])

var _p = 1

draw_sprite_tiled_ext(spr_bg_sky, image_index, _camx*_p, _camy*_p, 0.6, 0.6, c_white, 1);

draw_sprite_tiled_ext(spr_bg_stars_1, image_index, _camx*_p, _camy*_p, 0.6, 0.6, c_white, 1);



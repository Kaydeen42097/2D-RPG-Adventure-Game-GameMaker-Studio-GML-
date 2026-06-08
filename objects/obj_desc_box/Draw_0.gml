x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 + offset_x - 30;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 + offset_y + 5;

draw_sprite_ext(sprite_index, image_index, x, y, desc_box_width/sprite_width, desc_box_height/sprite_height, 0, c_white, 1);




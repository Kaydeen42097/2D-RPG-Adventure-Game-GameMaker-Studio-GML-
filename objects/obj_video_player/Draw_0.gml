var _video_data = video_draw(); //processes video
var _video_status = _video_data[0];

if (_video_status == 0) //if no error
	{
	//draw surface that captured current video frame
	draw_surface_ext(_video_data[1], x, y, width, height, 0, c_white, 1)
	}

//center menu
x = camera_get_view_x(view_camera[0]) 
y = camera_get_view_y(view_camera[0]) 







follow_id = id;
cam_id = view_get_camera(0);

angle = 0;
target_angle = angle;

zoom = 0.75;
target_zoom = zoom;

cam_x = 960;
target_x = cam_x;

cam_y = 2000;
target_y = cam_y

zoom_in = false;
screen_shake = false;

view_w = camera_get_view_width(cam_id);
view_h = camera_get_view_height(cam_id);

st_x = x;
st_y = y;
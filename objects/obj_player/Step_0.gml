var right_key = keyboard_check(ord("D"));
var left_key  = keyboard_check(ord("A"));
var up_key    = keyboard_check(ord("W"));
var down_key  = keyboard_check(ord("S"));

var sprint = keyboard_check(vk_shift);

// restart test
if (keyboard_check_pressed(ord("R"))) {
    game_restart();
}

var movespd = sprint ? 4 : 1;

var h = right_key - left_key;
var v = down_key - up_key;

// normalize diagonal movement (prevents faster diagonals)
var len = point_distance(0, 0, h, v);
if (len > 0) {
    h /= len;
    v /= len;
}

// final speed
var xspd = h * movespd;
var yspd = v * movespd;


if (instance_exists(obj_pauser)) {
    xspd = 0;
    yspd = 0;
}

if (!place_meeting(x + xspd, y, obj_wall)) {
    x += xspd;
} else {
    xspd = 0;
}

if (!place_meeting(x, y + yspd, obj_wall)) {
    y += yspd;
} else {
    yspd = 0;
}

if (xspd != 0 || yspd != 0) {
    if (abs(xspd) > abs(yspd)) {
        face = (xspd > 0) ? RIGHT : LEFT;
    } else {
        face = (yspd > 0) ? DOWN : UP;
    }
}

// IMPORTANT: only works if you REALLY have sprite[] defined properly
sprite_index = sprite[face];

mask_index = sprite[DOWN];

if (xspd == 0 && yspd == 0) {
    image_index = 0;
}

depth = -bbox_bottom;
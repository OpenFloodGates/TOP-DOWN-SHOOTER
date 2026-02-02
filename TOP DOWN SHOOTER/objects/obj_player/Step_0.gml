
var hor_movement = 0;
var vert_movement = 0;

hor_movement = keyboard_check(right_key)-keyboard_check(left_key)
vert_movement = keyboard_check(down_key)-keyboard_check(up_key)

var x_moveamount = hor_movement*weapon.mspeed;
var y_moveamount = vert_movement*weapon.mspeed;


//HORIZONTAL COLLISIONS
if !place_meeting(x+x_moveamount, y, par_wall) {
	
	x+=x_moveamount;
	
} else {
	
	while(!place_meeting(x+sign(x_moveamount), y, par_wall)) {
		x+=sign(x_moveamount);
	}
}

//VERTICAL COLLISIONS
if !place_meeting(x, y+y_moveamount, par_wall) {
	
	y+=y_moveamount;
} else {
	
	while(!place_meeting(x, y+sign(y_moveamount), par_wall)) {	
		
		y+=sign(y_moveamount);
	}
}




//MOUSE ROTATION

var angle_to_mouse = point_direction(x, y, mouse_x, mouse_y)
//image_angle = angle;
angle = angle_to_mouse;

//WEAPON TOGGLE

if keyboard_check_pressed(weapon_toggle_key) {
	weapon_id++;
	
	if weapon_id >= ds_list_size(obj_control.weapon_list){
		weapon_id = 0;
	}
	
	weapon = obj_control.getWeapon(weapon_id);
}

//BULLET FIRING
if (mouse_check_button(mb_left)) {
	
	if (fire_cooldown <= 0) {
		
		var b = instance_create_depth(x, y, 5, obj_bullet);
		b.speed = bullet_speed;
		b.direction = point_direction(x, y, mouse_x, mouse_y);
		b.image_angle = b.direction;
		
		fire_cooldown = fire_cooldown_max;
	
	}
}

if (fire_cooldown > 0) {
	fire_cooldown -= 1;
}

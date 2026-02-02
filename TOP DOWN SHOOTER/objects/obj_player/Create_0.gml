//MOVEMENT CODE
left_key = ord("A")
right_key = ord("D")
down_key = ord("S")
up_key = ord("W")

weapon_toggle_key = ord("Q")

mspeed_bonus = 0;

fire_cooldown = 0;
fire_cooldown_max = 30;

bullet_speed = 5;

angle = 0;

weapon_id = 0;
weapon = obj_control.getWeapon(weapon_id);
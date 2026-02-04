

function addWeapon(_name, _reloadspeed, _automatic, _bullet, _accuracy, _mspeed, _sprite) {
	ds_list_add (weapon_list,
		{ //STRUCT 
			name : _name,
			reloadspeed : _reloadspeed,
			automatic : _automatic,
			bullet : _bullet,
			accuracy : _accuracy,
			mspeed : _mspeed,
			sprite : _sprite,
		})
}

function getWeapon(_id) {
	return weapon_list [| _id];
}

weapon_list = ds_list_create();

addWeapon("apple", 60, false, obj_bullet, 0, 5, spr_player_apple)
addWeapon("banana", 60, true, obj_banana, 0, 3, spr_player_banana)
addWeapon("watermelon", 30, false, obj_watermelon, 0, 1, spr_player_watermelon)



// DONT TOUCH THIS STUFF

/*

Hi its me PP
this is just to ensure that everythings set up, youll see a new room where this is handled
it shouldnt affect anything tutorial related
just make sure that the initial room is empty save for this control object

*/
if ( instance_number(obj_control) > 1 ) { instance_destroy(); }
room_goto_next();

//

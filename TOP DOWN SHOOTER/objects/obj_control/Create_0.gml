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

addWeapon("banana", 60, true, obj_banana, 0, 3, spr_player_banana)
addWeapon("watermelon", 30, false, obj_watermelon, 0, 3, spr_player_watermelon)
addWeapon("apple", 60, false, obj_bullet, 0, 5, spr_player_apple)

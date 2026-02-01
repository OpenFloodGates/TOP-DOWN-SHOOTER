f_hit = function(_id, _damage)	{
	hp -= _damage;
	if hp<= 0 {
		instance_destroy();
	show_debug_message("ENEMY WAS DESTROYED")
	}
	
	instance_destroy(_id);
	
}
hp = 2;
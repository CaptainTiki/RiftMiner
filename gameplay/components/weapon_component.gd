extends Node3D



##Spawns a primary bullet at the muzzle, consumes power
func fire_primary() -> void:
	pass

##Fires selected special bullet from one of the 4 slots, consumes no power
func fire_special(slot: int) -> void:
	pass

func get_muzzle_position() -> Vector3:
	return Vector3.ZERO

func get_muzzle_direction() -> Vector3:
	return Vector3.FORWARD

##Manage the power pool for primary shots
func get_power() -> float:
	return 0.0

##Manage the power pool for primary shots
func set_power(value: float) -> void:
	pass

##Manage the power pool for primary shots
func get_max_power() -> float:
	return 0.0

##Manage the power pool for primary shots
func set_max_power(value: float) -> void:
	pass

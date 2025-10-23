extends Node3D

signal healed
signal damaged
signal died

@export var max_health : int = 1
var current_health : int = 0

func _ready() -> void:
	current_health = max_health

func heal(_ammount : int) -> void:
	pass

func take_damage(_ammount : int) -> void:
	pass

func die() -> void:
	pass

#public api

func get_current_health() -> int:
	return 0

func get_max_health() -> int:
	return 0

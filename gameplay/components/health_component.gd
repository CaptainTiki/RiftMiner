extends Node3D
class_name HealthComponent

signal healed
signal damaged
signal died

@export_category("Components")
@export var armor :  ArmorComponent
@export var sheilds : SheildsComponent

@export_category("Stats")
@export var max_health : float = 1
var current_health : float = 0

func _ready() -> void:
	current_health = max_health

func heal(amount : float) -> void:
	if current_health < max_health:
		healed.emit()
		current_health += amount
		clamp(current_health, 0, max_health)
 
func take_damage(amount : float) -> void:
	var remainder : float = amount #set the amount in case we have no shields or armor
	if sheilds:
		remainder = sheilds.block_damage(remainder)
	if armor:
		remainder = armor.reduce_damage(remainder)
	current_health -= remainder
	if current_health <= 0:
		die()
	else:
		damaged.emit()

func increase_max_health(amount : float) -> void:
	max_health+= amount

func die() -> void:
	print(get_parent().name, " died")
	died.emit()

#public api  ----------------------------------------------------------------

func get_current_health() -> float:
	return current_health

func get_max_health() -> float:
	return max_health


func _on_hurt_box_area_entered(area: Area3D) -> void:
	if area.is_in_group("bullet"):
		print("collided with bullet")
	if area.is_in_group("enemy"):
		print("collided with enemy")
	if area.is_in_group("player"):
		print("collided with player")

##check for any area overlapping (for times that we're still inside an area)
func _check_for_overlap() -> void:
	pass

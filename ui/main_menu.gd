extends Node3D
class_name MainMenu

@export var skip_menus : bool = false

const BASE_MENU_SCENE = preload("uid://bhek2j5krgdtb")
const LEVEL_SCENE = preload("uid://shvx0x7woun8")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#TODO: Load main menu for settings and save info instaed of straight to game
	if skip_menus:
		var new_level : Level = LEVEL_SCENE.instantiate()
		get_tree().root.add_child.call_deferred(new_level)
		pass
	else:
		var new_menu : BaseMenu = BASE_MENU_SCENE.instantiate()
		get_tree().root.add_child.call_deferred(new_menu)
		pass
	
	#queue_free()

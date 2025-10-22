extends Node3D
class_name BaseMenu

var engineering_ui : CanvasLayer
var hangar_ui : CanvasLayer
var production_ui : CanvasLayer
var command_ui : CanvasLayer
var research_ui : CanvasLayer

var current_menu : CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	engineering_ui = preload("uid://bwfhebxauu1mx").instantiate()
	hangar_ui = preload("uid://n7n7jb8kbhpc").instantiate()
	command_ui = preload("uid://bo7xr44ppqt17").instantiate()
	research_ui = preload("uid://bi1hphlnbn5w7").instantiate()
	production_ui = preload("uid://cj043j01prhs2").instantiate()

func _show_menu(new_menu : CanvasLayer) -> void:
	if current_menu:
		current_menu.visible = false
		current_menu.set_process_input(false)
		current_menu.set_process(false)
		current_menu.set_physics_process(false)
	current_menu = new_menu
	current_menu.visible = true
	current_menu.set_process_input(true)
	current_menu.set_process(true)
	current_menu.set_physics_process(true)

func _on_hangar_button_pressed() -> void:
	_show_menu(hangar_ui)


func _on_engineering_button_pressed() -> void:
	_show_menu(engineering_ui)


func _on_production_button_pressed() -> void:
	_show_menu(production_ui)


func _on_research_button_pressed() -> void:
	_show_menu(research_ui)


func _on_command_button_pressed() -> void:
	_show_menu(command_ui)

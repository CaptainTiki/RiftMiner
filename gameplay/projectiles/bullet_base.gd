extends Area3D
class_name Bullet

var icon : Texture2D = preload("res://assets/ui/kenney_ui-pack-space-expansion/PNG/Extra/Double/panel_glass_notches.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func initialize(damage: float, velocity: Vector3, shooter: Node) -> void:
	pass
	
func apply_effect(target: Node) -> void:
	pass
	
func destroy() -> void:
	pass

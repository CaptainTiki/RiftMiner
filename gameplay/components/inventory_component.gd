extends Node3D

@onready var inventory_canvas_layer: CanvasLayer = $InventoryCanvasLayer
@onready var grid_container: GridContainer = $InventoryCanvasLayer/Panel/MarginContainer/VBoxContainer/GridContainer
@onready var slot_zero: TextureRect = %SlotZero
@onready var slot_one: TextureRect = %SlotOne
@onready var slot_two: TextureRect = %SlotTwo
@onready var slot_three: TextureRect = %SlotThree
@onready var slot_four: TextureRect = %SlotFour
@onready var slot_five: TextureRect = %SlotFive
@onready var slot_six: TextureRect = %SlotSix
@onready var slot_seven: TextureRect = %SlotSeven


@onready var power_bar: TextureProgressBar = $InventoryCanvasLayer/Panel/MarginContainer/VBoxContainer/PowerBar
@onready var highlight: TextureRect = $InventoryCanvasLayer/Highlight

var current_bullet : int = 0
var bullet_slots : Array[Dictionary]

func _ready() -> void:
	inventory_canvas_layer.visible = true
	#fill the array with empties
	for i in 8:
		var icon = grid_container.get_child(i)
		bullet_slots.append({ "icon": icon, "bullet": null })
	pass

##Adds a bullet to the inventory
func add_bullet(bullet : Bullet) -> bool:
	#find first empty slot
	for i in 8:
		if not bullet_slots[i]["bullet"]:
			bullet_slots[i]["icon"].texture = bullet.icon
			bullet_slots[i]["bullet"] = bullet
			return true
	return false

##Removes a bullet from the inventory
func remove_bullet(bullet : Bullet) -> void:
	for i in 8:
		if bullet_slots[i]["bullet"] == bullet:
			bullet_slots[i]["bullet"] = null
			bullet_slots[i]["icon"].texture = null
			return

##Adds an item to the inventory
func add_item(item: Item) -> void:
	pass

##Removes an item from the inventory
func remove_item(item: Item) -> void:
	pass

##cycles to the next or prv bullet (dir = +1 or -1)
func cycle_bullet(dir : int) -> void:
	current_bullet += dir
	
	pass

##cycles to the next or prv item (dir = +1 or -1)
func cycle_item(dir : int) -> void:
	pass

##Gets the bullet currently selected, if available
func get_available_bullet() -> Bullet:
	return Bullet.new()

##Gets the item currently selected, if available
func get_available_item() -> Item:
	return Item.new()

##Checks if the inventory already contains a bullet (used for leveling up bullets?)
func has_bullet(bullet : Bullet) -> bool:
	return false

##Checks if the inventory already contains a item (used for leveling up items?)
func has_item(item_type: String) -> bool:
	return false

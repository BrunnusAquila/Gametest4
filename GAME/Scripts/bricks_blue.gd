extends Node2D

func _ready():
	for child in get_children():
		child.add_to_group("Brickzes")
		child.add_to_group("Bricks")

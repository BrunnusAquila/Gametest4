extends Node2D

func _ready():
	for child in get_children():
		child.add_to_group("BOLAS")

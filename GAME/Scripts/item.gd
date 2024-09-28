extends Node2D

var grupo_pau = "pauzinho"

func _ready():
	for child in get_children():
		child.add_to_group("WOW")

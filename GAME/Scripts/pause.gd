extends Control

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/Level_1.tscn")
	pass # Replace with function body.

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file(("res://Cenas/Main.tscn"))
	pass # Replace with function body.

extends Control

func _on_over_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/Level_1.tscn")
	pass # Replace with function body.


func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/Main.tscn")
	pass # Replace with function body.



func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.

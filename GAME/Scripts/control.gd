extends Control

@onready var start_button = $StartButton

func _on_start_button_pressed(): 
	get_tree().change_scene_to_file("res://Cenas/Level_1.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.

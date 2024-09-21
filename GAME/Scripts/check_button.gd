extends Button

func _process(delta: float) -> void:
	if Input.is_action_just_pressed('ui_accept'):
		get_tree().change_scene_to_file("res://Cenas/pausar.tscn")
		
		
func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/pausar.tscn")
	pass # Replace with function body.

extends Button

@export var paddle : CharacterBody2D
@export var label : Label
var pause = load("res://Cenas/pausar.tscn")

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed('ui_accept'):
		_on_pressed()

func _on_pressed() -> void:
	if get_tree().get_nodes_in_group("label").size() == 0:
		var pausar = pause.instantiate()
		get_tree().current_scene.add_child(pausar)
		get_tree().paused = true  

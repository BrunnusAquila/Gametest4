extends CharacterBody2D

@export var ball : RigidBody2D

func _ready(): 
	add_to_group("pauzinho")
	set_physics_process(true)
	
func _physics_process(_delta: float) -> void:
	var y = position.y  
	var mouse_x = get_viewport().get_mouse_position().x  
	position = Vector2(mouse_x, y)  
	_contador()
	
func _contador():
	if get_tree().get_nodes_in_group("bola").size() < 1:
		set_physics_process(false)

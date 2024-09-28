extends CharacterBody2D


func _ready(): 
	add_to_group("pauzinho")
	set_physics_process(true)
		

func _physics_process(_delta: float) -> void:
	var y = position.y  
	var mouse_x = get_viewport().get_mouse_position().x  
	position = Vector2(mouse_x, y)  
	
	

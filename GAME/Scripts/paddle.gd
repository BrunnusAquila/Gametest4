extends CharacterBody2D

func _ready(): 
	set_physics_process(true)

func _physics_process(delta):
	var y = position.y  # Obtém a posição Y atual do personagem
	var mouse_x = get_viewport().get_mouse_position().x  # Obtém a posição X do mouse
	position = Vector2(mouse_x, y)  # Define a nova posição do personagem

extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is RigidBody2D and not body.is_in_group("Itens"):
		
		
		$AudioStreamPlayer2D.play()
		await $AudioStreamPlayer2D.finished 
		
		get_tree().change_scene_to_file("res://Cenas/game_over.tscn")
	print("Olha como Deus é maravilhoso: ", body)
	pass # Replace with function body.


	

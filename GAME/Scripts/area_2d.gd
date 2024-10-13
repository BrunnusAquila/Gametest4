extends Area2D

var grupo_bola = "bola"
@export var paddle : CharacterBody2D
@onready var audio_player = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	print("Olha como Deus é mravilhoso: ", body)
	if body is RigidBody2D:
		if body.is_in_group(grupo_bola):
			if  get_tree().get_nodes_in_group(grupo_bola).size() == 1:
				body.queue_free()
				audio_player.volume_db = -10
				audio_player.play()
				
				
				await audio_player.finished
				
				get_tree().change_scene_to_file("res://Cenas/game_over.tscn")
		

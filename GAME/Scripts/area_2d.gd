extends Area2D

var grupo_bola = "bola"
@onready var audio_plyer = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	print("Olha como Deus é mravilhoso: ", body)
	if body.is_in_group(grupo_bola):
		
		audio_plyer.volume_db = -10
		audio_plyer.play()
		
		await audio_plyer.finished
		
		get_tree().change_scene_to_file("res://Cenas/game_over.tscn")

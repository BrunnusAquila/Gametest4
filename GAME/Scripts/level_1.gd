extends Node2D

func _ready():
	$AudioStreamPlayer2D.play()
	$AudioStreamPlayer2D.volume_db = -0.0
	

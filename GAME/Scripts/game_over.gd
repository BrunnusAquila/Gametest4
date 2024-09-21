extends Control

@onready var song1_button = $song1
@onready var audio_player = $AudioStreamPlayer
@export var icone1: Texture2D
@export var icone2 :Texture2D

func _ready() -> void:
	audio_player.play()
	audio_player.volume_db = -10
	if song1_button:
		song1_button.texture_normal = icone1
	print("CAM")
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("som"):
		_on_song_1_pressed()
	
func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/Main.tscn")
	audio_player.finished
	pass # Replace with function body.

func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.

func _on_over_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/Level_1.tscn")
	pass # Replace with function body.

var silencio1 : bool = false

func _on_song_1_pressed() -> void:
	var allou = AudioServer.get_bus_index("Master")
	
	if silencio1:
		AudioServer.set_bus_volume_db(allou, 0)
		silencio1 = false
		song1_button.texture_normal = icone1
		
	else:
		silencio1 = true
		AudioServer.set_bus_volume_db(allou, -80)
		song1_button.texture_normal= icone2
	pass # Replace with function body.

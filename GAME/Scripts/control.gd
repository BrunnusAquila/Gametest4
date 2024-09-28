extends Control

@onready var song_button = $song

@export var icone1 : Texture2D
@export var icone2 : Texture2D

func _ready():
	$AudioStreamPlayer.play()
	$AudioStreamPlayer.volume_db = -10.0
	if song_button:
		print("Help me")
		song_button.texture_normal = icone1
		
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed('som'):
		_on_song_pressed()
	
	 
func _on_start_button_pressed(): 
	get_tree().change_scene_to_file("res://Cenas/Level_1.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.

var silencio: bool = false

func _on_song_pressed() -> void:
	var aloou = AudioServer.get_bus_index("Master")
	
	if silencio:
		if song_button:
			song_button.texture_normal = icone1
		AudioServer.set_bus_volume_db(aloou, 0)
		silencio = false
		
	else:
		if song_button:
			song_button.texture_normal = icone2
		AudioServer.set_bus_volume_db(aloou, -80)
		silencio =true
	

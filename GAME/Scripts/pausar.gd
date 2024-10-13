extends Control

@onready var song2  = $semsom

@export var icone1 : Texture2D
@export var icone2 : Texture2D

var silencio : bool = false

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS
	$AudioStreamPlayer.play()
	$AudioStreamPlayer.volume_db = -15
	song2.texture_normal = icone1
	
func _on_exit_pressed() -> void:
	get_tree().quit() 
	get_tree().paused = false
	
func _on_over_button_pressed() -> void:
	queue_free()  
	get_tree().paused = false  
 
func _on_texture_button_pressed() -> void:
	var aloou = AudioServer.get_bus_index("Master")
	
	if silencio:
		if song2:
			song2.texture_normal = icone1
		AudioServer.set_bus_volume_db(aloou, 0)
		silencio = false
		
	else:
		if song2:
			song2.texture_normal = icone2
		AudioServer.set_bus_volume_db(aloou, -80)
		silencio = true


func _on_return_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Cenas/Main.tscn")
	pass # Replace with function body.

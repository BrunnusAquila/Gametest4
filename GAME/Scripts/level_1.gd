extends Node2D

@onready var back_song = $Background_song
@onready var song_over = $Area2D/AudioStreamPlayer2D
@onready var paddle = $Paddle
@export var ball : RigidBody2D
@export var label : Label

func _ready():
	label.show()
	paddle.set_physics_process(false)
	ball.freeze = true
	
	back_song.volume_db = -5.0
	back_song.play()
	
	await get_tree().create_timer(2.0).timeout
	
	label.queue_free()
	ball.freeze = false
	paddle.set_physics_process(true)
	
func _process(_delta: float) -> void:
	if song_over.playing:
		back_song.stop()

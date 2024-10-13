extends Area2D

@export var ball : RigidBody2D
@export var paddle : CharacterBody2D
var bola = "bola"
var grupo_bricks = "Bricks"
var bricks_in_area = 0
var grupo_brickz = "Brickzes"
var label = "LABEL"

func _ready() -> void:
	add_to_group("DETEC")
	
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group(grupo_bricks):
		bricks_in_area += 1
	if body.is_in_group("item"):
		print("JACARÉ")
	
func _on_body_exited(body: Node2D) -> void:
	if is_instance_valid(ball):
		var new_ball = ball.duplicate()
		if body.is_in_group(grupo_bricks):
			bricks_in_area -= 1
		if body.is_in_group("item"):
			get_parent().add_child(new_ball)
		if body.is_in_group("bola"):
			print("GARFIELD")
		if body.is_in_group("item1"):
			var new_scale = Vector2(0.5, 0.5)
			paddle.scale = new_scale
			pass
func _process(_delta: float) -> void:
	if get_tree().get_nodes_in_group(grupo_bricks).size() == 0:
		get_tree().paused = true
		
		await get_tree().create_timer(1.0).timeout
		
		get_tree().paused = false
		get_tree().change_scene_to_file("res://Cenas/Level_4.tscn")
	

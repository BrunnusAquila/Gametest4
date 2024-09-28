extends Area2D

var grupo_bricks = "Bricks"
var bricks_in_area = 0
var grupo_brickz = "Brickzes"
 
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group(grupo_bricks):
		bricks_in_area += 1

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group(grupo_bricks):
		bricks_in_area -= 1
	
func _process(_delta: float) -> void:
	if bricks_in_area == 0 and get_overlapping_bodies():
		get_tree().change_scene_to_file("res://Cenas/Level_2.tscn")
	
	

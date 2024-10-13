extends RigidBody2D

var grupo_bola = "bola"
var grupo_pau = "pauzinho"
var grupo_brickz = "Brickzes"
var grupo_bricks = "Brickses"

func _ready() -> void:
	var brickz1 = get_tree().get_nodes_in_group("Brickzes1")
	if brickz1.size() > 0:
		position = brickz1[0].position
func _on_body_entered(body: Node) -> void:
	if body.is_in_group(grupo_pau):
		queue_free()
	

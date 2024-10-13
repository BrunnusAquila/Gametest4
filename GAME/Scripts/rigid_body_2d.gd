extends RigidBody2D

var grupo_bola = "bola"
var grupo_pau = "pauzinho"
var grupo_brickz = "Brickzes"

func _ready() -> void:
	add_to_group("item")
	var brickz = get_tree().get_nodes_in_group("Brickzes")
	if brickz.size() > 0 :
		position = brickz[0].position
func _on_body_entered(body: Node) -> void:
	if body.is_in_group(grupo_pau):
		queue_free()
	

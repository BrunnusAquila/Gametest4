extends RigidBody2D

var grupo_bola = "bola"
var grupo_pau = "pauzinho"

func _ready() -> void:
	set_contact_monitor(true)

func _on_body_entered(body: Node) -> void:
	if body.is_in_group(grupo_pau):
		print("CAM")
		body.queue.free()
	

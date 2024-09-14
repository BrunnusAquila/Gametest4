extends RigidBody2D

var

func _on_body_exited(body: Node) -> void:
	if body.is_in_group("Bricks"):
		print("I AM NEGAN")
		
	pass # Replace with function body.

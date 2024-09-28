extends Area2D

func _ready() -> void:
	pass # Replace with function body.

func _on_body_entered(body: Node2D) -> void:
	body.queue_free()

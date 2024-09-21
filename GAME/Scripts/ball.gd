extends RigidBody2D

const  SPEEDUP = 400
const MAXSPEED = 3000

func _ready():
	set_physics_process(true)
	
	
func _physics_process(delta):
	delta*100
	var bodies = get_colliding_bodies()
	
	for body in bodies:
		if body.is_in_group("Bricks"):
			body.queue_free()
			$AudioStreamPlayer2D.play()
			$AudioStreamPlayer2D.volume_db = -12
		if not body.is_in_group("Bricks"):
			$AudioStreamPlayer2D.stop()

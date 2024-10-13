extends RigidBody2D

var grupo_bricks = "Bricks"
var grupo_brickz = "Brickzes"
var grupo_brickz1 = "Brickzes2"
var grupo_itens = "Itens"
var grupo_pau = "pauzinho"
var grupo_area = "AREA"

func _ready():
	set_physics_process(true)

func _physics_process(_delta: float) -> void:
	var bodies = get_colliding_bodies()
	var item_cena = load("res://Cenas/item.tscn")
	var item1_cena = load("res://Cenas/item1.tscn")
	var item1 = item1_cena.instantiate()
	var item = item_cena.instantiate()
	
	
	for body in bodies:
		
		if body.is_in_group(grupo_bricks) and not body.is_in_group(grupo_brickz) and not body.is_in_group(grupo_brickz1):
			body.queue_free()
			$AudioStreamPlayer2D.volume_db = -10
			$AudioStreamPlayer2D.play()
			
		elif body.is_in_group(grupo_brickz):
			body.queue_free()
			$AudioStreamPlayer2D.volume_db = -10
			$AudioStreamPlayer2D.play()
			get_parent().add_child(item)
			
		elif body.is_in_group(grupo_brickz1):
			body.queue_free()
			$AudioStreamPlayer2D.volume_db = -10
			$AudioStreamPlayer2D.play()
			get_parent().add_child(item1)
